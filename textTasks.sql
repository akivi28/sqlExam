use Barbershop
--1.1

create function nameOfAllBarbers()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50))
as
begin
	insert into @result
		select Name,Surname,LastName
		from Barbers
	return
end

--1.2

create function infAboutSeniorBarbers()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date)
as 
begin
	insert into @result
		select Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate
		from Barbers
		where JobPositionId = (select Id from JobPosition where Name = 'синьор-барбер')
	return
end

--1.3

create function infAboutBarbWhoCanProvideBeardShave()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	insert into @result
		select Barbers.Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPosition.Name
		from BarbersServices join Barbers on BarberId = Barbers.id,JobPosition
		where TypeServisId = (select id from TypeServis where Name = 'Традиционное бритье бороды') and
		JobPositionId = JobPosition.id
	return
end

--1.4

create function infAboutBarbWhoCanProvideParticularService(@Servis nvarchar(50))
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	insert into @result
		select Barbers.Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPosition.Name
		from BarbersServices join Barbers on BarberId = Barbers.id,JobPosition
		where TypeServisId = (select id from TypeServis where Name = @Servis) and
		JobPositionId = JobPosition.id
	return
end

--1.5

create function infAboutBarbWhoWorkingMore(@countOfyear int)
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	insert into @result
		select Barbers.Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPosition.Name
		from Barbers,JobPosition
		where JobPositionId = JobPosition.id and
		datediff(YEAR,StartWorkingDate,GETDATE()) > @countOfyear
	return
end

--1.6
create function countSeniorAndJuniorBarbers()
returns @result table(Jun int,Senior int)
as
begin
	declare @countJun int = (select count(*)
							from Barbers
							where JobPositionId = 
								(select id from JobPosition where Name = 'джуниор-барбер'))
	declare @countSenior int = (select count(*)
								from Barbers
								where JobPositionId = 
									(select id from JobPosition where Name = 'синьор-барбер'))
	insert into @result (Jun, Senior)
    values (@countJun, @countSenior);

	return
end

--1.7

create function regularCustomer(@countVisit int)
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50))
as
begin
	insert into @result
		select Name,Surname,LastName,Phone,Email
		from Clients,Booking
		where ClientId = Clients.Id 
		group by Name,Surname,LastName,Phone,Email
		having COUNT(ClientId) >= @countVisit
	return
end

--1.8

create trigger dontDelChifBar
on Barbers
for delete
as
begin
	declare @count int = (select count(*)
						 from Barbers
						 where JobPositionId = 
						 (select id from JobPosition where Name = 'чиф-барбер'))
	if(@count = 0)
	begin
		print('Нельзя удалить чиф барбера, если не добавлен второй')
		rollback transaction
	end
	else
	begin
		print('Барбер успешно удален')
	end
end

--1.9

create trigger dontAddBarberUnder21
on Barbers
for insert
as
begin
	declare @age int = (select DATEDIFF(YEAR,DateOfBirth,GETDATE())
					   from inserted)
	if(@age < 21)
	begin
		print('Нельзя добавлять барберов младше 21 года')
		rollback transaction
	end
	else
	begin
		print('Барбер успешно добавлен')
	end
end

--2.1.1

create function longestBarber()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	insert into @result
		select top 1 Barbers.Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPosition.Name
		from Barbers,JobPosition
		where JobPositionId = JobPosition.id
		order by StartWorkingDate asc
	return
end

--2.1.2

create function barbThatServedMaxCustomersInRange(@startDate date, @endDate date)
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	declare @resTmp table (BarberId int,countClient int)
	insert into @resTmp
		select top 1 BarberId, COUNT(BarberId) as 'countClient'
			from Booking
			where Date >= @startDate and Date <= @endDate
			group by BarberId
			order by countClient desc
	
			
	insert into @result
		select Barbers.Name,Barbers.Surname,Barbers.LastName,Barbers.Phone,
			Barbers.Email,Barbers.DateOfBirth,Barbers.StartWorkingDate,
				JobPosition.Name
		from @resTmp,Barbers,JobPosition
		where BarberId = Barbers.id and Barbers.JobPositionId = JobPosition.id
	return
end
--2.1.3

