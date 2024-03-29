create table department(
deptno int primary key,
dname varchar(200),
loc varchar(200)
);

insert into department
values (10, 'Accounting', 'New York'),
	(20, 'Research', 'Dallas'),
	(30, 'Sales', 'Chicago'),
	(40, 'Operations', 'Boston');


create table employee (
empno int primary key,
ename varchar(200),
job varchar(200),
mgr int,
hiredate date,
sal int,
comm int,
deptno int,
foreign key(deptno) references department(deptno)
);

insert into employee 
values (7369, "Smith", "Clerk", 7902, '1980-12-17' , 800, null, 20),
	(7499, "Allen", "Salesman", 7698, '1981-02-20' , 1600, 300, 30),
	(7521, "Ward", "Salesman", 7698, '1981-02-12' , 1250, 500, 30),
	(7566, "Jones", "Manager", 7839, '1981-02-04' , 2975, null, 20),
	(7654, "Martin", "Salesman", 7698, '1981-09-28' , 1250, 1400, 30),
	(7698, "Blake", "Manager", 7839, '1981-05-01' , 2850, null, 30),
	(7782, "Clark", "Manager", 7839, '1981-06-09' , 2450, null, 10),
	(7788, "Scott", "Analyst", 7566, '1982-12-09' , 3000, null, 20),
	(7839, "King", "President", null, '1981-11-17' , 5000, null, 10),
	(7844, "Turner", "Salesman", 7698, '1981-09-08' , 1500, 0, 30),
	(7876, "Adams", "Clerk", 7788, '1983-01-12' , 1100, null, 20),
	(7900, "James", "Clerk", 7698, '1981-12-03' , 950, null, 30),
	(7902, "Ford", "Analyst", 7566, '1981-12-04' , 3000, null, 20),
	(7934, "Miller", "Clerk", 7782, '1982-01-23' , 1300, null, 10);

select * from employee;
select * from department;
				