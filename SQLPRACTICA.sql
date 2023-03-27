create database Company

use Company

select *from Employees
union
select *from Customers


select *from Employees
union all
select *from Customers


select *from Employees
except
select *from Customers


select *from Employees
order by Id asc


select *from Employees
order by Id desc


select [Name],[Surname],[Age] from Employees
order by Age desc


select [Name],[Surname],[Age] from Employees
where Age > 22 
order by Age desc

select GETDATE() as 'Current Date'


select *from Customers

select Count(*) 'Age Count',Age from Customers 
where Age > 24
group by Age
having Count(*) > 0
order by Count(*) desc


select Count(*) 'Age Count',Age from Customers 
where Age > 18
group by Age
having Count(*) > 0
order by Count(*) desc

select Count(*) 'Age Count',Age from Customers 
where Age > 18
group by Age
having Count(*) > 0
order by Age desc


begin

 declare @age int = 20

 if @age > 18
    print 'Yes'
 else 
    print 'No'

end

select Sum(Age) from Customers 

begin

 declare @SumAge int = (select Sum(Age) from Customers)
 declare @AvgAge int = (select Avg(Age) from Customers)

 if @SumAge > @AvgAge
    print 'Yes'
 else 
    print 'No'

end





declare @Counter int 
set @Counter = 1

while( @Counter <= 10)
begin 
print 'Somebody stops me!' 

set @Counter = @Counter + 1

end


create view GetEmployeesByAge As
select * from Employees where Age > 25

select * from GetEmployeesByAge