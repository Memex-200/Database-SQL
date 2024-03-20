use Sample1
Select * From Gender
Select * From Person

insert into Person(ID,Name,Email) Values (3,'Asmaa','asmaa@gmail.com')

insert into Person(ID,Name,Email) Values(4,'Fatam','fatma@gmail.com')

insert into Person (ID,Name,Email,GenderID) Values (6,'MeMex','Memex@gmail.com',2)


Alter table Person add constraint DF_Person_GenderID
Default 3 for GenderID

Delete from Gender Where ID = 2

/*Insert into Person Values(6,'MeMex','Memex@gmail.com',NULL,20)*/

alter table Person add constraint CK_Person_age check (age > 0 and age < 150 )

/*Unique key constraint*/

alter Table Person add constraint UQ_Person_Email Unique (Email)

