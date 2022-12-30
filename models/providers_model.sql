select zip, count(npi)
from providers
group by 1, 