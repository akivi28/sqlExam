use master
go
create database [Barbershop]
go
use [Barbershop]
go
create table [JobPosition]
(
	[id]int not null identity(1,1) primary key,
	[Name]nvarchar(100) not null
)
go
create table [Barbers]
(
	[id]int not null identity(1,1) primary key,
	[Name]nvarchar(100) not null,
	[Surname]nvarchar(100) not null,
	[LastName]nvarchar(100) not null,
	[Phone]nvarchar(100) not null,
	[Email]nvarchar(100) not null,
	[DateOfBirth]date not null,
	[StartWorkingDate]date not null,
	[JobPositionId]int not null
)
go
create table [TypeServis]
(
	[id]int not null identity(1,1) primary key,
	[Name]nvarchar(100) not null,
	[Price]money not null,
	[TimeDuration]time(0) not null
)
go
create table [BarbersServices]
(
	[id]int not null identity(1,1) primary key,
	[BarberId]int,
	[TypeServisId]int
)
go
create table [Clients]
(
	[id]int not null identity(1,1) primary key,
	[Name]nvarchar(100) not null,
	[Surname]nvarchar(100) not null,
	[LastName]nvarchar(100) not null,
	[Phone]nvarchar(100) not null,
	[Email]nvarchar(100) not null
)
go
create table [Feedbacks]
(
	[id]int not null identity(1,1) primary key,
	[BarberId]int,
	[ClientId]int,
	[Text]nvarchar(max)
)
go
create table [Raitings]
(
	[id]int not null identity(1,1) primary key,
	[BarberId]int,
	[ClientId]int,
	[Raiting]int
)
go
create table [Booking]
(
	[id]int not null identity(1,1) primary key,
	[BarberId]int,
	[ClientId]int,
	[Date]date not null,
	[Time]time(0) not null
)
go 
create table [Archive]
(
	[id]int not null identity(1,1) primary key,
	[ClientName]nvarchar(100) not null,
	[ClientSurname]nvarchar(100) not null,
	[ClientLastName]nvarchar(100) not null,
	[ClientPhone]nvarchar(100) not null,
	[ClientEmail]nvarchar(100) not null,
	[BarberName]nvarchar(100) not null,
	[BarberSurname]nvarchar(100) not null,
	[BarberLastName]nvarchar(100) not null,
	[BarberPhone]nvarchar(100) not null,
	[BarberEmail]nvarchar(100) not null,
	[BarberJobPosition]nvarchar(100) not null,
	[Servises]nvarchar(max) not null,
	[Date]date not null,
	[TotalCost]money not null,
	[Raiting]int,
	[Feedback]nvarchar(max)
)
go
create table [BookingServices]
(
	[id]int not null identity(1,1) primary key,
	[BookingId]int not null,
	[ServisId]int not null
)
go
alter table [Barbers]
add foreign key ([JobPositionId]) references [JobPosition]([Id])
on delete cascade
on update cascade
go

alter table [BarbersServices]
add foreign key ([BarberId]) references [Barbers]([Id])
on delete cascade
on update cascade
go

alter table [BarbersServices]
add foreign key ([TypeServisId]) references [TypeServis]([Id])
on delete cascade
on update cascade
go

alter table [Feedbacks]
add foreign key ([BarberId]) references [Barbers]([Id])
on delete cascade
on update cascade
go

alter table [Feedbacks]
add foreign key ([ClientId]) references [Clients]([Id])
on delete cascade
on update cascade
go

alter table [Raitings]
add foreign key ([BarberId]) references [Barbers]([Id])
on delete cascade
on update cascade
go

alter table [Raitings]
add foreign key ([ClientId]) references [Clients]([Id])
on delete cascade
on update cascade
go

alter table [Booking]
add foreign key ([BarberId]) references [Barbers]([Id])
on delete cascade
on update cascade
go

alter table [Booking]
add foreign key ([ClientId]) references [Clients]([Id])
on delete cascade
on update cascade
go

alter table [BookingServices]
add foreign key ([BookingId]) references [Booking]([Id])
on delete cascade
on update cascade
go

alter table [BookingServices]
add foreign key ([ServisId]) references [TypeServis]([Id])
on delete cascade
on update cascade