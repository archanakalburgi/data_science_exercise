select patient_id, count(npi)
from temp
group by patient_id
order by 2 desc

-- 16 docs
-- 13400 pid - 2 docs