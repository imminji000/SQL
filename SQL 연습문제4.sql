#실습4-1
create database `java1_Bookstore`;
create user 'java1_admin4'@'%' identified by '1234';
grant all privileges on `java1_Bookstore`.* to 'java1_admin4'@'%';
FLUSH PRIVILEGES;



#실습4-2
CREATE TABLE `Customer`(
      `custId` INT AUTO_INCREMENT PRIMARY KEY,
      `name` VARCHAR(10) NOT NULL,
      `address` VARCHAR(20),
      `phone` CHAR(13)
);

CREATE TABLE `Book` (
      `bookId` INT NOT NULL PRIMARY KEY,
      `bookName` VARCHAR(20) NOT NULL,
      `publisher` VARCHAR(20) NOT NULL,
      `price`     INT 
);

CREATE TABLE `Order`(
      `orderId` INT PRIMARY KEY AUTO_INCREMENT,
	  `custID`  INT NOT NULL,
      `bookId`  INT NOT NULL,
      `salePrice` INT NOT NULL,
      `orderDate` DATE NOT NULL
);




#실습4-3
INSERT INTO `Customer`(`name`, `address`,`phone`) VALUES('박지성', '영국 맨체스타','000-5000-0001');
INSERT INTO `Customer`(`name`, `address`,`phone`) VALUES('김연아', '대한민국 서울','000-6000-0001');
INSERT INTO `Customer`(`name`, `address`,`phone`) VALUES('장미란', '대한민국 강원도','000-7000-0001');
INSERT INTO `Customer`(`name`, `address`,`phone`) VALUES( '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer`(`name`, `address`) VALUES('박세리', '대한민국 대전');

INSERT INTO `Book` VALUES(1, '축구의 역사', '굿스포츠',7000);
INSERT INTO `Book` VALUES(2, '축구아는 여자','나무수',13000);
INSERT INTO `Book` VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` VALUES(5, '피겨교본', '굿스포츠', 8000);
INSERT INTO `Book` VALUES(6, '역도 단계별기술', '굿스포츠',6000);
INSERT INTO `Book` VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` VALUES(10, 'Olympic Champions', 'Pearson',13000);

INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`)VALUES(1,1,6000,'2014-07-01');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`) VALUES(2,1,21000,'2014-07-03');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`) VALUES(3,2,8000,'2014-07-03');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`)VALUES(4,3,6000,'2014-07-04');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`)VALUES(5,4,20000,'2014-07-05');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`)VALUES(6,1,12000,'2014-07-07');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`)VALUES(7,4,13000,'2014-07-07');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`)VALUES(8,3,12000,'2014-07-08');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`)VALUES(9,2,7000,'2014-07-09');
INSERT INTO `Order` (`custId`, `bookId`, `salePrice`,`orderDate`) VALUES(10,3,13000,'2014-07-10');


#실습4-4
select `custId`,`name`,`address` FROM `Customer`;


#실습4-5
select `bookname`,`price` FROM `Book`;


#실습4-6
select `Price`, `bookname`FROM `Book`;


#실습4-7
select `bookid`,`bookname`,`publisher`,`price` FROM `Book`;



#실습4-8
select `publisher` FROM `Book`;


#실습4-9
select distinct `publisher` FROM `Book`;


#실습4-10

select * from `Book` where `price` >= 20000;


#실습4-11
select * from `Book` where `price` < 20000;



#실습4-12
select* from `Book` where `price` >= 10000 AND `price` <=20000;



#실습4-13
select * from `bookid`,`bookname` ,`price`


#실습4-14

select * from `Book` where `bookId` in(2,3,5);


#실습4-15
select * from `Book` where `bookId` % 2 = 0;

#실습4-16


#실습4-17


#실습4-18


#실습4-19
SELECT * FROM `Book` WHERE  `publisher` IN ('굿스포프','대한미디어');

#실습4-20
SELECT * FROM `Book` WHERE `bookname` LIKE `축구의 역사`;

#실습4-21
SELECT `bookname`, `publisher` FROM `Book` WHERE `bookname` like `%축구%`;

#실습4-22
select * from `Book` where `bookName` like '_구%';


#실습4-23



#실습4-24



#실습4-25



#실습4-26



#실습4-27
select * from `Book` order by `price` desc limit 3;
 


#실습4-28




#실습4-29




#실습4-30
#실습4-31
#실습4-32
select 
      `bookId`,
      replace(`bookName`, '야구', '농구') as `bookname`,
      `publisher`,
      `price`
      from `Book`;
      
#실습4-33
#실습4-34
#실습4-35
#실습4-36
#실습4-37
#실습4-38
#실습4-39

#실습4-40
select `name`, `salesPrice`from `Order` as a 
right join `customer` as b 
on a.custId = b.custId;

#실습4-41
select `bookname` from `Book` where `price` =(select max(`price`) from `Book`);

#실습4-42
select `name` from `Customer` where `custId` not in (select distinct `custId`  from `Order`);


#실습4-43
select sum (`salePrice`) as `총합` from `Order` where `custid` = (select `custId` from `Customer` where `name` = '김연아');
#실습4-44
#실습4-45
#실습4-46
delete from `Customer` where `custId` = 5;