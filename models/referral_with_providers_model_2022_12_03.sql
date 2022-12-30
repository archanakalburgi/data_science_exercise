select employer_id, patient_id, count(distinct npi) 
 from referral_with_providers
group by employer_id, patient_id
order by 3 desc