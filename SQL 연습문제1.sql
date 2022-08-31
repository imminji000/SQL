# 날짜 : 2022/08/29
#이름 : 임민지
#내용 : SQL 연습문제1


#실습1-1
create database `java1_Shop`;
create user 'java1_admin1'@'%' identified by '1234';
grant all privileges on `java1_shop`.* to 'java1_admin1'@'%';
flush privileges;

#실습1-2
    CREATE TABLE `Customer`  (
   `custid` varchar(10) primary key,
   `name`   varchar(10) Not Null,
   `hp`     varchar(13) Default Null,
   `addr`   varchar(100) Default null,
   `rdate`  Date Not Null
);

	CREATE TABLE `Product` (
    `prodNo` INT AUTO_INCREMENT PRIMARY KEY,
    `prodName`VARCHAR(10) NOT NULL,
    `stock` INT DEFAULT 0,
    `price` INT DEFAULT NULL,
    `company` VARCHAR(20) NOT NULL
);
    
    
    
    CREATE TABLE `Order` (
`orderNo`  INT AUTO_INCREMENT PRIMARY KEY,
`orderID` VARCHAR(10) NOT NULL,
`orderProduct` INT NOT NULL,
`orderCount` INT DEFAULT 1,
`orderDate` DATETIME NOT NULL
);

#실습1-3
INSERT INTO `Customer` VALUES ('c101','김유신','010-1234-1001', '김해시 봉황동','2022-01-01');
INSERT INTO `Customer` VALUES ('c102','김춘추','010-1234-1002', '경주시 보문동','2022-01-02');
INSERT INTO `Customer` VALUES ('c103','장보고','010-1234-1003', '완도군 청산면','2022-01-03');
INSERT INTO `Customer` VALUES ('c104','강감찬','010-1234-1004', '서울시 마포구','2022-01-04');
INSERT INTO `Customer` (`custId`, `name`, `rdate`) VALUES ('c105', '이성계' ,'2022-01-05');
INSERT INTO `Customer` VALUES ('c106','정철','010-1234-1006', '경기도 용인시','2022-01-06');
INSERT INTO `Customer` (`custId`, `name`, `rdate`) VALUES ('c107', '허준' ,'2022-01-07');
INSERT INTO `Customer` VALUES ('c108','이순신','010-1234-1008', '서울시 영등포구','2022-01-08');
INSERT INTO `Customer` VALUES ('c109','송상현','010-1234-1009', '부산시 동래구','2022-01-09');
INSERT INTO `Customer` VALUES ('c110','정약용','010-1234-1010', '경기도 광주시','2022-01-10');
 
INSERT INTO `Product` VALUES (1, '새우깡', 5000, 1500,'농심');
INSERT INTO `Product` VALUES (2, '초코파이', 2500, 2500,'오리온');
INSERT INTO `Product` VALUES (3, '포카칩', 3600, 1700,'오리온');
INSERT INTO `Product` VALUES (4, '양파링', 1250, 1800,'농심');
INSERT INTO `Product` (`prodNo`,`prodName`,`stock`, `company`) VALUES (5, '죠리퐁', 2200, '크라운');
INSERT INTO `Product` VALUES (6, '마가렛트', 3500, 3500,'롯데');
INSERT INTO `Product` VALUES (7, '뿌셔뿌셔', 1650, 1200,'오뚜기');

INSERT INTO `Order` VALUES (1, 'c102', 3,2,'2022-07-01 13:15:10');
INSERT INTO `Order` VALUES (2, 'c101', 4,1,'2022-07-01 13:16:11');
INSERT INTO `Order` VALUES (3, 'c100', 1,1,'2022-07-01 13:23:18');
INSERT INTO `Order` VALUES (4, 'c109', 6,5,'2022-07-02 13:46:36');
INSERT INTO `Order` VALUES (5, 'c102', 2,1,'2022-07-03 13:15:37');
INSERT INTO `Order` VALUES (6, 'c101', 7,3,'2022-07-03 13:35:12');
INSERT INTO `Order` VALUES (7, 'c110', 1,2,'2022-07-03 13:55:36');
INSERT INTO `Order` VALUES (8, 'c104', 2,4,'2022-07-07 13:23:23');
INSERT INTO `Order` VALUES (9, 'c102', 1,3,'2022-07-04 13:54:34');
INSERT INTO `Order` VALUES (10,'c107', 6,1,'2022-07-05 13:21:03');



#실습1-4

select * from 





#실습1-5
select     from `Customer`;



#실습1-6
select



#실습1-7
select   from 




#실습1-8
select         from `Product`





#실습1-9
select         from `Product';



#실습1-10


#실습1-11
select `prodName`,    from `product`;

#실습1-12
select `prodName`, `stock`,`price` from `product`;





#실습1-13
select `orderProduct`,`ordercount`,`orderDate` from `order`








#실습1-14
select * from `product` where




#실습1-15
select `cusId`, `name`, `hp`,`addr` from `customer`







#실습1-16
select `cusId`, `name`, `hp`,`addr` from `customer`









#실습1-17
select * from `customer` where `hp`









#실습1-18
select * from `customer` where `addr`









#실습1-19
select * from `customer`









#실습1-20
select * from `order` where `orderCount`  >=3









#실습1-21
select                from `product`;






#실습1-22
select         AS '재고량 합계' from `product` where `company`=`농심`;












#실습1-23
select        AS '고객수' from `customer`;








#실습1-24
select count(           ) AS '제조업체 수' from `product`;









#실습1-25
select `orderproduct` AS '주문 상품번호', SUM(`ordercount`) AS '총 주문 수량' from
`order`









#실습1-26
select `company` AS '제조업체' , count(*)AS '제품수' , MAX(`price`) AS '최고가' from
`product` 







#실습1-27
select `company` AS '제조업체' , count(*)AS '제품수' , MAX(`price`) AS '최고가' from
`product` group by `company`







#실습1-28
select `orderProduct` ,`orderId`, SUM(`ordercount`) AS '총 주문수량' FROM `order`





#실습1-29
select a.orderId, b.prodName FROM `Order` AS a
JOIN
ON
WHERE `orderid` = 'c102';




#실습1-30
select `orderid` , `name`, `prodName` , `orderDate` FROM `order` AS a 
JOIN  `Customer` AS b
ON a orderId = b.custid
JOIN  `Customer` AS c
ON a orderProduct = c.prodNo
WHERE