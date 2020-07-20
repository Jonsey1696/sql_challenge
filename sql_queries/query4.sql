select employees.emp_no, employees.last_name,
	employees.first_name, emps.dept_name
from employees
inner join 
	(select departments.dept_no, departments.dept_name, dept_emp.emp_no
	from departments
	inner join dept_emp on
	departments.dept_no=dept_emp.dept_no) as emps
on employees.emp_no=emps.emp_no;


