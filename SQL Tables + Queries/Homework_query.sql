----- Problem #1 -----

select e.emp_no as "Employee Number", e.first_name as "First Name", e.last_name as "Last Name", b.salary as "Salary", b.title as "Title"
from employees e
join(
	select r.emp_no, r.salary, s.title 
	from salaries r
	join titles s
	on r.emp_no = s.emp_no
) b
on e.emp_no = b.emp_no;

----- Problem #2 -----

select emp_no, first_name, last_name from employees
where left(hire_date, 4) = '1986';

----- Problem #3 -----

create view manager_dept as
select i.dept_no, i.dept_name, j.emp_no, j.from_date, j.to_date
from departments i
join dept_manager j
on i.dept_no = j.dept_no;

select l.dept_no, l.dept_name, l.emp_no, n.last_name, n.first_name, l.from_date, l.to_date
from manager_dept l
join employees n
on l.emp_no = n.emp_no;

----- Problem #4 -----

create view emp_dept as
select a.emp_no, a.dept_no, b.dept_name
from dept_emp a
left join departments b
on a.dept_no = b.dept_no;

select c.emp_no, c.last_name, c.first_name, d.dept_name
from employees c
left join emp_dept d
on c.emp_no = d.emp_no;

----- Problem #5 -----

select first_name, last_name
from employees
where upper(first_name) = 'HERCULES'
and upper(last_name) like 'B%';

----- Problem #6 -----

select a.emp_no, a.last_name, a.first_name, b.dept_name
from employees a
left join emp_dept b
on a.emp_no = b.emp_no
where upper(b.dept_name) = 'SALES';

----- Problem #7 -----

select a.emp_no, a.last_name, a.first_name, b.dept_name
from employees a
left join emp_dept b
on a.emp_no = b.emp_no
where upper(b.dept_name) = 'SALES'
or upper(b.dept_name) = 'DEVELOPMENT';

----- Problem #8 -----

select distinct last_name, count(last_name) as Frequency
from employees
group by last_name
order by Frequency desc;

----- Curiosity Piqued -----

select first_name, last_name
from employees
where emp_no = 499942

----- :) -----
