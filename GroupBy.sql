select City,Count(*) as 'Total' from Student group by City

select Gender,Count(*) as 'Total' from Student group by Gender

select Hobby,Count(*) as 'Total' from Student group by Hobby

select City,Count(*) as 'Total' from Student group by City having Count(*)=4