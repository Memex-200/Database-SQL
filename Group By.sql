Create table Employee
(
ID int , Name nvarchar(100) , Gender nvarchar(20) , 
Salary int , City nvarchar(50)
)
insert into Employee (ID,Name,Gender,Salary,City) values (1,'Eman','Female',
30255,'Dubai')
insert into Employee (ID,Name,Gender,Salary,City) values (2,'Asmaa','Female',
66254,'Egypt')
insert into Employee (ID,Name,Gender,Salary,City) values (3,'Mohammed','male',
66000,'New York')
insert into Employee (ID,Name,Gender,Salary,City) values (4,'Momo','male',
50000,'Cairo')
insert into Employee (ID,Name,Gender,Salary,City) values (5,'Omda','male',
70000,'Assuit')
insert into Employee (ID,Name,Gender,Salary,City) values (6,'Rahma','male',
100000,'Alx')
insert into Employee (ID,Name,Gender,Salary,City) values (7,'Ahmed','male',
100000,'Alx')

select * from Employee
/* To find total salary */
select SUM(Salary) from Employee
/* To find Max salary */
select Max(Salary) from Employee
select Min(Salary) from Employee

select City,Sum(Salary) as total from Employee group by City

select City,Gender , Sum(Salary)  from Employee group by City , Gender

select City,Sum(Salary) from Employee group by City Having City = 'Alx'

/* == */

select City,Sum(Salary) from Employee where City = 'Alx' Group by City