create function clientVisitBarberShopMaxNumOfTimes()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50))
as
begin
	declare @resTmp table(ClientId int,countVisit int)
	insert into @resTmp
		select top 1 ClientId, count(ClientId) as 'countVisit'
			from Booking
			group by ClientId
			order by countVisit desc

	insert into @result
		select Name,Surname,LastName,Phone,Email
		from Clients,@resTmp
		where ClientId = Clients.id
	return
end

--2.1.4

create function clientWhoSpentMaxMoney()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50))
as
begin
	declare @resTmp table(ClientId int,totalSum int)
	insert into @resTmp 
		select top 1 ClientId,sum(Price) as 'totalSum'
		from Booking
		join BookingServices on BookingId = Booking.id 
		join TypeServis on ServisId = TypeServis.id
		group by Booking.ClientId
		order by totalSum desc
	
	insert into @result
		select Name,Surname,LastName,Phone,Email
		from Clients, @resTmp
		where ClientId = Clients.id
	return
end

--2.1.5

create function longestService()
returns @result table(Name nvarchar(50),Price money,Time time(0))
as
begin
	insert into @result 
		select top 1 Name,Price,TimeDuration
		from TypeServis
		order by TimeDuration desc
	return
end

--2.2.1

create function mostPopularBarb()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	declare @resTmp table(BarberId int,countClient int)
	insert into @resTmp
		select top 1 BarberId,count(distinct ClientId) as 'countClient'
		from Booking
		group by BarberId
		order by countClient desc

	insert into @result
		select Barbers.Name,Surname,LastName,Phone,Email,DateOfBirth,
			StartWorkingDate,JobPosition.Name
		from Barbers,JobPosition,@resTmp
		where JobPositionId = JobPosition.id and Barbers.id = BarberId
	return
end

--2.2.2

create function top3OnSum()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	declare @resTmp table(BarberId int,totalSum int)
	insert into @resTmp
		select top 3 Barbers.id,sum(TypeServis.Price) as 'totalSum'
		from Barbers
		join Booking on BarberId = Barbers.id
		join BookingServices on BookingId = Booking.id
		join TypeServis on ServisId = TypeServis.id
		group by Barbers.id
		order by totalSum desc

	insert into @result
		select Barbers.Name,Surname,LastName,Phone,Email,DateOfBirth,
			StartWorkingDate,JobPosition.Name
		from Barbers,JobPosition,@resTmp
		where JobPositionId = JobPosition.id and Barbers.id = BarberId
	return
end

--2.2.3

create function top3OnRaiting()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50),BirthDate date,
							StartWorkingDate date,JobPosition nvarchar(50))
as
begin
	declare @resTmp table(BarberId int,avgRaiting int)
	insert into @resTmp
		select top 3 BarberId,avg(Raiting) as 'avgRaiting'
		from Raitings,Barbers
		where BarberId = Barbers.id
		group by BarberId
		order by avgRaiting desc

	insert into @result
		select Barbers.Name,Surname,LastName,Phone,Email,DateOfBirth,
			StartWorkingDate,JobPosition.Name
		from Barbers,JobPosition,@resTmp
		where JobPositionId = JobPosition.id and Barbers.id = BarberId
	return
end

--2.2.4

create proc scheduleForDayOfBarber
@NameBarb nvarchar(50),
@SurnameBarb nvarchar(50),
@Date date
as
begin
	declare @tmpTable table(Time time(0))
	insert into @tmpTable
		select Time
		from Booking
		where BarberId = 
			(select id from Barbers where Name = @NameBarb and Surname = @SurnameBarb )
		and Date = @Date

	if exists(select * from @tmpTable)
	begin
		declare @iTime time(0) = '09:00'
		while(@iTime <= '18:00')
		begin

			if exists(select * from @tmpTable where Time = @iTime)
			begin
				print convert(varchar(5),@iTime) + ' занят'
				set @iTime = DATEADD(HOUR, 1, @iTime)
			end
			else
			begin
				print convert(varchar(5),@iTime) + ' не занят'
				set @iTime = DATEADD(HOUR, 1, @iTime)
			end
		end
	end
	else
	begin
		print('Расписание не найдено, проверьте дату и данные барбера')
	end
end

