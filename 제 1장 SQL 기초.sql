#날짜 : 222/08/22
#이름 : 임민지
#내용 : 제1장 SQL 기초

#실습 1-1
CREATE DATABASE `User1`;
DROP DATABASE `User1`;


#실습 1-2
CREATE TABLE `User1` (
`uid` VARCHAR(10),
`name` VARCHAR(10),
`hp` CHAR(13),
`age` INT
);

DROP TABLE `User1`;


#실습 1-3
INSERT INTO `User1` VALUES ('A101' , '김유신' , '010-1234-1111', 25);
INSERT INTO `User1` VALUES ('A102' , '김춘추' , '010-1234-2222', 23);
INSERT INTO `User1` VALUES ('A103' , '장보고' , '010-1234-3333', 32);
INSERT INTO `User1` (`uid`, `name`, `age`) VALUES ('A104','강감찬',45);
INSERT `User1` SET

`uid`='A105',
`name`='이순신',
`hp`='010-1234-5555';

#실습 1-4
SELECT * FROM `USER1`;
SELECT * FROM `USER1` WHERE `Uid` = 'A101';
SELECT `uid`,`name`,`age` FROM `User1`;

#실습 1-5
#실습 1-6
#실습 1-7
#실습 1-8
#실습 1-9
