begin transaction
insert into Category (Name) values ('Lamp')
insert into Category (Name) values ('Door')
select * from Category
RollBack


begin transaction
insert into Category (Name) values ('Lamp')
insert into Category (Name) values ('Door')
select * from Category
Commit

 