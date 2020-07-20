select dept.dept_no, dept.dept_name, dept.emp_no,
	employees.last_name, employees.first_name
from employees
inner join 
	(select departments.dept_no, departments.dept_name, dept_manager.emp_no from departments inner join dept_manager on
		departments.dept_no = dept_manager.dept_no) as dept
on employees.emp_no=dept.emp_no;
