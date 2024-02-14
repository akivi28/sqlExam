use Barbershop
go
insert into JobPosition(Name)
values('чиф-барбер'),('синьор-барбер'),('джуниор-барбер')
go
insert into TypeServis(Name,Price,TimeDuration)
values('Мужская стрижка', 550, '01:00'),
	  ('Моделирование бороды', 350, '00:45'),
	  ('Детская стрижка', 450, '00:50'),
	  ('Традиционное бритье бороды', 450, '00:40'),
	  ('Камуфлирование седины', 600, '00:30'),
	  ('Мужская стрижка длинные волосы', 650, '01:20'),
	  ('Коррекция стрижки с укладкой', 500, '00:25'),
	  ('Укладка', 150, '00:15'),
	  ('Стрижка усов', 150, '00:25')
go
insert into Barbers(Name,Surname,LastName,Phone,Email,DateOfBirth,StartWorkingDate,JobPositionId)
values ('Иван','Козлов','Андреевич','380679403696','ivankozlov@gmail.com','1985-04-23','2014-05-01',(select id from JobPosition where Name = 'чиф-барбер')),
	   ('Иван', 'Петров', 'Алексеевич', '380669988776', 'ivan.petrov@example.com', '1990-05-10', '2017-02-14', (select id from JobPosition where Name = 'синьор-барбер')),
       ('Алексей', 'Иванов', 'Андреевич', '380668765432', 'alex.ivanov@example.com', '1987-08-22', '2013-04-01', (select id from JobPosition where Name = 'синьор-барбер')),
       ('Елена', 'Сидорова', 'Андреевна', '380677778899', 'elena.sidorova@example.com', '1995-12-01', '2018-05-15', (select id from JobPosition where Name = 'синьор-барбер')),
       ('Дмитрий', 'Смирнов', 'Александрович', '380666666666', 'dmitry.smirnov@example.com', '1985-11-27', '2019-02-01',(select id from JobPosition where Name = 'джуниор-барбер')),
       ('Ксения', 'Кузнецова', 'Дмитриевна', '380670123456', 'ksenia.kuznetsova@example.com', '1993-04-18', '2021-03-07', (select id from JobPosition where Name = 'джуниор-барбер')),
	   ('Александр', 'Александров', 'Александрович', '380674567890', 'alexandrov@example.com', '1992-04-04', '2020-01-01', (select id from JobPosition where Name = 'джуниор-барбер')),
	   ('Дмитрий', 'Дмитриев', 'Дмитриевич', '380675678901', 'dmitriev@example.com', '1988-05-05', '2020-01-22', (select id from JobPosition where Name = 'джуниор-барбер'))
go
insert into BarbersServices(BarberId,TypeServisId)
values ((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),(select id from TypeServis where Name='Мужская стрижка')),
	   ((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),(select id from TypeServis where Name='Детская стрижка')),
	   ((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),(select id from TypeServis where Name='Укладка')),

	   ((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),(select id from TypeServis where Name='Моделирование бороды')),
	   ((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),(select id from TypeServis where Name='Традиционное бритье бороды')),
	   ((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),(select id from TypeServis where Name='Стрижка усов')),

	   ((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),(select id from TypeServis where Name='Камуфлирование седины')),
	   ((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),(select id from TypeServis where Name='Мужская стрижка длинные волосы')),
	   ((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),(select id from TypeServis where Name='Коррекция стрижки с укладкой')),

	   ((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),(select id from TypeServis where Name='Мужская стрижка')),
	   ((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),(select id from TypeServis where Name='Стрижка усов')),
	   ((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),(select id from TypeServis where Name='Коррекция стрижки с укладкой')),

	   ((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),(select id from TypeServis where Name='Мужская стрижка')),
	   ((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),(select id from TypeServis where Name='Стрижка усов')),
	   ((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),(select id from TypeServis where Name='Детская стрижка')),
	   ((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),(select id from TypeServis where Name='Укладка')),
	   ((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),(select id from TypeServis where Name='Коррекция стрижки с укладкой')),

	   ((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),(select id from TypeServis where Name='Моделирование бороды')),
	   ((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),(select id from TypeServis where Name='Традиционное бритье бороды')),
	   ((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),(select id from TypeServis where Name='Камуфлирование седины')),
	   ((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),(select id from TypeServis where Name='Укладка')),
	   ((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),(select id from TypeServis where Name='Мужская стрижка длинные волосы')),

	   ((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),(select id from TypeServis where Name='Моделирование бороды')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),(select id from TypeServis where Name='Традиционное бритье бороды')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),(select id from TypeServis where Name='Стрижка усов')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),(select id from TypeServis where Name='Мужская стрижка')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),(select id from TypeServis where Name='Детская стрижка')),

	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Мужская стрижка')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Моделирование бороды')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Детская стрижка')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Традиционное бритье бороды')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Камуфлирование седины')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Мужская стрижка длинные волосы')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Коррекция стрижки с укладкой')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Укладка')),
	   ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),(select id from TypeServis where Name='Стрижка усов'))
