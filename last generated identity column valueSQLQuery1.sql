use Sample1

create table Test1
(
ID int identity(1,1),
Value nvarchar(50)
)

create table Test2
(
ID int identity(1,1),
Value nvarchar(50)
)

insert into Test1 values('x')
insert into Test1 values('z')
insert into Test2 values('xxx')
select * from Test1
select * from Test2

/*ÚÔÇä ÇÓÊÑÌÚ ÇÎÑ ŞíãÉ Êã ÇÖÇİÊåÇ ááÇÏíäÊíÊì ßæáæã*/
select SCOPE_IDENTITY()
Select @@Identity
select IDENT_CURRENT('Test2')

create trigger trForInsert on Test1 for insert 
as
Begin
insert into Test2 values('yyyy') 
End