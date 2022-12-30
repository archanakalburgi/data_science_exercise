with proc_details as (
  select npi, cpt, count(*) as n_cpt
  from encounters_details
  group by npi, cpt
  order by 1, 2 
)

, prep as (
select npi, cpt, n_cpt
, sum(n_cpt) over (partition by cpt) total_cpt_seen
, (select count(distinct npi) from proc_details) as total_docs
from proc_details
order by cpt, npi 
)

select npi, cpt, total_cpt_seen, n_cpt ,total_docs, (total_cpt_seen/ cast(total_docs as float))
,case when n_cpt > (total_cpt_seen / cast(total_docs as float)) then 1 else 0 end as rec
from prep;

