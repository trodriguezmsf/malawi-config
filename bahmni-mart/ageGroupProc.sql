CREATE OR REPLACE FUNCTION age_group(process_start_date TIMESTAMP WITHOUT TIME ZONE,
                                     birthdate          TIMESTAMP WITHOUT TIME ZONE)
  RETURNS CHARACTER VARYING
LANGUAGE plpgsql
AS $$
BEGIN
  IF EXTRACT(YEAR FROM (age(process_start_date, birthdate))) BETWEEN 0 AND 17
  THEN RETURN '0-17';
  ELSEIF EXTRACT(YEAR FROM (age(process_start_date, birthdate))) BETWEEN 18 AND 29
    THEN RETURN '18-29';
  ELSEIF (EXTRACT(YEAR FROM (age(process_start_date, birthdate))) BETWEEN 30 AND 49)
    THEN RETURN '30-49';
  ELSEIF EXTRACT(YEAR FROM (age(process_start_date, birthdate))) BETWEEN 50 AND 65
    THEN RETURN '50-65';
  ELSEIF EXTRACT(YEAR FROM (age(process_start_date, birthdate))) > 65
    THEN RETURN '65+';
ELSE RETURN NULL;
END IF;

END;
$$;