We do not have details for 2 providers in the employer_in_network_split table.

```
select *
from employer_in_network_split np
left join providers n
on np.npi = n.npi
where n.npi is null
```

| employer_id | npi        | provider_name | npi | zip |
| ----------- | ---------- | ------------- | --- | --- |
| 69873       | 1992787402 |               |     |     |
| 69873       | 139672875  |               |     |     |
| 80914       | 1992787402 |               |     |     |
| 80914       | 139672875  |               |     |     |
| 54011       | 1992787402 |               |     |     |
| 54011       | 139672875  |               |     |     |

---

63 row in encounter_details corresponds to a provider above table

```
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
```

Merging referral with in_network_details on zip and empoyee id
basically all docs in area can see all patents
i.e we hav 800 rows
that means, on an average 1 patient has 4 docs in area

```
with doc_details as (
select *
from employer_in_network_split np
join providers n
on np.npi = n.npi
)

select *
from referrals r
join doc_details d
on r.employer_id = d.employer_id and r.zip = d.zip

```

and

```
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
```
