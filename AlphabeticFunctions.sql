select upper(Name) as 'Name',
lower(City) as 'City'
from Student


select substring(Name,1,2) from Student

select substring(Name,1,2) + '.' from Student

select substring(Name,1,2) + '.' + Surname as 'Fullname' from Student


select Left('Hello world',9),Right('Hello Baku',2)

select Left(Name,1)+'.'+ Surname as 'Fullanme' from Student


select Left(Name,3), avg(ExamAvarage) from Note
inner join Lessons
on Lessons.Id=Note.Lesson
group by Name


select Len('Hello')

select Len(Name) from Student where City='Baku'

select * from Student where Len(Surname)=4 or Len(Surname)=7


select ltrim('                  Hello world')
select rtrim('Hello world       ')


select Replace('Khayal Salimov','Khayal','K')


select CHARINDEX('o','SQL Lessons continue')

select CHARINDEX('o','SQL Lessons continue',10)


select Reverse('Khayal') 

select Reverse(Name) from Lessons