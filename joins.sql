create table dep
(
ID int , dep_name nvarchar(50), Location nvarchar (100) , dep_Head nvarchar(50)
)
insert into dep (ID, dep_name , Location , dep_Head) values (1,'IT','Egypt','Rick')
insert into dep (ID,dep_name , Location , dep_Head) values (2,'payroll','Alx','Ron')
insert into dep (ID,dep_name , Location , dep_Head) values (3,'HR','Dubai','Konan')
insert into dep (ID,dep_name , Location , dep_Head) values (4,'other departements','New York','Mikasa')

alter table Employee add constraint Employee_Dep_FK foreign key(DEPARTMENT) 
references dep (ID)

select * from dep
select * from Employee

/* inner join */
select Name,Gender,Salary,dep_name
from Employee
inner join dep 
on Employee.DEPARTMENT = dep.ID

/* left outer join */ 
select Name , Gender,Salary,dep_name
from Employee
left outer join dep
on Employee.DEPARTMENT= dep.ID

/* Right outer join */

select Name,Gender,Salary,dep_name
from Employee 
right outer join dep
on Employee.DEPARTMENT = dep.ID

/* Full puter join */
select Name,Gender,Salary,dep_name
from Employee E
Full outer join dep D
on E.DEPARTMENT = D.ID

/*Cross join */
select Name,Gender,Salary,dep_name
from Employee 
cross join dep

/* Advanced or intelligent joins */
/*left*/
select Name , Gender,Salary,dep_name
from Employee E
left outer join dep D
on E.DEPARTMENT= D.ID
where E.DEPARTMENT is null 

/*right*/
select Name , Gender,Salary,dep_name
from Employee E
right outer join dep D
on E.DEPARTMENT= D.ID
where E.DEPARTMENT is null 

/*Full*/
select Name,Gender,Salary,dep_name
from Employee E
Full outer join dep D
on E.DEPARTMENT = D.ID
where E.DEPARTMENT is null or D.ID is null 

/*---------------------------------------------------------------------------*/

create table Emp (EmployeeID int , Name nvarchar(50) , ManagerID int)
create table reEmp(Employee nvarchar(50), Manager nvarchar(50))
insert into Emp (EmployeeID,Name,ManagerID) values (1,'Mike',3)
insert into Emp (EmployeeID,Name,ManagerID) values (2,'Rob',1)
insert into Emp (EmployeeID,Name,ManagerID) values (3,'Todd',NULL)
insert into Emp (EmployeeID,Name,ManagerID) values (4,'Ben',1)
insert into Emp (EmployeeID,Name,ManagerID) values (5,'Sam',1)
insert into reEmp (Employee,Manager) values ('Mike','Todd')
insert into reEmp (Employee,Manager) values ('Rob','Mike')
insert into reEmp (Employee,Manager) values ('Todd',NULL)
insert into reEmp (Employee,Manager) values ('Ben','Mike')
insert into reEmp (Employee,Manager) values ('Sam','Mike')

select * from Emp
select * from reEmp


/*left outer self join */
select E.Name as Name , M.Name as Manager
From Emp E
left join Emp M
On E.ManagerID = M.EmployeeID


/* inner self join */
select E.Name as Name , M.Name as Manager
From Emp E
inner join Emp M
On E.ManagerID = M.EmployeeID

/* Cross self join */
select E.Name as Name , M.Name as Manager
From Emp E
cross join Emp M

select ISNULL(NULL,'NO Manager')
/* === */ 
select coalesce(NULL,'NO Manager')

/* to prevent null values*/
select E.Name as Name ,ISNULL( M.Name,'No Manager') as Manager
From Emp E
left join Emp M
On E.ManagerID = M.EmployeeID

select E.Name as Name ,coalesce( M.Name,'No Manager') as Manager
From Emp E
left join Emp M
On E.ManagerID = M.EmployeeID

select E.Name as Name ,case when M.Name is null then 'No Manager' else M.Name end  as Manager
From Emp E
left join Emp M
On E.ManagerID = M.EmployeeID


