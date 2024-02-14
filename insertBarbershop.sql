use Barbershop
go
insert into JobPosition(Name)
values('���-������'),('������-������'),('�������-������')
go
insert into TypeServis(Name,Price,TimeDuration)
values('������� �������', 550, '01:00'),
	  ('������������� ������', 350, '00:45'),
	  ('������� �������', 450, '00:50'),
	  ('������������ ������ ������', 450, '00:40'),
	  ('�������������� ������', 600, '00:30'),
	  ('������� ������� ������� ������', 650, '01:20'),
	  ('��������� ������� � ��������', 500, '00:25'),
	  ('�������', 150, '00:15'),
	  ('������� ����', 150, '00:25')
go
insert into Barbers(Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPositionId)
values ('����','������','���������','380679403696','ivankozlov@gmail.com','1985-04-23','2014-05-01',(select id from JobPosition where Name = '���-������')),
	   ('����', '������', '����������', '380669988776', 'ivan.petrov@example.com', '1990-05-10', '2017-02-14', (select id from JobPosition where Name = '������-������')),
       ('�������', '������', '���������', '380668765432', 'alex.ivanov@example.com', '1987-08-22', '2013-04-01', (select id from JobPosition where Name = '������-������')),
       ('�����', '��������', '���������', '380677778899', 'elena.sidorova@example.com', '1995-12-01', '2018-05-15', (select id from JobPosition where Name = '������-������')),
       ('�������', '�������', '�������������', '380666666666', 'dmitry.smirnov@example.com', '1985-11-27', '2019-02-01',(select id from JobPosition where Name = '�������-������')),
       ('������', '���������', '����������', '380670123456', 'ksenia.kuznetsova@example.com', '1993-04-18', '2021-03-07', (select id from JobPosition where Name = '�������-������')),
	   ('���������', '�����������', '�������������', '380674567890', 'alexandrov@example.com', '1992-04-04', '2020-01-01', (select id from JobPosition where Name = '�������-������')),
	   ('�������', '��������', '����������', '380675678901', 'dmitriev@example.com', '1988-05-05', '2020-01-22', (select id from JobPosition where Name = '�������-������'))