--2.2.5
create proc freeSlotsOnWeek
@start date,
@Name nvarchar(50),
@Surname nvarchar(50)
as 
begin
	declare @end date = dateadd(DAY,6,@start)
	declare @tmpTable table(Date date,Time time(0))
	declare @pomogite table(Time time(0))

	insert into @tmpTable
		select Date,Time
		from Booking 
		where Date >= @start and Date <= @end
		and BarberId = (select id from Barbers where Name = @Name and Surname = @Surname)

	if exists(select * from @tmpTable)
	begin 
		declare @workingHours table(Time time(0))
		declare @iTime time(0) = '09:00'

		while(@iTime <= '18:00')
		begin
			insert into @workingHours(Time)
			values(@iTime)
			set @iTime = DATEADD(HOUR, 1, @iTime)
		end
	end
	
	while(@start <= @end)
	begin
		if exists(select * from @tmpTable as t where t.Date = @start)
		begin
			insert into @pomogite
				select Time
				from @workingHours
				except
				select Time
				from @tmpTable as t
				where t.Date = @start

			set @start = dateadd(Day,1,@start)
		end
		else
			set @start = dateadd(Day,1,@start)
	end
	
	select distinct t.Date,p.Time
	from @tmpTable as t,@pomogite as p
end


--2.2.6

create proc transferToArchive	
as
begin
	declare @tmp table(BId int,Serv nvarchar(max),totalSum money)
	insert into @tmp
		select Booking.id,STRING_AGG(TypeServis.Name,', ') as 'Servises',sum(Price) as 'totalSum'
		from BookingServices,TypeServis,Booking 
		where TypeServis.id = ServisId and
		BookingId = Booking.id and Date < getdate()
		group by BookingServices.BookingId, Booking.id


	insert into Archive(ClientName,ClientSurname,ClientLastName,ClientPhone,ClientEmail,BarberName,BarberSurname,BarberLastName,
		BarberPhone,BarberEmail,BarberJobPosition,Servises,Date,TotalCost)
		select c.Name, c.Surname, c.LastName, c.Phone, c.Email,
			br.Name, br.Surname, br.LastName, br.Phone, br.Email,
				jp.Name as 'JobPosition', tmp.Serv, b.Date, tmp.totalSum
		from Booking as b
		join Clients as c on c.id = b.ClientId
		join Barbers as br on br.id = b.BarberId
		join JobPosition as jp on jp.id = br.JobPositionId
		join @tmp as tmp on tmp.BId = b.id
		where b.Date < getdate()

	delete from Booking where Date < getdate()

end

--2.2.7

create trigger dontBookOnResPlac
on Booking
for insert
as
begin
	declare @count int = (select count(*)
		from Booking,inserted
		where Booking.BarberId = inserted.BarberId and
		Booking.Date = inserted.Date and Booking.Time = inserted.Time)
	if(@count > 1)
	begin
		print('Эта ячейка уже занята')
		rollback transaction
	end
	else
	begin
		print('Запись успешная')
	end
end

--2.2.8

create trigger dontAddJunBarberMore5
on Barbers
for insert
as
begin
	declare @count int = (select count(*)
		from Barbers,JobPosition
		where Barbers.JobPositionId = JobPosition.id and
		Barbers.JobPositionId = 
			(select id from JobPosition where Name = 'джуниор-барбер'))
	if(@count > 5)
	begin
		print('Нельзя добавить нового если в салоне уже работают 5 джуниор-барберов')
		rollback transaction
	end
end

--2.2.9

create function custWhoNotProvFeedbackAndRaiting()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50))
as
begin
	declare @tmp table(CId int)
	insert into @tmp
		select id
		from Clients
		except
		select ClientId
		from Raitings
		union
		select ClientId
		from Feedbacks

	insert into @result
		select Name,Surname,LastName,Phone,Email
		from Clients
		join @tmp on CId = id

	return
end

--2.2.10

create function clientsWhoNotViditMoreYear()
returns @result table(Name nvarchar(50),Surname nvarchar(50),LastName nvarchar(50),
							Phone nvarchar(50),Email nvarchar(50))
as
begin
	insert into @result
		select ClientName,ClientSurname,ClientLastName,ClientPhone,ClientEmail
		from Archive
		where Date < Dateadd(YEAR,-1,GETDATE())
	return
end