go	   
insert into Clients(Name, Surname, LastName, Phone, Email)
values ('Иван', 'Петров', 'Алексеевич', '380681234567', 'ivan_petrov@gmail.com'),
	   ('Петр', 'Сидоров', 'Дмитриевич', '380679876543', 'petr_sidorov@gmail.com'),
	   ('Алексей', 'Иванов', 'Петрович', '380671234567', 'aleksey_ivanov@gmail.com'),
	   ('Дмитрий', 'Смирнов', 'Андреевич', '380661234567', 'dmitriy_smirnov@gmail.com'),
	   ('Василий', 'Кузнецов', 'Максимович', '380651234567', 'vasiliy_kuznetsov@gmail.com'),
	   ('Андрей', 'Федоров', 'Александрович', '380641234567', 'andrey_fedorov@gmail.com'),
	   ('Сергей', 'Морозов', 'Денисович', '380631234567', 'sergey_morozov@gmail.com'),
	   ('Максим', 'Волков', 'Михайлович', '380621234567', 'maxim_volkov@gmail.com'),
	   ('Денис', 'Андреев', 'Иванович', '380611234567', 'denis_andreev@gmail.com'),
	   ('Евгений', 'Лебедев', 'Николаевич', '380601234567', 'evgeniy_lebedev@gmail.com'),
	   ('Илья', 'Соколов', 'Дмитриевич', '380689876543', 'ilya_sokolov@gmail.com'),
	   ('Михаил', 'Козлов', 'Васильевич', '380679812345', 'mihail_kozlov@gmail.com'),
	   ('Антон', 'Новиков', 'Игоревич', '380669876543', 'anton_novikov@gmail.com'),
	   ('Артем', 'Макаров', 'Александрович', '380659876543', 'artem_makarov@gmail.com'),
	   ('Владимир', 'Захаров', 'Андреевич', '380649876543', 'vladimir_zakharov@gmail.com'),
	   ('Никита', 'Широков', 'Павлович', '380639876543', 'nikita_shirokov@gmail.com'),
	   ('Роман', 'Калинин', 'Максимович', '380629876543', 'roman_kalinin@gmail.com'),
	   ('Георгий', 'Мельников', 'Сергеевич', '380619876543', 'georgiy_melnikov@gmail.com'),
	   ('Юрий', 'Романов', 'Михайлович', '380609876543', 'yuriy_romanov@gmail.com'),
	   ('Олег', 'Васильев', 'Петрович', '380699876543', 'oleg_vasiliev@gmail.com'),
	   ('Максим', 'Смирнов', 'Андреевич', '+380936481237', 'smirnov_maxim@gmail.com'),
	   ('Игорь', 'Михайлов', 'Александрович', '+380673498120', 'mikhailov_igor@gmail.com'),
	   ('Артём', 'Иванов', 'Викторович', '+380982341561', 'ivanov_artem@gmail.com'),
	   ('Александр', 'Кузнецов', 'Сергеевич', '+380975814562', 'kuznetsov_alex@gmail.com'),
	   ('Михаил', 'Соколов', 'Геннадьевич', '+380956128743', 'sokolov_mikhail@gmail.com'),
	   ('Евгений', 'Попов', 'Дмитриевич', '+380634218097', 'popov_eugene@gmail.com'),
	   ('Сергей', 'Лебедев', 'Валерьевич', '+380972361489', 'lebedev_sergei@gmail.com'),
	   ('Денис', 'Козлов', 'Игоревич', '+380958321456', 'kozlov_denis@gmail.com'),
	   ('Никита', 'Новиков', 'Павлович', '+380679320867', 'novikov_nikita@gmail.com'),
	   ('Андрей', 'Соловьёв', 'Владимирович', '+380976542321', 'solovyov_andrey@gmail.com'),
	   ('Иван', 'Васильев', 'Александрович', '+380936421567', 'vasiliev_ivan@gmail.com'),
	   ('Максим', 'Зайцев', 'Денисович', '+380973214569', 'zaytsev_maxim@gmail.com'),
	   ('Артём', 'Калинин', 'Максимович', '+380967814329', 'kalinin_artem@gmail.com'),
	   ('Дмитрий', 'Григорьев', 'Анатольевич', '+380958732140', 'grigoriev_dmitry@gmail.com'),
	   ('Владислав', 'Воронин', 'Сергеевич', '+380972014365', 'voronin_vladislav@gmail.com'),
	   ('Алексей', 'Фролов', 'Петрович', '+380986310754', 'frolov_alexei@gmail.com'),
	   ('Илья', 'Жуков', 'Викторович', '+380978312045', 'zhukov_ilya@gmail.com'),
	   ('Михаил', 'Орлов', 'Дмитриевич', '+380936587423', 'orlov_mikhail@gmail.com'),
	   ('Егор', 'Петров', 'Максимович', '+380979031476', 'petrov_egor@gmail.com'),
	   ('Александр', 'Сидоров', 'Александрович', '+380973216458', 'sidorov_alexander@gmail.com')