go
insert into BarbersServices(BarberId,TypeServisId)
values ((select id from Barbers where Name = '�������' and Surname = '��������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '�������' and Surname = '��������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '�������' and Surname = '��������'),(select id from TypeServis where Name='�������')),

	   ((select id from Barbers where Name = '���������' and Surname = '�����������'),(select id from TypeServis where Name='������������� ������')),
	   ((select id from Barbers where Name = '���������' and Surname = '�����������'),(select id from TypeServis where Name='������������ ������ ������')),
	   ((select id from Barbers where Name = '���������' and Surname = '�����������'),(select id from TypeServis where Name='������� ����')),

	   ((select id from Barbers where Name = '������' and Surname = '���������'),(select id from TypeServis where Name='�������������� ������')),
	   ((select id from Barbers where Name = '������' and Surname = '���������'),(select id from TypeServis where Name='������� ������� ������� ������')),
	   ((select id from Barbers where Name = '������' and Surname = '���������'),(select id from TypeServis where Name='��������� ������� � ��������')),

	   ((select id from Barbers where Name = '�������' and Surname = '�������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '�������' and Surname = '�������'),(select id from TypeServis where Name='������� ����')),
	   ((select id from Barbers where Name = '�������' and Surname = '�������'),(select id from TypeServis where Name='��������� ������� � ��������')),

	   ((select id from Barbers where Name = '�����' and Surname = '��������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '�����' and Surname = '��������'),(select id from TypeServis where Name='������� ����')),
	   ((select id from Barbers where Name = '�����' and Surname = '��������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '�����' and Surname = '��������'),(select id from TypeServis where Name='�������')),
	   ((select id from Barbers where Name = '�����' and Surname = '��������'),(select id from TypeServis where Name='��������� ������� � ��������')),

	   ((select id from Barbers where Name = '�������' and Surname = '������'),(select id from TypeServis where Name='������������� ������')),
	   ((select id from Barbers where Name = '�������' and Surname = '������'),(select id from TypeServis where Name='������������ ������ ������')),
	   ((select id from Barbers where Name = '�������' and Surname = '������'),(select id from TypeServis where Name='�������������� ������')),
	   ((select id from Barbers where Name = '�������' and Surname = '������'),(select id from TypeServis where Name='�������')),
	   ((select id from Barbers where Name = '�������' and Surname = '������'),(select id from TypeServis where Name='������� ������� ������� ������')),

	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������������� ������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������������ ������ ������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������� ����')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������� �������')),

	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������������� ������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������� �������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������������ ������ ������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='�������������� ������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������� ������� ������� ������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='��������� ������� � ��������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='�������')),
	   ((select id from Barbers where Name = '����' and Surname = '������'),(select id from TypeServis where Name='������� ����'))
go	   
insert into Clients(Name, Surname, LastName, Phone, Email)
values ('����', '������', '����������', '380681234567', 'ivan_petrov@gmail.com'),
	   ('����', '�������', '����������', '380679876543', 'petr_sidorov@gmail.com'),
	   ('�������', '������', '��������', '380671234567', 'aleksey_ivanov@gmail.com'),
	   ('�������', '�������', '���������', '380661234567', 'dmitriy_smirnov@gmail.com'),
	   ('�������', '��������', '����������', '380651234567', 'vasiliy_kuznetsov@gmail.com'),
	   ('������', '�������', '�������������', '380641234567', 'andrey_fedorov@gmail.com'),
	   ('������', '�������', '���������', '380631234567', 'sergey_morozov@gmail.com'),
	   ('������', '������', '����������', '380621234567', 'maxim_volkov@gmail.com'),
	   ('�����', '�������', '��������', '380611234567', 'denis_andreev@gmail.com'),
	   ('�������', '�������', '����������', '380601234567', 'evgeniy_lebedev@gmail.com'),
	   ('����', '�������', '����������', '380689876543', 'ilya_sokolov@gmail.com'),
	   ('������', '������', '����������', '380679812345', 'mihail_kozlov@gmail.com'),
	   ('�����', '�������', '��������', '380669876543', 'anton_novikov@gmail.com'),
	   ('�����', '�������', '�������������', '380659876543', 'artem_makarov@gmail.com'),
	   ('��������', '�������', '���������', '380649876543', 'vladimir_zakharov@gmail.com'),
	   ('������', '�������', '��������', '380639876543', 'nikita_shirokov@gmail.com'),
	   ('�����', '�������', '����������', '380629876543', 'roman_kalinin@gmail.com'),
	   ('�������', '���������', '���������', '380619876543', 'georgiy_melnikov@gmail.com'),
	   ('����', '�������', '����������', '380609876543', 'yuriy_romanov@gmail.com'),
	   ('����', '��������', '��������', '380699876543', 'oleg_vasiliev@gmail.com'),
	   ('������', '�������', '���������', '+380936481237', 'smirnov_maxim@gmail.com'),
	   ('�����', '��������', '�������������', '+380673498120', 'mikhailov_igor@gmail.com'),
	   ('����', '������', '����������', '+380982341561', 'ivanov_artem@gmail.com'),
	   ('���������', '��������', '���������', '+380975814562', 'kuznetsov_alex@gmail.com'),
	   ('������', '�������', '�����������', '+380956128743', 'sokolov_mikhail@gmail.com'),
	   ('�������', '�����', '����������', '+380634218097', 'popov_eugene@gmail.com'),
	   ('������', '�������', '����������', '+380972361489', 'lebedev_sergei@gmail.com'),
	   ('�����', '������', '��������', '+380958321456', 'kozlov_denis@gmail.com'),
	   ('������', '�������', '��������', '+380679320867', 'novikov_nikita@gmail.com'),
	   ('������', '��������', '������������', '+380976542321', 'solovyov_andrey@gmail.com'),
	   ('����', '��������', '�������������', '+380936421567', 'vasiliev_ivan@gmail.com'),
	   ('������', '������', '���������', '+380973214569', 'zaytsev_maxim@gmail.com'),
	   ('����', '�������', '����������', '+380967814329', 'kalinin_artem@gmail.com'),
	   ('�������', '���������', '�����������', '+380958732140', 'grigoriev_dmitry@gmail.com'),
	   ('���������', '�������', '���������', '+380972014365', 'voronin_vladislav@gmail.com'),
	   ('�������', '������', '��������', '+380986310754', 'frolov_alexei@gmail.com'),
	   ('����', '�����', '����������', '+380978312045', 'zhukov_ilya@gmail.com'),
	   ('������', '�����', '����������', '+380936587423', 'orlov_mikhail@gmail.com'),
	   ('����', '������', '����������', '+380979031476', 'petrov_egor@gmail.com'),
	   ('���������', '�������', '�������������', '+380973216458', 'sidorov_alexander@gmail.com')
go
insert into Raitings(ClientId,BarberId,Raiting)
values  ((select id from Clients where Name = '����' and Surname = '������'),
		(select id from Barbers where Name = '����' and Surname = '������'),
		5),

		((select id from Clients where Name = '������' and Surname = '�����'),
		(select id from Barbers where Name = '����' and Surname = '������'),
		4),

		((select id from Clients where Name = '������' and Surname = '������'),
		(select id from Barbers where Name = '����' and Surname = '������'),
		4),

		((select id from Clients where Name = '���������' and Surname = '��������'),
		(select id from Barbers where Name = '����' and Surname = '������'),
		3),

		((select id from Clients where Name = '�����' and Surname = '������'),
		(select id from Barbers where Name = '����' and Surname = '������'),
		2),

		((select id from Clients where Name = '���������' and Surname = '�������'),
		(select id from Barbers where Name = '�������' and Surname = '������'),
		2),

		((select id from Clients where Name = '�������' and Surname = '���������'),
		(select id from Barbers where Name = '�������' and Surname = '������'),
		5),

		((select id from Clients where Name = '�������' and Surname = '���������'),
		(select id from Barbers where Name = '�����' and Surname = '��������'),
		4),

		((select id from Clients where Name = '����' and Surname = '�����'),
		(select id from Barbers where Name = '�����' and Surname = '��������'),
		5),

	    ((select id from Clients where Name = '����' and Surname = '�������'),
		(select id from Barbers where Name = '�������' and Surname = '�������'),
		1),

		((select id from Clients where Name = '������' and Surname = '�������'),
		(select id from Barbers where Name = '�������' and Surname = '�������'),
		3),

		((select id from Clients where Name = '������' and Surname = '�������'),
		(select id from Barbers where Name = '������' and Surname = '���������'),
		4),

		((select id from Clients where Name = '���������' and Surname = '�������'),
		(select id from Barbers where Name = '������' and Surname = '���������'),
		5),

		((select id from Clients where Name = '�����' and Surname = '��������'),
		(select id from Barbers where Name = '������' and Surname = '���������'),
		4),

		((select id from Clients where Name = '����' and Surname = '��������'),
		(select id from Barbers where Name = '���������' and Surname = '�����������'),
		3),

		((select id from Clients where Name = '�����' and Surname = '�������'),
		(select id from Barbers where Name = '���������' and Surname = '�����������'),
		4),

		((select id from Clients where Name = '����' and Surname = '������'),
		(select id from Barbers where Name = '���������' and Surname = '�����������'),
		5),

		((select id from Clients where Name = '������' and Surname = '�������'),
		(select id from Barbers where Name = '�������' and Surname = '��������'),
		3),

		((select id from Clients where Name = '������' and Surname = '��������'),
		(select id from Barbers where Name = '�������' and Surname = '��������'),
		2),

		((select id from Clients where Name = '����' and Surname = '��������'),
		(select id from Barbers where Name = '�������' and Surname = '��������'),
		5)


go
insert into Feedbacks(ClientId,BarberId,Text)
values  ((select id from Clients where Name = '����' and Surname = '������'),
		(select id from Barbers where Name = '����' and Surname = '������'),
		'�������� ������! ����� ������� ����������� �������.'),

		((select id from Clients where Name = '�����' and Surname = '������'),
		(select id from Barbers where Name = '����' and Surname = '������'),
		'������� ������, ��������� ����� ��� �������'),

		((select id from Clients where Name = '���������' and Surname = '�������'),
		(select id from Barbers where Name = '�������' and Surname = '������'),
		'���������� ��� ��������, ������ ����� ��������'),

		((select id from Clients where Name = '����' and Surname = '�����'),
		(select id from Barbers where Name = '�����' and Surname = '��������'),
		'�������� �������'),

		((select id from Clients where Name = '����' and Surname = '�������'),
		(select id from Barbers where Name = '�������' and Surname = '�������'),
		'�������������, ��� ���� ��������'),

		((select id from Clients where Name = '���������' and Surname = '�������'),
		(select id from Barbers where Name = '������' and Surname = '���������'),
		'������� ������, ������� ����������� �������')
go
insert into Booking(BarberId,ClientId,Date,Time)
values ((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '����' and Surname = '������'),
		'2023-05-01','10:00'),

		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '����' and Surname = '�������'),
		'2023-05-01','12:00'),

		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '�������' and Surname = '�������'),
		'2023-05-01','11:00'),

		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '�������' and Surname = '��������'),
		'2023-05-01','13:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '������' and Surname = '�������'),
		'2023-05-01','09:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '������' and Surname = '������'),
		'2023-05-01','13:00'),

		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '�������' and Surname = '������'),
		'2023-05-02','15:00'),

		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '�������' and Surname = '�������'),
		'2023-05-02','17:00'),
		
		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '������' and Surname = '�������'),
		'2023-05-02','16:00'),

		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '����' and Surname = '�������'),
		'2023-05-02','09:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '�����' and Surname = '�������'),
		'2023-05-02','17:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '������' and Surname = '������'),
		'2023-05-02','18:00'),

		((select id from Barbers where Name = '�������' and Surname = '������'),
		(select id from Clients where Name = '�����' and Surname = '�������'),
		'2023-05-03','10:00'),

		((select id from Barbers where Name = '�������' and Surname = '������'),
		(select id from Clients where Name = '�����' and Surname = '�������'),
		'2023-05-03','13:00'),

		((select id from Barbers where Name = '�����' and Surname = '��������'),
		(select id from Clients where Name = '��������' and Surname = '�������'),
		'2023-05-03','11:00'),

		((select id from Barbers where Name = '�����' and Surname = '��������'),
		(select id from Clients where Name = '������' and Surname = '�������'),
		'2023-05-03','15:00'),

		((select id from Barbers where Name = '�������' and Surname = '�������'),
		(select id from Clients where Name = '�����' and Surname = '�������'),
		'2023-05-03','17:00'),

		((select id from Barbers where Name = '�������' and Surname = '�������'),
		(select id from Clients where Name = '�������' and Surname = '���������'),
		'2023-05-03','18:00'),

		((select id from Barbers where Name = '������' and Surname = '���������'),
		(select id from Clients where Name = '����' and Surname = '�������'),
		'2023-05-04','10:00'),

		((select id from Barbers where Name = '������' and Surname = '���������'),
		(select id from Clients where Name = '����' and Surname = '��������'),
		'2023-05-04','14:00'),

		((select id from Barbers where Name = '���������' and Surname = '�����������'),
		(select id from Clients where Name = '������' and Surname = '�������'),
		'2023-05-04','11:00'),

		((select id from Barbers where Name = '���������' and Surname = '�����������'),
		(select id from Clients where Name = '�����' and Surname = '��������'),
		'2023-05-04','15:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '����' and Surname = '������'),
		'2023-05-04','13:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '���������' and Surname = '��������'),
		'2023-05-04','16:00')

