select count(*), avg(sal) from employee where deptno = 20 group by deptno;

select ename, sal, (0.10 * sal) as "PF Amount" from employee;

select ename from employee where year(curdate()) - year(hiredate) = 25;

select * from employee order by sal;

select ename, hiredate from employee order by 2 desc;

select ename, sal, (0.10 * sal) as "PF", (0.50 % sal) as "HRA", (0.30 * sal) as "DA", ((0.10 * sal) + (0.50 % sal) + (0.30 * sal) + sal) as gross from employee order by gross;

select deptno, count(*) from employee group by deptno;

select deptno, sum(sal) from employee group by deptno;

select job, count(*) from employee group by job order by 2 desc;

select sum(sal), min(sal), max(sal), avg(sal) from employee group by job;

select deptno, sum(sal), min(sal), max(sal), avg(sal) from employee group by deptno having deptno = 20;

select avg(sal), deptno, count(*), job from employee where deptno = 20 group by job having avg(sal) > 1000;