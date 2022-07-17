select City from Student

select distinct City from Student --to prevent recurrence

select Count(distinct (City)) from Student --number of cities

select CounT(distinct (Hobby)) as 'Total Hobby' from Student