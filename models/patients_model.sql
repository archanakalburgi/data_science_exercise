select *
from encounters_details ed
join patients p
on ed.patient_id = p.patient_id
left join referrals r
on ed.patient_id = r.patient_id
where r.patient_id is not null