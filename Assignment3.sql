select ename from emp where job='MANAGER'

select ename,sal from emp where sal>1000

select ename,sal from emp where ename<>'JAMES'

select * from emp where ename like 'S%'

select ename from emp where ename like '%A%'

select ename from emp where ename like '__L%'

select ename,sal/30 as daily_sal from emp where ename='JONES'

select ename,sal*12 as tot_sal from emp

select avg(sal*12) as avg_salary from emp

select ename,job,sal,deptno from emp where job not in('SALESMAN') and deptno=30

select distinct emp.deptno,dept.dname from emp inner join dept on emp.deptno=dept.deptno 

select ename as employees,sal as monthly_sal,deptno from emp where sal>1500 and (deptno=10 or deptno=30)

select ename,job,sal from emp where (job='MANAGER'or job='ANALYST') and (sal not in(1000,3000,5000))

select ename,sal,comm from emp where comm is not null and comm>(sal*0.1)

select ename from emp where ename like '%L%L%' and (deptno=30 or mgr_id=7738)

select ename,deptno,datediff(year,hiredate,getdate()) as experience from emp where (datediff(year,hiredate,getdate())>10 ) and (datediff(year,hiredate,getdate())<20)

select dept.dname,emp.ename from emp inner join dept on emp.deptno=dept.deptno order by dept.dname asc,emp.ename desc

select datediff(year,hiredate,getdate()) as experience from emp where ename='MILLER'
