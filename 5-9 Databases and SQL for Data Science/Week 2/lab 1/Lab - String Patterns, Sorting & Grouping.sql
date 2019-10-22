select * from EMPLOYEES;

select f_name, l_name from EMPLOYEES
where address like '%Elgin%';

select f_name, l_name from EMPLOYEES
where B_DATE like '197%';

select f_name, l_name, DEP_ID from EMPLOYEES
where (SALARY between 60000 and 70000) and DEP_ID = 5; 

select f_name, l_name, DEP_ID from EMPLOYEES
order by DEP_ID;

select f_name, l_name, DEP_ID from EMPLOYEES
order by DEP_ID desc,  l_name desc;

select DEP_ID, count(DEP_ID)  from EMPLOYEES
group by DEP_ID;

select DEP_ID, count(*), avg(SALARY) from EMPLOYEES
group by DEP_ID;

select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY
from EMPLOYEES
group by DEP_ID 
order by 3;

select DEP_ID, count(*) as NUM_EMPLOYEES, avg(SALARY) as AVG_SALARY 
from EMPLOYEES
group by DEP_ID having count(*) < 4
order by 3;

select f_name, l_name, MANAGER_ID from EMPLOYEES
order by MANAGER_ID,  l_name desc;

select D.DEP_NAME , E.F_NAME, E.L_NAME
from EMPLOYEES as E, DEPARTMENTS as D
where E.DEP_ID = D.DEPT_ID_DEP
order by D.DEP_NAME, E.L_NAME desc ;