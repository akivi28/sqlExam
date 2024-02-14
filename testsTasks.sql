use Barbershop

--1.1
select * from nameOfAllBarbers()
--1.2
select * from infAboutSeniorBarbers()
--1.3
select * from infAboutBarbWhoCanProvideBeardShave()
--1.4
select * from infAboutBarbWhoCanProvideParticularService('Мужская стрижка длинные волосы')
--1.5
select * from infAboutBarbWhoWorkingMore(5)
--1.6
select * from countSeniorAndJuniorBarbers()
--1.7
select * from regularCustomer(10)
--1.8

select *
from Barbers where JobPositionId = (select id from JobPosition where Name = 'чиф-барбер')

delete from Barbers where Name = 'Иван' and Surname = 'Козлов'

insert into Barbers(Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPositionId)
values('Петр','Петров','Алексеевич','549378738347589354','jsdfgkjskf@gmail.com','2000-01-01','2017-02-02',1)

delete from Barbers where Name = 'Петр' and Surname = 'Петров'

--1.9

insert into Barbers(Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPositionId)
values('Андрей','Петров','Алексеевич','+37263726376376','dfghjkl@gmail.com','2005-01-01','2017-02-02',1)

--2.1.1
select * from longestBarber()

--2.1.2
select * from barbThatServedMaxCustomersInRange('2023-05-10','2023-05-15')

--2.1.3
select * from clientVisitBarberShopMaxNumOfTimes()

--2.1.4
select * from clientWhoSpentMaxMoney()

--2.1.5
select * from longestService()

--2.2.1
select * from mostPopularBarb()

--2.2.2
select * from top3OnSum()

--2.2.3
select * from top3OnRaiting()

--2.2.4
exec scheduleForDayOfBarber 'Иван','Козлов','2023-05-28'

--2.2.5
exec freeSlotsOnWeek '2023-05-05','Алексей','Иванов'

--2.2.6

exec transferToArchive

select *
from Archive

select *
from Booking

--2.2.7

select Barbers.Name,Barbers.Surname,Booking.Date,Booking.Time
from Booking,Barbers
where BarberId = Barbers.id and
	Date = '2023-05-27' and Time = '14:00'

insert into Booking(BarberId,ClientId,Date,Time)
values
((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-27','14:00')



--2.2.8

insert into Barbers(Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPositionId)
values
('Олег', 'Дмитриев', 'Иванович', '380675678901', 'dan123@example.com', '1988-05-05', '2020-01-22',
	(select id from JobPosition where Name = 'джуниор-барбер'))

select *
from Barbers
where JobPositionId = 3

--2.2.9

select * from custWhoNotProvFeedbackAndRaiting()

--2.2.10

select * from clientsWhoNotViditMoreYear()