use FDB

create table Working
(
eid int Primary key,
ename varchar(50) not null,
eage int,
eadd varchar(100) default 'Cairo',
hirdate date default getdate(),
Dnum int

)

alter table Working add sal int 
alter table Working alter column sal bigint
alter table Working drop column sal 
drop table Working