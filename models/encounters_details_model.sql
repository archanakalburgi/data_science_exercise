with avg_cost_npi_cpt as  (

  select npi, cpt, avg(paid_amount) as cost
  from encounters_details
  group by npi, cpt 
  order by 1
)

, temp as (
select rf.npi
, cf.cpt
, *
from referral_with_providers rf
left join avg_cost_npi_cpt  cf
on rf.npi = cf.npi and rf.procedure = cf.cpt
qualify row_number() over (partition by rf.patient_id, cf.cpt   ORDER by cf.cost) = 1
ORDER by rf.patient_id
)

select npi, count(*)
from temp 
where cost is not null
group by npi
order by 2 desc


;