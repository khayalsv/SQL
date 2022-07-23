declare @eded int,@birlik int,@onluq int,@yuzluk int, @cem int
set @eded=456
set @birlik=@eded %10
set @onluq=(@eded/10)%10
set @yuzluk=(@eded /100)%10
set @cem=@birlik+@onluq+@yuzluk

select @birlik ,@onluq, @yuzluk, @cem
