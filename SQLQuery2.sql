use [Chat System];

create table users
(user_id INT,
username VARCHAR(14),
email VARCHAR(14),
user_password VARCHAR(14),
create_date VARCHAR(14),
birth_date VARCHAR(14),
age VARCHAR(2),
last_login_date VARCHAR(14),
phone VARCHAR(14));

select * from users;

INSERT INTO users (user_id, username, email, user_password, create_date, birth_date, age, last_login_date, phone)
values (4,'EmanHassan','emanhassanshawky214@gmail.com','omaressam123','26/33/2004','26/33/2004','17','04/12/2022','01004401437' ) ;