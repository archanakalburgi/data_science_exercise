select zip, procedure,count(*)
from referrals
where zip = '334113504'
group by zip, procedure
order by 3 desc
-- 334113504