go
insert into Raitings(ClientId,BarberId,Raiting)
values  ((select id from Clients where Name = 'Иван' and Surname = 'Петров'),
		(select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		5),

		((select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
		(select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		4),

		((select id from Clients where Name = 'Максим' and Surname = 'Зайцев'),
		(select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		4),

		((select id from Clients where Name = 'Александр' and Surname = 'Кузнецов'),
		(select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
		3),

		((select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
		(select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
		2),

		((select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
		(select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
		2),

		((select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
		(select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
		5),

		((select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
		(select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
		4),

		((select id from Clients where Name = 'Илья' and Surname = 'Жуков'),
		(select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
		5),

	    ((select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
		(select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
		1),

		((select id from Clients where Name = 'Никита' and Surname = 'Широков'),
		(select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
		3),

		((select id from Clients where Name = 'Андрей' and Surname = 'Федоров'),
		(select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		4),

		((select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
		(select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		5),

		((select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
		(select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		4),

		((select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
		(select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
		3),

		((select id from Clients where Name = 'Роман' and Surname = 'Калинин'),
		(select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
		4),

		((select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
		(select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
		5),

		((select id from Clients where Name = 'Андрей' and Surname = 'Федоров'),
		(select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		3),

		((select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв'),
		(select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		2),

		((select id from Clients where Name = 'Олег' and Surname = 'Васильев'),
		(select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		5)


go
insert into Feedbacks(ClientId,BarberId,Text)
values  ((select id from Clients where Name = 'Иван' and Surname = 'Петров'),
		(select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		'Отличный барбер! Очень доволен результатом стрижки.'),

		((select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
		(select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
		'Ужасный сервис, неудобные места для стрижки'),

		((select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
		(select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
		'Неопрятный вид мастеров, мастер плохо подстриг'),

		((select id from Clients where Name = 'Илья' and Surname = 'Жуков'),
		(select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
		'Сервисом доволен'),

		((select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
		(select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
		'Антисанитария, нет зала ожидания'),

		((select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
		(select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		'Хороший барбер, доволен результатом стрижки')
go
insert into Booking(BarberId,ClientId,Date,Time)
values ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
		'2023-05-01','10:00'),

		((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		(select id from Clients where Name = 'Петр' and Surname = 'Сидоров'),
		'2023-05-01','12:00'),

		((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
		(select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов'),
		'2023-05-01','11:00'),

		((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
		(select id from Clients where Name = 'Василий' and Surname = 'Кузнецов'),
		'2023-05-01','13:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Сергей' and Surname = 'Морозов'),
		'2023-05-01','09:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Максим' and Surname = 'Волков'),
		'2023-05-01','13:00'),

		((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		(select id from Clients where Name = 'Алексей' and Surname = 'Иванов'),
		'2023-05-02','15:00'),

		((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		(select id from Clients where Name = 'Евгений' and Surname = 'Лебедев'),
		'2023-05-02','17:00'),
		
		((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
		(select id from Clients where Name = 'Андрей' and Surname = 'Федоров'),
		'2023-05-02','16:00'),

		((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
		(select id from Clients where Name = 'Илья' and Surname = 'Соколов'),
		'2023-05-02','09:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Денис' and Surname = 'Андреев'),
		'2023-05-02','17:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Михаил' and Surname = 'Козлов'),
		'2023-05-02','18:00'),

		((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
		(select id from Clients where Name = 'Антон' and Surname = 'Новиков'),
		'2023-05-03','10:00'),

		((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
		(select id from Clients where Name = 'Артем' and Surname = 'Макаров'),
		'2023-05-03','13:00'),

		((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
		(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
		'2023-05-03','11:00'),

		((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
		(select id from Clients where Name = 'Никита' and Surname = 'Широков'),
		'2023-05-03','15:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
		(select id from Clients where Name = 'Роман' and Surname = 'Калинин'),
		'2023-05-03','17:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
		(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
		'2023-05-03','18:00'),

		((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
		'2023-05-04','10:00'),

		((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		(select id from Clients where Name = 'Олег' and Surname = 'Васильев'),
		'2023-05-04','14:00'),

		((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
		(select id from Clients where Name = 'Максим' and Surname = 'Смирнов'),
		'2023-05-04','11:00'),

		((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
		(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
		'2023-05-04','15:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
		'2023-05-04','13:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Александр' and Surname = 'Кузнецов'),
		'2023-05-04','16:00')

go
insert into Booking(BarberId,ClientId,Date,Time)
values ((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
		'2023-05-05','09:00'),

		((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
		(select id from Clients where Name = 'Евгений' and Surname = 'Попов'),
		'2023-05-05','14:00'),

		((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
		(select id from Clients where Name = 'Сергей' and Surname = 'Лебедев'),
		'2023-05-05','11:00'),

		((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
		(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
		'2023-05-05','16:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
		(select id from Clients where Name = 'Никита' and Surname = 'Новиков'),
		'2023-05-05','12:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
		(select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв'),
		'2023-05-05','15:00'),

		((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
		'2023-05-06','10:00'),

		((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
		(select id from Clients where Name = 'Максим' and Surname = 'Зайцев'),
		'2023-05-06','17:00'),

		((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
		(select id from Clients where Name = 'Артём' and Surname = 'Калинин'),
		'2023-05-06','12:00'),

		((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
		(select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
		'2023-05-06','14:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
		'2023-05-06','15:00'),

		((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
		(select id from Clients where Name = 'Алексей' and Surname = 'Фролов'),
		'2023-05-06','16:00')
go
insert into Booking(BarberId,ClientId,Date,Time)
values
((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Максим' and Surname = 'Смирнов'),
'2023-5-7','13:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-7','13:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Илья' and Surname = 'Жуков'),
'2023-5-7','16:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-7','11:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-7','16:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-7','10:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-7','16:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
'2023-5-7','13:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
'2023-5-7','9:00')

go
insert into Booking(BarberId,ClientId,Date,Time)
values
((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Алексей' and Surname = 'Фролов'),
'2023-5-8','12:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Михаил' and Surname = 'Козлов'),
'2023-5-8','17:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
'2023-5-8','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-8','16:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Антон' and Surname = 'Новиков'),
'2023-5-8','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
'2023-5-8','12:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-8','15:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Роман' and Surname = 'Калинин'),
'2023-5-8','14:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Денис' and Surname = 'Андреев'),
'2023-5-8','9:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Алексей' and Surname = 'Фролов'),
'2023-5-9','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-9','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
'2023-5-9','9:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Сергей' and Surname = 'Морозов'),
'2023-5-9','17:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Олег' and Surname = 'Васильев'),
'2023-5-9','12:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Никита' and Surname = 'Широков'),
'2023-5-9','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
'2023-5-9','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-9','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
'2023-5-9','15:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Максим' and Surname = 'Зайцев'),
'2023-5-10','10:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Олег' and Surname = 'Васильев'),
'2023-5-10','9:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Петр' and Surname = 'Сидоров'),
'2023-5-10','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Егор' and Surname = 'Петров'),
'2023-5-10','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-10','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Роман' and Surname = 'Калинин'),
'2023-5-10','14:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Андрей' and Surname = 'Федоров'),
'2023-5-10','9:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Александр' and Surname = 'Кузнецов'),
'2023-5-10','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Илья' and Surname = 'Соколов'),
'2023-5-10','16:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Артем' and Surname = 'Макаров'),
'2023-5-11','13:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Максим' and Surname = 'Волков'),
'2023-5-11','11:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Егор' and Surname = 'Петров'),
'2023-5-11','16:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Михаил' and Surname = 'Козлов'),
'2023-5-11','9:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-11','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Алексей' and Surname = 'Иванов'),
'2023-5-11','12:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Илья' and Surname = 'Жуков'),
'2023-5-11','10:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-11','17:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Евгений' and Surname = 'Лебедев'),
'2023-5-11','13:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
'2023-5-12','16:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-12','9:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Илья' and Surname = 'Жуков'),
'2023-5-12','16:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Артём' and Surname = 'Калинин'),
'2023-5-12','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-12','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Егор' and Surname = 'Петров'),
'2023-5-12','15:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-12','15:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Евгений' and Surname = 'Попов'),
'2023-5-12','14:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Алексей' and Surname = 'Иванов'),
'2023-5-12','16:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Артём' and Surname = 'Калинин'),
'2023-5-13','12:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Антон' and Surname = 'Новиков'),
'2023-5-13','13:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-13','13:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-13','12:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Илья' and Surname = 'Соколов'),
'2023-5-13','13:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Егор' and Surname = 'Петров'),
'2023-5-13','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-13','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
'2023-5-13','16:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Алексей' and Surname = 'Фролов'),
'2023-5-13','9:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
'2023-5-14','13:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Никита' and Surname = 'Широков'),
'2023-5-14','12:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов'),
'2023-5-14','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Алексей' and Surname = 'Фролов'),
'2023-5-14','14:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Никита' and Surname = 'Новиков'),
'2023-5-14','14:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Никита' and Surname = 'Широков'),
'2023-5-14','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-14','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-14','9:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
'2023-5-14','10:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
'2023-5-15','12:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Максим' and Surname = 'Волков'),
'2023-5-15','17:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
'2023-5-15','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Андрей' and Surname = 'Федоров'),
'2023-5-15','15:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Илья' and Surname = 'Соколов'),
'2023-5-15','9:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Денис' and Surname = 'Андреев'),
'2023-5-15','12:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
'2023-5-15','13:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
'2023-5-16','13:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Михаил' and Surname = 'Козлов'),
'2023-5-16','10:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев'),
'2023-5-16','15:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
'2023-5-16','13:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
'2023-5-16','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-16','17:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов'),
'2023-5-16','11:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Артем' and Surname = 'Макаров'),
'2023-5-16','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв'),
'2023-5-16','15:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Василий' and Surname = 'Кузнецов'),
'2023-5-17','13:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Алексей' and Surname = 'Иванов'),
'2023-5-17','16:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Сергей' and Surname = 'Морозов'),
'2023-5-17','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Александр' and Surname = 'Кузнецов'),
'2023-5-17','9:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
'2023-5-17','11:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Роман' and Surname = 'Калинин'),
'2023-5-17','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Александр' and Surname = 'Кузнецов'),
'2023-5-17','12:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-17','17:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
'2023-5-17','15:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Сергей' and Surname = 'Морозов'),
'2023-5-18','12:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-18','13:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Евгений' and Surname = 'Попов'),
'2023-5-18','17:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-18','12:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
'2023-5-18','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-18','13:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Василий' and Surname = 'Кузнецов'),
'2023-5-18','15:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-18','16:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
'2023-5-18','11:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв'),
'2023-5-19','9:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Максим' and Surname = 'Волков'),
'2023-5-19','15:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Илья' and Surname = 'Соколов'),
'2023-5-19','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-19','10:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-19','15:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-19','13:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Василий' and Surname = 'Кузнецов'),
'2023-5-19','16:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Александр' and Surname = 'Кузнецов'),
'2023-5-19','13:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
'2023-5-19','17:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Евгений' and Surname = 'Попов'),
'2023-5-20','16:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-20','15:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Егор' and Surname = 'Петров'),
'2023-5-20','10:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-20','16:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-20','16:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Артём' and Surname = 'Калинин'),
'2023-5-20','9:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Никита' and Surname = 'Широков'),
'2023-5-20','12:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-20','11:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
'2023-5-20','16:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Артём' and Surname = 'Калинин'),
'2023-5-21','10:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов'),
'2023-5-21','17:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
'2023-5-21','14:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
'2023-5-21','17:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Никита' and Surname = 'Широков'),
'2023-5-21','10:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
'2023-5-21','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Роман' and Surname = 'Калинин'),
'2023-5-21','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
'2023-5-21','9:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Илья' and Surname = 'Соколов'),
'2023-5-21','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-22','16:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
'2023-5-22','14:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
'2023-5-22','14:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Денис' and Surname = 'Андреев'),
'2023-5-22','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-22','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-22','14:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
'2023-5-22','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Антон' and Surname = 'Новиков'),
'2023-5-22','12:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Сергей' and Surname = 'Морозов'),
'2023-5-22','9:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-23','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Максим' and Surname = 'Волков'),
'2023-5-23','9:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Алексей' and Surname = 'Иванов'),
'2023-5-23','15:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Алексей' and Surname = 'Иванов'),
'2023-5-23','9:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-23','14:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-23','12:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-23','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Максим' and Surname = 'Волков'),
'2023-5-23','12:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Петр' and Surname = 'Сидоров'),
'2023-5-23','17:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов'),
'2023-5-24','9:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Илья' and Surname = 'Жуков'),
'2023-5-24','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Никита' and Surname = 'Широков'),
'2023-5-24','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-24','14:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Андрей' and Surname = 'Федоров'),
'2023-5-24','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Алексей' and Surname = 'Фролов'),
'2023-5-24','17:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Никита' and Surname = 'Новиков'),
'2023-5-24','14:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Владислав' and Surname = 'Воронин'),
'2023-5-24','17:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-24','17:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Алексей' and Surname = 'Фролов'),
'2023-5-25','17:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-25','16:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Никита' and Surname = 'Новиков'),
'2023-5-25','11:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Петр' and Surname = 'Сидоров'),
'2023-5-25','17:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Сергей' and Surname = 'Морозов'),
'2023-5-25','17:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
'2023-5-25','11:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-25','14:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Денис' and Surname = 'Козлов'),
'2023-5-25','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-25','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Александр' and Surname = 'Кузнецов'),
'2023-5-26','17:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Илья' and Surname = 'Соколов'),
'2023-5-26','16:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-26','13:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
'2023-5-26','12:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Максим' and Surname = 'Волков'),
'2023-5-26','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Дмитриев'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов'),
'2023-5-26','12:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Евгений' and Surname = 'Попов'),
'2023-5-26','14:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-26','17:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Евгений' and Surname = 'Лебедев'),
'2023-5-26','9:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Михаил' and Surname = 'Соколов'),
'2023-5-27','13:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-27','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв'),
'2023-5-27','17:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Алексей' and Surname = 'Иванов'),
'2023-5-27','12:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Михаил' and Surname = 'Орлов'),
'2023-5-27','16:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Никита' and Surname = 'Новиков'),
'2023-5-27','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Василий' and Surname = 'Кузнецов'),
'2023-5-27','12:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Максим' and Surname = 'Смирнов'),
'2023-5-27','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Петров'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-27','17:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
'2023-5-28','10:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Евгений' and Surname = 'Попов'),
'2023-5-28','11:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Иван' and Surname = 'Петров'),
'2023-5-28','17:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Олег' and Surname = 'Васильев'),
'2023-5-28','9:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Сергей' and Surname = 'Морозов'),
'2023-5-28','9:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-28','17:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов'),
'2023-5-28','17:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Александр' and Surname = 'Сидоров'),
'2023-5-28','11:00'),

