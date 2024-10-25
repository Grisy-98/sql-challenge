-- 1. List the employee number, last name, first name, sex
-- and salary of each employee.
select s.emp_no, e.last_name, e.first_name, e.gender, s.salary
from Employees as e
inner join Salaries as s
on s.emp_no = e.emp_no
order by s.emp_no;

-- 2. List the first name, last name, and hire date for the
-- employees who were hired in 1986.
select emp_no, last_name, first_name, hire_date
from Employees
where extract(year from hire_date) = 1986;

-- 3. List the manager of each department along with their 
-- department number, department name, employee number, last name
-- and first name
select distinct on (dm.dept_no) dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from Dept_Manager as dm
inner join Departments as d
on dm.dept_no = d.dept_no
inner join Employees as e
on dm.emp_no = e.emp_no;

-- 4. List the department number for each employee along with 
-- that employee’s employee number, last name, first name, 
-- and department name.
select distinct on(e.emp_no) e.emp_no, e.last_name, e.first_name, d.dept_name
from Employees as e
left join Dept_Emp as de
on e.emp_no = de.emp_no
inner join Departments as d
on de.dept_no = d.dept_no;

-- 5. List first name, last name, and sex of each employee 
-- whose first name is Hercules and whose last name begins 
-- with the letter B.
select e.first_name, e.last_name, e.gender
from Employees as e
where(e.first_name = 'Hercules') and (e.last_name like 'B%');

-- 6. List each employee in the Sales department, including 
-- their employee number, last name, and first name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from Employees as e
left join Dept_Emp as de
on e.emp_no = de.emp_no
inner join Departments as d
on de.dept_no = d.dept_no
where (d.dept_name) = 'Sales';

-- 7. List each employee in the Sales and Development 
-- departments, including their employee number, last 
-- name, first name, and department name.
select e.emp_no, e.last_name, e.first_name, d.dept_name
from Employees as e
left join Dept_Emp as de
on e.emp_no = de.emp_no
inner join Departments as d
on de.dept_no = d.dept_no
where (d.dept_name) = 'Sales' or (d.dept_name) = 'Development';

-- 8. List the frequency counts, in descending order, 
-- of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as Frequency
from Employees
group by last_name
order by Frequency desc;