go
insert into Booking(BarberId,ClientId,Date,Time)
values ((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '������' and Surname = '�������'),
		'2023-05-05','09:00'),

		((select id from Barbers where Name = '����' and Surname = '������'),
		(select id from Clients where Name = '�������' and Surname = '�����'),
		'2023-05-05','14:00'),

		((select id from Barbers where Name = '���������' and Surname = '�����������'),
		(select id from Clients where Name = '������' and Surname = '�������'),
		'2023-05-05','11:00'),

		((select id from Barbers where Name = '���������' and Surname = '�����������'),
		(select id from Clients where Name = '�����' and Surname = '������'),
		'2023-05-05','16:00'),

		((select id from Barbers where Name = '�������' and Surname = '�������'),
		(select id from Clients where Name = '������' and Surname = '�������'),
		'2023-05-05','12:00'),

		((select id from Barbers where Name = '�������' and Surname = '�������'),
		(select id from Clients where Name = '������' and Surname = '��������'),
		'2023-05-05','15:00'),

		((select id from Barbers where Name = '������' and Surname = '���������'),
		(select id from Clients where Name = '����' and Surname = '��������'),
		'2023-05-06','10:00'),

		((select id from Barbers where Name = '������' and Surname = '���������'),
		(select id from Clients where Name = '������' and Surname = '������'),
		'2023-05-06','17:00'),

		((select id from Barbers where Name = '�����' and Surname = '��������'),
		(select id from Clients where Name = '����' and Surname = '�������'),
		'2023-05-06','12:00'),

		((select id from Barbers where Name = '�����' and Surname = '��������'),
		(select id from Clients where Name = '�������' and Surname = '���������'),
		'2023-05-06','14:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '���������' and Surname = '�������'),
		'2023-05-06','15:00'),

		((select id from Barbers where Name = '�������' and Surname = '��������'),
		(select id from Clients where Name = '�������' and Surname = '������'),
		'2023-05-06','16:00')