((select id from Barbers where Name = 'Алексей' and Surname = 'Иванов'),
(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
'2023-5-28','11:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-29','16:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-29','10:00'),

((select id from Barbers where Name = 'Ксения' and Surname = 'Кузнецова'),
(select id from Clients where Name = 'Владимир' and Surname = 'Захаров'),
'2023-5-29','13:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-29','13:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-29','11:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Георгий' and Surname = 'Мельников'),
'2023-5-29','13:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
'2023-5-29','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Юрий' and Surname = 'Романов'),
'2023-5-29','10:00'),

((select id from Barbers where Name = 'Дмитрий' and Surname = 'Смирнов'),
(select id from Clients where Name = 'Иван' and Surname = 'Васильев'),
'2023-5-29','16:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-30','15:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Роман' and Surname = 'Калинин'),
'2023-5-30','11:00'),

((select id from Barbers where Name = 'Иван' and Surname = 'Козлов'),
(select id from Clients where Name = 'Егор' and Surname = 'Петров'),
'2023-5-30','9:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Евгений' and Surname = 'Лебедев'),
'2023-5-30','9:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Артём' and Surname = 'Иванов'),
'2023-5-30','9:00'),

((select id from Barbers where Name = 'Александр' and Surname = 'Александров'),
(select id from Clients where Name = 'Игорь' and Surname = 'Михайлов'),
'2023-5-30','10:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Олег' and Surname = 'Васильев'),
'2023-5-30','15:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Никита' and Surname = 'Новиков'),
'2023-5-30','17:00'),

