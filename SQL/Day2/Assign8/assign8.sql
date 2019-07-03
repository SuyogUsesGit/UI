select ename, job from employee where job ='Analyst' || job ='Salesman';

select ename,hiredate from employee where hiredate < '1981-09-30';

select ename,job from employee where job != 'Manager';

select ename from employee where empno = 7369 || empno = 7521 || empno = 7839 || empno = 7934 || empno = 7788;

select ename from employee where empno in (7369, 7521, 7839, 7934, 7788);

select ename from employee where deptno not in(10, 40, 30);

select ename from employee where hiredate between '1981-06-30' and '1981-12-31';

select distinct job from employee;

select ename from employee where comm is null || comm = 0;

select ename,job from employee where mgr is null;

select ename from employee where deptno is null;

select ename from employee where comm > 0;

select ename from employee where ename like '%s' || ename like 's%';

select ename from employee where ename like '_i%';

select count(*) from employee;

select count(distinct job) from employee;

select sum(sal) from employee;

select max(sal), min(sal), avg(sal) from employee;

select max(sal) from employee;




