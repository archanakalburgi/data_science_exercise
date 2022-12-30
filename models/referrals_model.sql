select distinct r.szip
from providers as p
left join (select distinct zip  as szip from referrals ) as r 
on p.zip = r.szip
