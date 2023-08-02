select
  e.encounter_id,
  e.encounter_type,
  e.date_created,
  e.encounter_datetime
from
  encounter e
limit
  1