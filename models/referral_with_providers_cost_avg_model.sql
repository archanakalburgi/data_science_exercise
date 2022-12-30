-- select * 
-- from referral_with_providers_cost_avg
-- where patient_id = 13592

-- cpt = 29806, 197
-- npis seen = 22


-- no duplicate patient_id in encounter
-- select count(distinct patient_id) 
-- from encounters_details


select count(distinct patient_id)
from referrals