((select id from Barbers where Name = 'Елена' and Surname = 'Сидорова'),
(select id from Clients where Name = 'Денис' and Surname = 'Андреев'),
'2023-5-30','14:00')

go

insert into BookingServices(BookingId,ServisId)
values
((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-01' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-01' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Петр' and Surname = 'Сидоров')
and Date = '2023-05-01' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-01' and Time = '11:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-01' and Time = '11:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-01' and Time = '11:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-01' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-01' and Time = '09:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-01' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-01' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-02' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-02' and Time = '15:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-02' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-02' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Федоров')
and Date = '2023-05-02' and Time = '16:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-02' and Time = '09:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-02' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-02' and Time = '17:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Козлов')
and Date = '2023-05-02' and Time = '18:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-03' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-03' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-03' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артем' and Surname = 'Макаров')
and Date = '2023-05-03' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-03' and Time = '11:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-03' and Time = '11:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-03' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-03' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-03' and Time = '15:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-03' and Time = '17:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-03' and Time = '18:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-03' and Time = '18:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-04' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-04' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-04' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Смирнов')
and Date = '2023-05-04' and Time = '11:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Смирнов')
and Date = '2023-05-04' and Time = '11:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-04' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-04' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-04' and Time = '16:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-04' and Time = '16:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-04' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-05' and Time = '09:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-05' and Time = '14:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Лебедев')
and Date = '2023-05-05' and Time = '11:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-05' and Time = '16:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-05' and Time = '12:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-05' and Time = '12:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-05' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв')
and Date = '2023-05-05' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв')
and Date = '2023-05-05' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв')
and Date = '2023-05-05' and Time = '15:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-06' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-06' and Time = '10:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Зайцев')
and Date = '2023-05-06' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Зайцев')
and Date = '2023-05-06' and Time = '17:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Зайцев')
and Date = '2023-05-06' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-06' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-06' and Time = '12:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-06' and Time = '14:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-06' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-06' and Time = '15:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-06' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-06' and Time = '16:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-06' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-06' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Смирнов')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Смирнов')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-07' and Time = '11:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-07' and Time = '11:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-07' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-07' and Time = '10:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-07' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-07' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-07' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-07' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-07' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Козлов')
and Date = '2023-05-08' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Козлов')
and Date = '2023-05-08' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-08' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-08' and Time = '16:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-08' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-08' and Time = '12:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-08' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-08' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-08' and Time = '09:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-09' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-09' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-09' and Time = '09:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-09' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-09' and Time = '17:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-09' and Time = '12:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-09' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-09' and Time = '13:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-09' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-09' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Зайцев')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Зайцев')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Петр' and Surname = 'Сидоров')
and Date = '2023-05-10' and Time = '13:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Петр' and Surname = 'Сидоров')
and Date = '2023-05-10' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Петр' and Surname = 'Сидоров')
and Date = '2023-05-10' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-10' and Time = '15:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-10' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-10' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-10' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-10' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-10' and Time = '14:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Федоров')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Федоров')
and Date = '2023-05-10' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-10' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-10' and Time = '16:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-10' and Time = '16:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-10' and Time = '16:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артем' and Surname = 'Макаров')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-11' and Time = '11:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-11' and Time = '16:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-11' and Time = '16:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Козлов')
and Date = '2023-05-11' and Time = '09:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-11' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-11' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-11' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-11' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-12' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-12' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-12' and Time = '09:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-12' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-12' and Time = '13:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-12' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-12' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-12' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-12' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-12' and Time = '16:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-13' and Time = '12:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-13' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-13' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-13' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-13' and Time = '16:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-13' and Time = '09:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-14' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-14' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-14' and Time = '12:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-14' and Time = '12:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-14' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-14' and Time = '14:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-14' and Time = '09:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-14' and Time = '10:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-15' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-15' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-15' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-15' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Федоров')
and Date = '2023-05-15' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Федоров')
and Date = '2023-05-15' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-15' and Time = '09:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-15' and Time = '09:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-15' and Time = '12:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-15' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-15' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Козлов')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Козлов')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Козлов')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Григорьев')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-16' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-16' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-16' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-16' and Time = '17:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-16' and Time = '17:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-16' and Time = '11:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-16' and Time = '11:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-16' and Time = '11:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артем' and Surname = 'Макаров')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артем' and Surname = 'Макаров')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артем' and Surname = 'Макаров')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв')
and Date = '2023-05-16' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-17' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-17' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '09:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '09:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-17' and Time = '11:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-17' and Time = '11:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-17' and Time = '11:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-17' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-17' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '12:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '12:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-17' and Time = '12:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-17' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-17' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-17' and Time = '17:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-17' and Time = '15:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-17' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-18' and Time = '12:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-18' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-18' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-18' and Time = '17:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-18' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-18' and Time = '12:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-18' and Time = '13:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-18' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-18' and Time = '16:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-18' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-18' and Time = '11:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв')
and Date = '2023-05-19' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-19' and Time = '15:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-19' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-19' and Time = '15:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-19' and Time = '16:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-19' and Time = '16:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-19' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-19' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-19' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-19' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-20' and Time = '15:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-20' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-20' and Time = '15:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-20' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-20' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-20' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-20' and Time = '09:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-20' and Time = '09:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-20' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-20' and Time = '12:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-20' and Time = '11:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-20' and Time = '11:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-20' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Калинин')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-21' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-21' and Time = '14:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-21' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-21' and Time = '17:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-21' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-21' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-21' and Time = '09:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-21' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-21' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-21' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-22' and Time = '16:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-22' and Time = '16:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-22' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-22' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-22' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-22' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-22' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Антон' and Surname = 'Новиков')
and Date = '2023-05-22' and Time = '12:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-22' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-22' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-23' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-23' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-23' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-23' and Time = '15:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-23' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Петр' and Surname = 'Сидоров')
and Date = '2023-05-23' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-24' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-24' and Time = '09:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Жуков')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-24' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Широков')
and Date = '2023-05-24' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-24' and Time = '14:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-24' and Time = '14:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Федоров')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Федоров')
and Date = '2023-05-24' and Time = '13:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-24' and Time = '14:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владислав' and Surname = 'Воронин')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-24' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Фролов')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-25' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-25' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Петр' and Surname = 'Сидоров')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-25' and Time = '17:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-25' and Time = '11:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-25' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-25' and Time = '14:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-25' and Time = '14:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Козлов')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-25' and Time = '15:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Кузнецов')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-26' and Time = '16:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-26' and Time = '16:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Илья' and Surname = 'Соколов')
and Date = '2023-05-26' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-26' and Time = '13:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-26' and Time = '10:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Волков')
and Date = '2023-05-26' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-26' and Time = '12:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-26' and Time = '14:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-26' and Time = '14:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-26' and Time = '14:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-26' and Time = '17:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-26' and Time = '09:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-26' and Time = '09:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Соколов')
and Date = '2023-05-27' and Time = '13:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Андрей' and Surname = 'Соловьёв')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Алексей' and Surname = 'Иванов')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Михаил' and Surname = 'Орлов')
and Date = '2023-05-27' and Time = '16:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Василий' and Surname = 'Кузнецов')
and Date = '2023-05-27' and Time = '12:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Максим' and Surname = 'Смирнов')
and Date = '2023-05-27' and Time = '10:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-27' and Time = '17:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-28' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Попов')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Петров')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Сергей' and Surname = 'Морозов')
and Date = '2023-05-28' and Time = '09:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Дмитрий' and Surname = 'Смирнов')
and Date = '2023-05-28' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Александр' and Surname = 'Сидоров')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-28' and Time = '11:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Владимир' and Surname = 'Захаров')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-29' and Time = '11:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-29' and Time = '11:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Георгий' and Surname = 'Мельников')
and Date = '2023-05-29' and Time = '13:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = 'Коррекция стрижки с укладкой')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Юрий' and Surname = 'Романов')
and Date = '2023-05-29' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Иван' and Surname = 'Васильев')
and Date = '2023-05-29' and Time = '16:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Роман' and Surname = 'Калинин')
and Date = '2023-05-30' and Time = '11:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Егор' and Surname = 'Петров')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Детская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Евгений' and Surname = 'Лебедев')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Моделирование бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Артём' and Surname = 'Иванов')
and Date = '2023-05-30' and Time = '09:00:00'),(select id from TypeServis where Name = 'Укладка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Игорь' and Surname = 'Михайлов')
and Date = '2023-05-30' and Time = '10:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = 'Камуфлирование седины')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Олег' and Surname = 'Васильев')
and Date = '2023-05-30' and Time = '15:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-30' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-30' and Time = '17:00:00'),(select id from TypeServis where Name = 'Традиционное бритье бороды')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Никита' and Surname = 'Новиков')
and Date = '2023-05-30' and Time = '17:00:00'),(select id from TypeServis where Name = 'Мужская стрижка длинные волосы')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-30' and Time = '14:00:00'),(select id from TypeServis where Name = 'Мужская стрижка')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-30' and Time = '14:00:00'),(select id from TypeServis where Name = 'Стрижка усов')),

((select id from Booking where ClientId = (select id from Clients where Name = 'Денис' and Surname = 'Андреев')
and Date = '2023-05-30' and Time = '14:00:00'),(select id from TypeServis where Name = 'Укладка'))

go

insert into Archive(ClientName,ClientSurname,ClientLastName,ClientPhone,ClientEmail,BarberName,BarberSurname,BarberLastName,
		BarberPhone,BarberEmail,BarberJobPosition,Servises,Date,TotalCost)

values('Олегов','Олег','Олегович','+27438274823','asdfsf@gmail.com',
		'Петр','Петров','Александрович','+437843873','jhgdsf@gmail.com','джуниор-барбер','Стрижка, укладка','2021-01-20',500),

	  ('Дмитрий','Сараф','Александрович','+3958674543','gdfgdgsds@gmail.com',
		'Петр','Петров','Александрович','+437843873','jhgdsf@gmail.com','джуниор-барбер','Стрижка усов','2022-04-04',200)
