select ExamAvarage,Exam1,Student from Note
inner join Lessons 
on Note.Lesson=Lessons.Id
inner join Student
on Note.Student=Student.Id

select * from Note where Lesson=(Select Id from Lessons where Name='Algoritm')

select * from Note
inner join Student
on Student.Id=Note.Student

select * from Note
left join Student
on Student.Id=Note.Student

select * from Note
right join Student
on Student.Id=Note.Student

select * from Note
full join Student
on Student.Id=Note.Student


Select * from Hobbies union Select * from Lessons