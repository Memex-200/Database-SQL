SELECT ASCII ('E')
SELECT CHAR(69)

DECLARE @Start INT
SET @Start = 65
WHILE (@Start < 90)
BEGIN
PRINT CHAR (@Start)
SET @Start = @Start + 1
END

SELECT LTRIM(' EMAN')
SELECT RTRIM('EMAN  ')
SELECT LOWER('EMAN')
SELECT UPPER('eman')
SELECT REVERSE('ABC')
SELECT LEN('Eman Hassna')

SELECT LEFT('EMAN',2)
SELECT RIGHT('EMAN',2)
SELECT CHARINDEX('@','eman@em.com')
SELECT SUBSTRING('eman@em.com',5,6) /* ÎãÓÉ íÚäì ÈÞæáå ÇÈÏÃ áì ãä ÇäÏßÓ ÎãÓÉ æÓÊÉ íÚäì ÈÞæáå ÑÌÚ áì 6 ÍÑæÝ ãä ÇáßáãÉ*/
SELECT LEN('eman@em.com')

/*-------------------------------------------------------------------------------------------------------*/

/*Say we want to bring only the domain name from table employee*/

-- Calculate the domain and count of emails
SELECT SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email) - CHARINDEX('@', Email)) AS Domain,
       COUNT(Email) AS EmailCount
FROM Person
GROUP BY SUBSTRING(Email, CHARINDEX('@', Email) + 1, LEN(Email) - CHARINDEX('@', Email));

-- Retrieve all columns from Person
SELECT *
FROM Person;

-- --------------------------------------------------------------------------------------------------------

--Replicate function
Select * from Person
Select ID,Name , SUBSTRING (Email,1,2) + REPLICATE('*',5) + 
SUBSTRING (Email,CHARINDEX('@',Email) , LEN (Email) - CHARINDEX('@',Email)+1)
AS Email FROM Person

-- --------------------------------------------------------------------------------------------------------

SELECT SPACE(5)
SELECT * FROM Emp_Name
SELECT *,FirstName + SPACE(5) + MiddleName + SPACE(5) + LastName as FullName
FROM Emp_Name