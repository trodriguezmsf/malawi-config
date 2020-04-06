import org.apache.commons.lang.StringUtils
import org.openmrs.module.bahmniemrapi.encountertransaction.contract.BahmniObservation
import org.openmrs.module.bahmniemrapi.obscalculator.ObsValueCalculator;
import org.openmrs.module.bahmniemrapi.encountertransaction.contract.BahmniEncounterTransaction
import org.openmrs.module.emrapi.encounter.domain.EncounterTransaction;
import org.bahmni.module.bahmnicore.service.impl.BahmniBridge

public class BahmniObsValueCalculator implements ObsValueCalculator {

    static String BMI_CONTROL_ID="/20-0"
    static BahmniBridge bahmniBridge = BahmniBridge.create();

    public void run(BahmniEncounterTransaction bahmniEncounterTransaction) {
        List<String> bmiConceptNames = Arrays.asList("VS, Weight", "VS, Height", "VS, BMI");
        Map<String, BahmniObservation> bahmniObsConceptMap = new HashMap<>();
        findObsForConceptsOfForm(bmiConceptNames, bahmniEncounterTransaction.getObservations(), bahmniObsConceptMap);
        calculateBMI(bahmniEncounterTransaction, bahmniObsConceptMap);
    }

    static void findObsForConceptsOfForm(List<String> conceptNames, Collection<BahmniObservation> observations, Map<String, BahmniObservation> bahmniObsConceptMap) {
        for (BahmniObservation observation : observations) {

            if (conceptNames.contains(observation.getConcept().getName()) &&
                    !observation.getVoided()) {
                bahmniObsConceptMap.put(observation.getConcept().getName(), observation);
            }
        }
    }

    private static void calculateBMI(BahmniEncounterTransaction bahmniEncounterTransaction, Map<String, BahmniObservation> bahmniObsConceptMap) {
        BahmniObservation heightObservation
        BahmniObservation weightObservation
        for (entry in bahmniObsConceptMap) {
            if (('VS, Height').equalsIgnoreCase(entry.key))
                heightObservation = entry.value;

            if (('VS, Weight').equalsIgnoreCase(entry.key))
                weightObservation = entry.value;
        }

        if (heightObservation == null && weightObservation == null) {
            BahmniObservation bmiObservation = bahmniObsConceptMap.get("VS, BMI")
            voidObs(bmiObservation);
        }

        calculateBMIWithHeightAndWeight(bahmniEncounterTransaction, heightObservation, weightObservation, bahmniObsConceptMap);
    }

    private static void calculateBMIWithHeightAndWeight(BahmniEncounterTransaction bahmniEncounterTransaction, BahmniObservation heightObservation, BahmniObservation weightObservation, Map<String, BahmniObservation> bahmniObsConceptMap) {
        if (hasValue(heightObservation) || hasValue(weightObservation)) {
            BahmniObservation bmiObservation = bahmniObsConceptMap.get("VS, BMI")

            Double height = hasValue(heightObservation) ? heightObservation.getValue() as Double : null
            Double weight = hasValue(weightObservation) ? weightObservation.getValue() as Double : null
            Date obsDatetime = getDate(weightObservation) != null ? getDate(weightObservation) : getDate(heightObservation)

            if (height == null || weight == null) {
                voidObs(bmiObservation)
                return
            }

            if (hasValue(heightObservation) && hasValue(weightObservation)) {
                String heightFormFieldPath = heightObservation.getFormFieldPath()
                String heightFormNameSpace = heightObservation.getFormNamespace()

                Double bmi = bmi(height, weight)
                bmiObservation = bmiObservation ?: createObs("VS, BMI", bahmniEncounterTransaction, obsDatetime) as BahmniObservation;
                Double roundOffBMI = Math.round(bmi * 100.0) / 100.0;
                bmiObservation.setValue(roundOffBMI);
                bmiObservation.setFormFieldPath(heightFormFieldPath.substring(0, heightFormFieldPath.indexOf("/")) + BMI_CONTROL_ID)
                bmiObservation.setFormNamespace(heightFormNameSpace)

            }

            if (bmiObservation.getValue() > 25 || bmiObservation.getValue() < 18)
                bmiObservation.setInterpretation("ABNORMAL")
            else
                bmiObservation.setInterpretation(null)

        }
    }

    private static boolean hasValue(BahmniObservation observation) {
        return observation != null && observation.getValue() != null && !StringUtils.isEmpty(observation.getValue().toString());
    }

    private static void voidObs(BahmniObservation bahmniObservation) {
        if (hasValue(bahmniObservation)) {
            bahmniObservation.voided = true
        }
    }

    private static Date getDate(BahmniObservation observation) {
        return hasValue(observation) && !observation.voided ? observation.getObservationDateTime() : null;
    }

    private static Double bmi(Double height, Double weight) {
        Double heightInMeters = height / 100;
        Double value = weight / (heightInMeters * heightInMeters);
        return value;
    };

    static BahmniObservation createObs(String conceptName, BahmniEncounterTransaction encounterTransaction, Date obsDatetime) {
        def concept = bahmniBridge.getConceptByFullySpecifiedName(conceptName)
        BahmniObservation newObservation = new BahmniObservation()
        newObservation.setConcept(new EncounterTransaction.Concept(concept.getUuid(), conceptName))
        newObservation.setObservationDateTime(obsDatetime);
        encounterTransaction.addObservation(newObservation)
        return newObservation
    }
}
