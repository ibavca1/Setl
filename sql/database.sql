create or alter proc get_room
as
select 
	number_apartment,
	apartment_up_area,
	price,
	cast(round(apartments.price/apartment_up_area,2) as dec(10,2)) as price_m2
from houses
join floor_of_houses on
	houses.id = floor_of_houses.id_houses
join material_type on
	material_type.id = houses.material_type
join floor_planning on
	floor_planning.id = floor_of_houses.type_of_floor
join apartments on
	apartments.idfloor = floor_of_houses.id
--join rooms on
--	rooms.id_apartment = apartments.id
--join type_room on
--	type_room.id = rooms.type_room
go


exec get_room;

USE [setl]
GO

/****** Object:  Table [dbo].[apartments]    Script Date: 05.08.2021 17:37:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[apartments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idfloor] [int] NULL,
	[number_apartment] [nchar](10) not NULL,
	[number_of_rooms] [smallint] NULL,
	[apartment_up_area] [numeric](18, 2) NULL,
	[living_space] [numeric](18, 2) NULL
	CONSTRAINT AK_Number UNIQUE([number_apartment])  
) ON [PRIMARY]
GO

USE [setl]
GO

/****** Object:  Table [dbo].[floor_of_houses]    Script Date: 05.08.2021 17:37:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[floor_of_houses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_houses] [int] NOT NULL,
	[number_of_floor] [smallint] NULL,
	[type_of_floor] [smallint] NULL,
	[built_up_area] [numeric](18, 2) NULL
) ON [PRIMARY]
GO

USE [setl]
GO

/****** Object:  Table [dbo].[floor_planning]    Script Date: 05.08.2021 17:37:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[floor_planning](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[material_type](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](50) NOT NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[houses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cadastre_number] [nchar](15) NULL,
	[name_part] [nchar](50) NULL,
	[location] [varchar](max) NULL,
	[category_land] [nchar](50) NULL,
	[promote_provision] [varchar](max) NULL,
	[built_up_area] [numeric](18, 3) NULL,
	[material_type] [nchar](50) NULL,
	[special_point] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[rooms](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_apartment] [int] NULL,
	[type_room] [smallint] NULL,
	[room_area] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
--*****************************************************************************************
insert into type_room (name, living_room) values(N'Спальня для взрослых', 1);
insert into type_room (name, living_room) values(N'Детская', 1);
insert into type_room (name, living_room) values(N'общая гостиная', 1);
insert into type_room (name, living_room) values(N'столовая', 0);
insert into type_room (name, living_room) values(N'санузел', 0);
insert into type_room (name, living_room) values(N'душевая', 0);
insert into type_room (name, living_room) values(N'ванная', 0);
insert into type_room (name, living_room) values(N'кухня', 0);
insert into type_room (name, living_room) values(N'место для стирки и глажки', 0);
insert into type_room (name, living_room) values(N'прихожая', 0);
insert into type_room (name, living_room) values(N'коридор', 0);
insert into type_room (name, living_room) values(N'холл', 0);
insert into type_room (name, living_room) values(N'кладовка', 0);
insert into type_room (name, living_room) values(N'гардеробный отсек', 0);
insert into type_room (name, living_room) values(N'погреб', 0);
insert into type_room (name, living_room) values(N'размещения котла', 0);
insert into type_room (name, living_room) values(N'электрощитовая', 0);
insert into type_room (name, living_room) values(N'кабинет', 0);
insert into type_room (name, living_room) values(N'бильярдная', 0);
insert into type_room (name, living_room) values(N'танцкласс', 0);
insert into type_room (name, living_room) values(N'место для игр', 0);
insert into type_room (name, living_room) values(N'рабочая мастерская', 0);
insert into type_room (name, living_room) values(N'тренажерный зал', 0);
insert into type_room (name, living_room) values(N'баня', 0);
insert into type_room (name, living_room) values(N'сауна', 0);
insert into type_room (name, living_room) values(N'хаммам', 0);
insert into type_room (name, living_room) values(N'комната для массажа', 0);
insert into type_room (name, living_room) values(N'бассейн', 0);
insert into type_room (name, living_room) values(N'комната', 1);
insert into type_room (name, living_room) values(N'туалет', 0);
insert into type_room (name, living_room) values(N'прочее', 0);
insert into type_room (name, living_room) values(N'Жилая комната', 1);
--*****************************************************************************************


--*****************************************************************************************
insert into material_type (name) values (N'Железобетонные плиты');
insert into material_type (name) values (N'Кирпичное здание');
insert into material_type (name) values (N'Монолитный дом');
--*****************************************************************************************


--*****************************************************************************************
insert into floor_planning (name) values (N'Монолитный дом');
insert into floor_planning (name) values (N'Секционный');
insert into floor_planning (name) values (N'Точечный');
insert into floor_planning (name) values (N'Коридорный');
insert into floor_planning (name) values (N'Галерейный');
insert into floor_planning (name) values (N'Общественные помещения');
--*****************************************************************************************

--*****************************************************************************************
insert into houses (cadastre_number, name_part, location, category_land, promote_provision, built_up_area, material_type, special_point) 
values (N'6310138500:10:012:0045', N'Землепользование', N'Не установленно', N'', N'',14328.10, 2, N'');
--*****************************************************************************************

--*****************************************************************************************
insert into floor_of_houses (id_houses, number_of_floor, type_of_floor, built_up_area) values (1, 1, 5, 1093.80);
insert into floor_of_houses (id_houses, number_of_floor, type_of_floor, built_up_area) values (1, 2, 1, 1093.80);
insert into floor_of_houses (id_houses, number_of_floor, type_of_floor, built_up_area) values (1, 3, 1, 1093.80);
insert into floor_of_houses (id_houses, number_of_floor, type_of_floor, built_up_area) values (1, 4, 1, 1093.80);
insert into floor_of_houses (id_houses, number_of_floor, type_of_floor, built_up_area) values (1, 5, 1, 1093.80);
insert into floor_of_houses (id_houses, number_of_floor, type_of_floor, built_up_area) values (1, 6, 1, 1093.80);
insert into floor_of_houses (id_houses, number_of_floor, type_of_floor, built_up_area) values (1, 7, 1, 1093.80);

--*****************************************************************************************

--*****************************************************************************************
insert into apartments (idfloor, number_apartment, number_of_rooms, apartment_up_area, living_space) values (2, 1, 4, 150.0, 90);
insert into apartments (idfloor, number_apartment, number_of_rooms, apartment_up_area, living_space) values (2, 2, 3, 120.0, 80);
insert into apartments (idfloor, number_apartment, number_of_rooms, apartment_up_area, living_space) values (3, 3, 4, 150.0, 90);
insert into apartments (idfloor, number_apartment, number_of_rooms, apartment_up_area, living_space) values (3, 4, 3, 120.0, 80);
--*****************************************************************************************

--*****************************************************************************************
insert into rooms(id_apartment, type_room, room_area) values (1, 1, 16);
insert into rooms(id_apartment, type_room, room_area) values (1, 32, 15);
insert into rooms(id_apartment, type_room, room_area) values (1, 32, 15);
insert into rooms(id_apartment, type_room, room_area) values (1, 32, 15);
insert into rooms(id_apartment, type_room, room_area) values (1, 8, 32);
insert into rooms(id_apartment, type_room, room_area) values (1, 7, 5);
insert into rooms(id_apartment, type_room, room_area) values (1, 7, 6);
insert into rooms(id_apartment, type_room, room_area) values (1, 11, 6);
--*****************************************************************************************
