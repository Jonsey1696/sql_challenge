select last_name, count(last_name) as name_count
from employees
group by last_name
order by name_count desc;