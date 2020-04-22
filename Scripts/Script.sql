select user(), database();
create database htw;
use htw;

create table project(
	pno int not null auto_increment,
	pname varchar(50) not null,
	pcontent text null,
	startdate timestamp not null,
	enddate timestamp not null,
	progress varchar(30) not null,
	primary key(pno)
);

select *
from project;

insert into project values
(null, '추가','추가','2020-02-10', '2020-03-10', '진행중');

insert into project values
(null, 'ㅁㄴㅇㅁㄴㅇ','ㅁㄴㅇㅁㄴㅇ','2020-02-10', '2020-03-10', '보류');

