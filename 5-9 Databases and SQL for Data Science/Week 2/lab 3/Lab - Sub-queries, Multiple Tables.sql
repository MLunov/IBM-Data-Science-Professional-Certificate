select * from employees;

select * from departments;

select * from employees
	where salary < (select avg(salary) from employees);

select EMP_ID, salary,  (select avg(salary) from employees) as avg_salary 
	from employees;
	
select * from 
	(select EMP_ID, F_NAME, L_NAME, DEP_ID from employees) as EMP4ALL;
	
select * from employees
	where dep_id in 
		(select dept_id_dep from departments);
		
select * from employees
	where dep_id in 
		(select dept_id_dep from departments
			where loc_id = 'L0002');

select dept_id_dep, DEP_NAME from departments
	where dept_id_dep in 
		(select dep_id from employees
			where salary > 70000);
			
select * from employees, departments;
			
select * from employees e, departments d
	where e.dep_id = d.dept_id_dep;

-- that's wrong? :
select EMP_ID, DEP_NAME
	from employees e, departments d
		where e.dep_id = d.dept_id_dep;
		
-- no it works okay, like that:
select e.EMP_ID, d.DEP_NAME
	from employees e, departments d
		where e.dep_id = d.dept_id_dep;