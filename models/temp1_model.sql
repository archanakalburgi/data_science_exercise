-- select  ed.cpt, count(*)
-- from encounters_details as ed
-- where  cpt = 24538
-- group by 1
-- order by 2 desc

-- where cpt = 24538
-- order by paid_amount

-- 24538 had 40 patients

select * 
from encounters_details ed
join referrals r
on ed.patient_id = r.patient_id

