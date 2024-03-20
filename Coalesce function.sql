create table Emp_Name (Id int ,FirstName nvarchar(50), MiddleName nvarchar (50) , LastName nvarchar (50))
insert into Emp_Name (Id,FirstName,MiddleName,LastName) values (1,'Sam',Null , Null)
insert into Emp_Name (Id,FirstName,MiddleName,LastName) values (2,Null,'Todd', Null)
insert into Emp_Name (Id,FirstName,MiddleName,LastName) values (3,Null,Null ,'Sara')
insert into Emp_Name (Id,FirstName,MiddleName,LastName) values (4,'Ben','Parker' , Null)
insert into Emp_Name (Id,FirstName,MiddleName,LastName) values (5,'James','Nick','Mike')
select * from Emp_Name
select Id , coalesce(FirstName,MiddleName,LastName) from Emp_Name

/* Coalesce Function returns the first not null value */