select * from Student where Name like '%Kh%' or Surname like '%med%'

select * from Student where Name like 's%' -- S with begin name

select * from Student where Name like 's%' and Gender='man'

select * from Student where Name not like '%Kh%'

select * from Student where Name like '[A,S]%' --A,S with begin name

select * from Student where Name like '[a-k]%' --A,S with begin name