go
insert into Booking(BarberId,ClientId,Date,Time)
values
((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-7','13:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-7','13:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '�����'),
'2023-5-7','16:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-7','11:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-7','16:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-7','10:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-7','16:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-7','13:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-7','9:00')

go
insert into Booking(BarberId,ClientId,Date,Time)
values
((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-8','12:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-8','17:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '�����' and Surname = '��������'),
'2023-5-8','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-8','16:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-8','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-8','12:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-8','15:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-8','14:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-8','9:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-9','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-9','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-9','9:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-9','17:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-9','12:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-9','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-9','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-9','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�����'),
'2023-5-9','15:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-10','10:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-10','9:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-10','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-10','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-10','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-10','14:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-10','9:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '��������'),
'2023-5-10','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-10','16:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-11','13:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-11','11:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-11','16:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-11','9:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-11','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-11','12:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�����'),
'2023-5-11','10:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-11','17:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-11','13:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�����' and Surname = '������'),
'2023-5-12','16:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-12','9:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '�����'),
'2023-5-12','16:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-12','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-12','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-12','15:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-12','15:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�����'),
'2023-5-12','14:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-12','16:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-13','12:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-13','13:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-13','13:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-13','12:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-13','13:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-13','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-13','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '������' and Surname = '�����'),
'2023-5-13','16:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-13','9:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '�����' and Surname = '������'),
'2023-5-14','13:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-14','12:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-14','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-14','14:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-14','14:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-14','10:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-14','10:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-14','9:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-14','10:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�����'),
'2023-5-15','12:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-15','17:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-15','10:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-15','15:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-15','9:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-15','12:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '�����' and Surname = '������'),
'2023-5-15','13:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-16','13:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-16','10:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-16','15:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-16','13:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-16','10:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-16','17:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-16','11:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-16','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '��������'),
'2023-5-16','15:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '��������'),
'2023-5-17','13:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-17','16:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-17','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '��������'),
'2023-5-17','9:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�����'),
'2023-5-17','11:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-17','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '��������'),
'2023-5-17','12:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-17','17:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '������' and Surname = '�����'),
'2023-5-17','15:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-18','12:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-18','13:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '�����'),
'2023-5-18','17:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-18','12:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '��������'),
'2023-5-18','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-18','13:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '��������'),
'2023-5-18','15:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-18','16:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '������'),
'2023-5-18','11:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '��������'),
'2023-5-19','9:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-19','15:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-19','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-19','10:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-19','15:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-19','13:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '��������'),
'2023-5-19','16:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '���������' and Surname = '��������'),
'2023-5-19','13:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-19','17:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '�����'),
'2023-5-20','16:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-20','15:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-20','10:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-20','16:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-20','16:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-20','9:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-20','12:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-20','11:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '��������'),
'2023-5-20','16:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-21','10:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-21','17:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '�����' and Surname = '������'),
'2023-5-21','14:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-21','17:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-21','10:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�����'),
'2023-5-21','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-21','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '��������'),
'2023-5-21','9:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-21','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-22','16:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-22','14:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-22','14:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-22','10:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-22','10:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-22','14:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '������'),
'2023-5-22','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-22','12:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-22','9:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-23','10:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-23','9:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-23','15:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-23','9:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-23','14:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-23','12:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-23','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-23','12:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-23','17:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-24','9:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�����'),
'2023-5-24','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-24','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-24','14:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-24','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-24','17:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-24','14:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-24','17:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-24','17:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-25','17:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-25','16:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-25','11:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-25','17:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-25','17:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-25','11:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-25','14:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '������'),
'2023-5-25','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-25','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '��������'),
'2023-5-26','17:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-26','16:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-26','13:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '�����' and Surname = '��������'),
'2023-5-26','12:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '������'),
'2023-5-26','10:00'),

