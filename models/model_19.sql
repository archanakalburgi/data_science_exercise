with doc_details as (
select *
from employer_in_network_split np
join providers n 
on np.npi = n.npi 
)

, docs_allocated as (
select * 
from referrals r 
join doc_details d
on r.employer_id = d.employer_id and r.zip = d.zip
)

select patient_id, count(npi)
from docs_allocated
group by patient_id
order by 2 desc

