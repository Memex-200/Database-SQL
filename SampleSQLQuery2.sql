Create table Gender
(
ID int not null Primary key,
Gender nvarchar(50)
)

alter table Person
add constraint Person_GenderID_FK FOREIGN KEY (GenderID) references Gender(ID)

