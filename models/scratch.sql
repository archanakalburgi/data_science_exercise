-- select * 
-- from providers

with ed_npi as (
select *
  from encounters_details ed
  inner join providers as p
  on ed.npi = p.npi
  -- where p.npi is null
)

select * 
from ed_npi en
inner join patients p
on p.patient_id = en.patient_id
