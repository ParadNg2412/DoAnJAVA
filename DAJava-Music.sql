create database DAJava
use DAJava
set dateformat DMY

--Tạo table
create table Account
(
	username varchar(20) primary key not null,
	password varchar(8)
)

create table Singer
(
	MaCS varchar(5) primary key not null,
	TenCS nvarchar(50) not null,
	Descriptions nvarchar(100)
)

create table categories
(
	MaTL varchar(5) primary key not null,
	TenTL nvarchar(50) not null
)

create table Music
(
	MaBH varchar(5) not null,
	TenBH nvarchar(20) not null,
	Uploaddate date,
	MaCS varchar(5),
	MaTL varchar(5),
	primary key (MaBH, MaCS),
	foreign key (MaCS) references Singer(MaCS),
	foreign key (MaTL) references Categories(MaTL)
)

create table Playlist
(
	MaPL varchar(5) not null,
	TenPL nvarchar(50) not null,
	MaBH varchar(5),
	primary key (MaPL, MaBH),
	/*foreign key (MaBH) references Music(MaBH),
	on update cascade,
	on delete cascade*/
)

