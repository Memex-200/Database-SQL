Select * From Person

/* Distinct Rows */
Select Distinct Name,City from Person

/* Filtering with where clause*/
Select * from Person where City = 'Egypt'
Select * from Person where City <> 'Egypt' /*  !=  */
Select * from Person where age = 20 or age = 30 /* this is equal to : */
select * from Person where age in(20,30)
select * from Person where age between 20 and 30
select * from Person where City like 'E%'
select * from Person where Email like '%@%'
select * from Person where Email like '_@_.com'
select * from Person where Name like '[EM]%'
select * from Person where Name like '[^EM]%'

/* Joining multible conditions using AND and OR Operators */
select * from Person where (City = 'Egypt' or City = 'Emarat') and age >= 20

/* Sorting rows using order by  */
select * from Person order by Name 
select * from Person order by Name desc
select * from Person order by Name desc,age asc

/* selecting top n or top n percentage of rows */
select top 2 * from Person
select top 1 percent * from Person 
select top 50 percent * from Person
/* «ﬁœ„ „ÊŸ›*/
select top 1 * from Person order by age desc






