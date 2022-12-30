with un_supported_npis as (
select distinct np.npi
from employer_in_network_split np
left join providers n 
on np.npi = n.npi 
where n.npi is null
)

select *
from encounters_details
where npi in (1992787402, 139672875)



