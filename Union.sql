create table indiaC (ID int , Name nvarchar(50) , Email nvarchar (100))
create table UKC (ID int , Name nvarchar(50) , Email nvarchar (100))

insert into indiaC (ID,Name,Email) values (1,'Raj','R@R.com')
insert into indiaC (ID,Name,Email) values (2,'Sam','S@S.com')
insert into UKC (ID,Name,Email) values (1,'Ben','B@B.com')
insert into UKC (ID,Name,Email) values (2,'Sam','S@S.com')

select * from indiaC
Union all /* œ„Ã Ê ﬂ—«— + »Ì—Ã⁄ œ« « „‘ „ — »…*/
select * from UKC

select * from indiaC
Union /*œ„Ã »œÊ‰  ﬂ—«—  + »Ì—Ã⁄ œ« « „ — »…*/
select * from UKC