((select id from Barbers where Name = '�������' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-26','12:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�����'),
'2023-5-26','14:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-26','17:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-26','9:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-27','13:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-27','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '��������'),
'2023-5-27','17:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '�������' and Surname = '������'),
'2023-5-27','12:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '������' and Surname = '�����'),
'2023-5-27','16:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-27','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '��������'),
'2023-5-27','12:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-27','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-27','17:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-28','10:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�����'),
'2023-5-28','11:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-28','17:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-28','9:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-28','9:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-28','17:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-28','17:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '���������' and Surname = '�������'),
'2023-5-28','11:00'),

((select id from Barbers where Name = '�������' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-28','11:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-29','16:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-29','10:00'),

((select id from Barbers where Name = '������' and Surname = '���������'),
(select id from Clients where Name = '��������' and Surname = '�������'),
'2023-5-29','13:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-29','13:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-29','11:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '�������' and Surname = '���������'),
'2023-5-29','13:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '�����' and Surname = '��������'),
'2023-5-29','10:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '����' and Surname = '�������'),
'2023-5-29','10:00'),

((select id from Barbers where Name = '�������' and Surname = '�������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-29','16:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-30','15:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-30','11:00'),

((select id from Barbers where Name = '����' and Surname = '������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-30','9:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�������' and Surname = '�������'),
'2023-5-30','9:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '����' and Surname = '������'),
'2023-5-30','9:00'),

((select id from Barbers where Name = '���������' and Surname = '�����������'),
(select id from Clients where Name = '�����' and Surname = '��������'),
'2023-5-30','10:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '����' and Surname = '��������'),
'2023-5-30','15:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '������' and Surname = '�������'),
'2023-5-30','17:00'),

((select id from Barbers where Name = '�����' and Surname = '��������'),
(select id from Clients where Name = '�����' and Surname = '�������'),
'2023-5-30','14:00')

go

insert into BookingServices(BookingId,ServisId)
values
((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-01' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-01' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-01' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-01' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-01' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-01' and Time = '11:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-01' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-01' and Time = '09:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-01' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-01' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-02' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-02' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-02' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-02' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-02' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-02' and Time = '09:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-02' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-02' and Time = '17:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-02' and Time = '18:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-03' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-03' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-03' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-03' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-03' and Time = '11:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-03' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-03' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-03' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-03' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-03' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-03' and Time = '18:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-03' and Time = '18:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-04' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-04' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-04' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-04' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-04' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-04' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-04' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-04' and Time = '16:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-04' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-04' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-05' and Time = '09:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-05' and Time = '14:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-05' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-05' and Time = '16:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-05' and Time = '12:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-05' and Time = '12:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-05' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '��������')
and Date = '2023-05-05' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '��������')
and Date = '2023-05-05' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '��������')
and Date = '2023-05-05' and Time = '15:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-06' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-06' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-06' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-06' and Time = '17:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-06' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-06' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-06' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-06' and Time = '14:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-06' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-06' and Time = '15:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-06' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-06' and Time = '16:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-06' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-06' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-07' and Time = '11:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-07' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-07' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-07' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-07' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-07' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-07' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-08' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-08' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-08' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-08' and Time = '16:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-08' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-08' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-08' and Time = '09:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-09' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-09' and Time = '09:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-09' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-09' and Time = '17:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-09' and Time = '12:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-09' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-09' and Time = '13:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-09' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-10' and Time = '13:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-10' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-10' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-10' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-10' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-10' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-10' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-10' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-10' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-10' and Time = '16:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-10' and Time = '16:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-10' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-11' and Time = '11:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-11' and Time = '16:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-11' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-11' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-11' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-11' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-12' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-12' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-12' and Time = '09:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-12' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-12' and Time = '13:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-12' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-12' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-12' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-13' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-13' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-13' and Time = '09:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-14' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-14' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '12:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-14' and Time = '09:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-15' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-15' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-15' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-15' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-15' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-15' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-15' and Time = '09:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-15' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-15' and Time = '12:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-15' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-15' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-16' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-16' and Time = '17:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-16' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-16' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-16' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-16' and Time = '11:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '��������')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-17' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-17' and Time = '09:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-17' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-17' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-17' and Time = '11:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-17' and Time = '11:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-17' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-17' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-17' and Time = '12:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-17' and Time = '12:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-17' and Time = '12:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-17' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-17' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-17' and Time = '17:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-17' and Time = '15:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-17' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-18' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-18' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-18' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-18' and Time = '17:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-18' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-18' and Time = '12:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-18' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-18' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-18' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '��������')
and Date = '2023-05-19' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-19' and Time = '15:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-19' and Time = '15:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-19' and Time = '16:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-19' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-19' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-19' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-19' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-20' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-20' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-20' and Time = '15:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-20' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-20' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-20' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-20' and Time = '09:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-20' and Time = '09:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-20' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-20' and Time = '12:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-20' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-20' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-21' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-21' and Time = '14:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-21' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-21' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-21' and Time = '09:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-21' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-21' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-22' and Time = '16:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-22' and Time = '16:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-22' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-22' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-22' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-22' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-22' and Time = '12:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-22' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-22' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-23' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-23' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-23' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-24' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-24' and Time = '09:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�����')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-24' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-24' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-24' and Time = '14:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-24' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-24' and Time = '14:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-25' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-25' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-25' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-25' and Time = '14:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-25' and Time = '14:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '������')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '��������')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-26' and Time = '16:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-26' and Time = '16:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-26' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-26' and Time = '13:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-26' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '������')
and Date = '2023-05-26' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-26' and Time = '14:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-26' and Time = '14:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-26' and Time = '14:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-26' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-26' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-27' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '��������')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '��������')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '������')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�����')
and Date = '2023-05-27' and Time = '16:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '��������')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-28' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�����')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '���������' and Surname = '�������')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '��������' and Surname = '�������')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-29' and Time = '11:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-29' and Time = '11:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '���������')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = '��������� ������� � ��������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '�������')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-30' and Time = '11:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�������' and Surname = '�������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '������')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = '�������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '��������')
and Date = '2023-05-30' and Time = '10:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = '�������������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '����' and Surname = '��������')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-30' and Time = '17:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-30' and Time = '17:00:00'),(select id from TypeServis where Name = '������������ ������ ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '������' and Surname = '�������')
and Date = '2023-05-30' and Time = '17:00:00'),(select id from TypeServis where Name = '������� ������� ������� ������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-30' and Time = '14:00:00'),(select id from TypeServis where Name = '������� �������')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-30' and Time = '14:00:00'),(select id from TypeServis where Name = '������� ����')),

((select id from Booking where ClientId = (select id from Clients where Name = '�����' and Surname = '�������')
and Date = '2023-05-30' and Time = '14:00:00'),(select id from TypeServis where Name = '�������'))

go

insert into Archive(ClientName,ClientSurname,ClientLastName,ClientPhone,ClientEmail,BarberName,BarberSurname,BarberLastName,
		BarberPhone,BarberEmail,BarberJobPosition,Servises,Date,TotalCost)

values('������','����','��������','+27438274823','asdfsf@gmail.com',
		'����','������','�������������','+437843873','jhgdsf@gmail.com','�������-������','�������, �������','2021-01-20',500),

	  ('�������','�����','�������������','+3958674543','gdfgdgsds@gmail.com',
		'����','������','�������������','+437843873','jhgdsf@gmail.com','�������-������','������� ����','2022-04-04',200)
