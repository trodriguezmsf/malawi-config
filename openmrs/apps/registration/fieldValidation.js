Bahmni.Registration.customValidator = {
    "age.days": {
        method: function (name, value) {
            return value >= 0;
        },
        errorMessage: "REGISTRATION_AGE_ERROR_KEY"
    },
    "Telephone Number": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length> 6;
        },
        errorMessage: "REGISTRATION_TELEPHONE_NUMBER_ERROR_KEY"
    },
    "caste": {
        method: function (name, value, personAttributeDetails) {
            return value.match(/^\w+$/);
        },
        errorMessage: "REGISTRATION_CASTE_TEXT_ERROR_KEY"
    },
    "address.country": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 50;
        },
        errorMessage: "REGISTRATION_HOUSE_NUMBER_STREET_TEXT_ERROR_KEY"
    },
    "address.countyDistrict": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_VILLAGE_HEADMAN_TEXT_ERROR_KEY"
    },
    "address.address5": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_NEAREST_HEALTH_FACILITY_TO_HOME_TEXT_ERROR_KEY"
    },
    "address.cityVillage": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_VILLAGE_NEIGHBORHOOD_TEXT_ERROR_KEY"
    },
    "address.address6": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_ADDRESS_DESCRIPTION_TEXT_ERROR_KEY"
    },
    "address.address4": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_TRADITIONAL_AUTHORITY_OR_TOWN_TEXT_ERROR_KEY"
    },
    "address.address1": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_COUNTRY_TEXT_ERROR_KEY"
    },
    "address.address2": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_REGION_TEXT_ERROR_KEY"
    },
    "address.address3": {
        method: function (name, value, personAttributeDetails) {
            return value && value.length <= 250;
        },
        errorMessage: "REGISTRATION_DISTRICT_TEXT_ERROR_KEY"
    }
};
