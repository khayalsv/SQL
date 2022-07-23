if (10<5)
print 'True'
else
print 'False'


select * from Note

if(select sum(Exam1) from Note) >200
print 'more than 200 total'
else 
print 'less than 200 total'


if(select count(*) from Note)<2 
print 'more than 2 exam'
else
print 'less than 2 exam'



select * from Student

select Name,Surname,
Hobbiler=case Hobby
when '1' then 'Basketball' 
when '2' then 'Tennis' 
when '3' then 'Football' 
when '4' then 'Ps4' 
end from Student


select Name,Hobbiler=
case
when Hobby<=2 then 'Basketball and tennis'
when Hobby>=2 then 'Football and Ps4'
end from Student
