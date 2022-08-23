 #날짜 : 2022/08/23
 #이름 : 임민지
 #내용 : 제2장 테이블 제약조건과 수정

#실습 2-1
create table `User2` (
			 `uid`     varchar(20) primary key,
             `name`    varchar(10),
             `hp`      char(13),
             `age`     tinyint
);


#실습 2-2
insert into `User2` values ('a101', '김유신', '010-1234-1001',25);
insert into `User2` values ('a102', '김춘추', '010-1234-1002',23);


#실습 2-3
create table `User3` ( 
             `uid`     varchar(20) primary key,
             `name`    varchar(10),
		     `hp`      char(13) unique,
             `age`     tinyint
);

#실습 2-4
insert into `User3` values ('a101', '김유신', '010-1234-1001',25);
insert into `User3` values ('a102', '김춘추', '010-1234-1002',23);

#실습 2-5
create table `parent` (
`pid` varchar(10) primary key,
`name`varchar(10),
`hp` char(13) unique
);


create table `child` (
   `cid` varchar(10) primary key,
   `name` varchar(10),
   `hp` char(13) unique,
   `pid` varchar(10)
  foreign key (`pid`) references `parent` (`pid`)
);

insert into `parent` values ('p101' , '이성계', '010-1234-1111');
insert into `child` values ('c101', '이방원' , '010-1234-1001', 'p101');

#실습 2-6
create table `User4` (
       `seq` int primary key auto_increment,
       `name`     varchar(10),
	   `gender`   tinyint,
       `age`      tinyint,
       `addr`     varchar(225)

); 
insert into `User4` (`name`, `gender` , `age` , `addr`) values ('김유신', 1, 25,'김해시');
insert into `User4` (`name`, `gender` , `age` , `addr`) values ('김춘추', 1, 23,'경주시');
insert into `User4` (`name`, `gender` , `age` , `addr`) values ('김춘추', 1, 27,'강릉시');
delete from `User4` where `name` = '신사임당';

#실습 2-7
create table `User5` (
	   `name`     varchar(10) NOT NUll,
	   `gender`   tinyint,
       `age`      tinyint default 1,
       `addr`     varchar(225)
);

insert into `User5` set `name` = '김유신';
insert into `User5` set `name` ='김춘추', `addr` = '부산시';


#실습 2-8


#실습 2-9
create table `User5`(
`name` VARXHAR(10) NOT NULL
`gender` TINYINT,
`age` INT DEFAULT 1,
`addr` VARCHAR(10)


#실습 2-10
#실습 2-11
ALTER TABLE `User5' ADD `hp` VARCHAR(20);
ALTER TABLE `User5` ADD `age` CHAR(10) DEFAULT '0000-00-00' AFTER `name`;
ALTER TABLE `User5` ADD  `uid` VARCHAR(10) PRIMARY KEY FIRST;

#실습 2-12
ALTER TABLE `User5` MODIFY `hp` CHAR(13); 
ALTER TABLE `User5` MODIFY `age` TINYINT;

#실습 2-13
ALTER TABLE `User5` CHANGE COLUMN `addr` `address` VARCHAR(100);


#실습 2-14


#실습 2-15
#실습 2-16
