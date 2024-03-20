select * from Employee
/*-------------------------------------------------------------------------------------------------*/
create procedure spGetEmployee
As
Begin
select Gender,DEPARTMENT from Employee
End
/*------------------------------------------------------------------------------------------------*/

Execute spGetEmployee /* „„ﬂ‰ «⁄„· ﬂœÂ »—÷Ê » «‰Ï «Õœœ «”„ «·»—Ê”Ìœ— Ê«‰›–Â */

/*-----------------------------------------------------------------------------------------------*/

CREATE PROCEDURE spGetEmployeeByGenderAndDepartment
    @Gender NVARCHAR(20),
    @DEPARTMENT INT
AS
BEGIN
    SELECT Name, Gender, DEPARTMENT
    FROM Employee
    WHERE Gender = @Gender AND DEPARTMENT = @DEPARTMENT;
END

/*----------------------------------------------------------------------------------------------------*/

spGetEmployeeByGenderAndDepartment 'Female' , 1

/*----------------------------------------------------------------------------------------------------*/

sp_helptext 'spGetEmployeeByGenderAndDepartment' /*to get the code of the procedure*/

/*---------------------------------------------------------------------------------------------------*/

 /* To modify Strored procedure */
sp_helptext 'spGetEmployee'

alter procedure spGetEmployee  
As  
Begin  
select Gender,DEPARTMENT from Employee  order by Name
End

/*-------------------------------------------------------------------------------------------------------*/

/* To delete Stroed Procedure */
Drop proc [dbo].[spGetEmployee]

/*-------------------------------------------------------------------------------------------------------*/

ALTER  procedure spGetEmployee 
with encryption
As  
Begin  
select Gender,DEPARTMENT from Employee  order by Name
End

/*-----------------------------------------------------------------------------------------------------------*/

CREATE PROCEDURE spGetEmployeeCountByGender
    @Gender NVARCHAR(20),
    @EmployeeCount INT OUTPUT
AS
BEGIN
    SELECT @EmployeeCount = COUNT(ID)
    FROM Employee
    WHERE Gender = @Gender;
END

DECLARE @TotalCount int
EXEC spGetEmployeeCountByGender 'Female' , @TotalCount OUT

IF (@TotalCount IS NULL)
    PRINT '@TotalCount is null'
ELSE
    PRINT '@TotalCount is not null'

PRINT @TotalCount

/*--------------------------------------------------------------------------------------------*/

sp_help spGetEmployeeCountByGender
sp_help Employee
sp_depends spGetEmployeeCountByGender /*«ÌÂ «·ÃœÊ«· «··Ï »Ì⁄ „œ ⁄·ÌÂ« */
sp_depends Employee /*«·ÃœÊ· »Ì⁄ „œ ⁄·Ï ﬂ«„ Ê«‰ÂÏ »Ê—”Ìœ—*/

/*--------------------------------------------------------------------------------------------*/

CREATE PROCEDURE spGetTotalCountOfEmployee1
@TotalCount INT OUTPUT
AS
BEGIN
SELECT @TotalCount = Count(ID) FROM Employee
END

DECLARE @TotalEmployee INT
EXECUTE spGetTotalCountOfEmployee1 @TotalEmployee OUT
PRINT @TotalEmployee

CREATE PROCEDURE spGetTotalCountOfEmployee2
AS
BEGIN
RETURN (SELECT  Count(ID) FROM Employee)
END

DECLARE @TotalEmployee2 INT
EXECUTE  @TotalEmployee2 = spGetTotalCountOfEmployee2
PRINT @TotalEmployee2





