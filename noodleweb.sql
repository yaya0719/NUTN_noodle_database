CREATE DATABASE noodledata;



USE noodledata;
CREATE TABLE EMPLOYEE (

  name              VARCHAR(15)	    NOT NULL,

  Bdate		          DATE,

  Sex               CHAR,

  Salary            DECIMAL(10,2),

  sid               INT            NOT NULL,
  
  PRIMARY KEY (sid)
 
  );

  CREATE TABLE customer (

  name             VARCHAR(50)	    NOT NULL,

  phonenumber      INT,
  
  customerid              INT,

  PRIMARY KEY (customerid)


);


 CREATE TABLE orderr (

  customerid        INT,

  ordtime           DATETIME,
  
  totalprice        INT,

  orderid           INT            NOT NULL,
  


  PRIMARY KEY (orderid),
  FOREIGN KEY (customerid) REFERENCES customer(customerid)

);

CREATE TABLE 菜單 (

  name             VARCHAR(50)	    NOT NULL,

  Size             VARCHAR(15),

  price            INT,
  
  mid              INT       NOT NULL,

  PRIMARY KEY (mid)


);

CREATE TABLE orderinform (

  ordeinfoid              INT	    NOT NULL,

  ordish            INT     NOT NULL,

  phonenumber       INT,
  
  orderprice       INT,

  oid               INT           NOT NULL,
  


  PRIMARY KEY (ordeinfoid),
  FOREIGN KEY (oid) REFERENCES orderr(orderid)
  

);






INSERT INTO 菜單 VALUES 

('切仔麵', '小', 35,1); 

INSERT INTO 菜單 VALUES 

('切仔麵', '中', 45,2);

INSERT INTO 菜單 VALUES 

('切仔麵', '大', 70,3);

INSERT INTO 菜單 VALUES 

('米粉', '小', 35,4);

INSERT INTO 菜單 VALUES 

('米粉', '中', 45,5);

INSERT INTO 菜單 VALUES 

('米粉', '大', 70,6);

INSERT INTO 菜單 VALUES 

('粄條', '小', 35,7);

INSERT INTO 菜單 VALUES 

('粄條', '中', 45,8);

INSERT INTO 菜單 VALUES 

('粄條', '大', 70,9);

INSERT INTO 菜單 VALUES 

('米苔目', '小', 35,10);

INSERT INTO 菜單 VALUES 

('米苔目', '中', 45,11);

INSERT INTO 菜單 VALUES 

('米苔目', '大', 70,12);

INSERT INTO 菜單 VALUES 

('凸皮麵', '小', 45,13);

INSERT INTO 菜單 VALUES 

('凸皮麵', '中', 55,14);

INSERT INTO 菜單 VALUES 

('凸皮麵', '大', 80,15);

INSERT INTO 菜單 VALUES 

('蚵仔麵', '小', 65,16);

INSERT INTO 菜單 VALUES 

('蚵仔麵', '中', 75,17);

INSERT INTO 菜單 VALUES 

('蚵仔麵', '大', 100,18);

INSERT INTO 菜單 VALUES 

('肉燥飯', '小', 35,19);

INSERT INTO 菜單 VALUES 

('肉燥飯', '大', 45,20);

INSERT INTO 菜單 VALUES 

('豆腐湯', NULL, 10,21);

INSERT INTO 菜單 VALUES 

('凸皮湯', NULL, 10,22);

INSERT INTO 菜單 VALUES 

('貢丸湯', NULL, 20,23);

INSERT INTO 菜單 VALUES 

('粉腸湯', NULL, 30,24);

INSERT INTO 菜單 VALUES 

('肉湯', NULL, 10,25);

INSERT INTO 菜單 VALUES 

('蚵仔湯', NULL, 50,26);

INSERT INTO 菜單 VALUES 

('肉類', '小', 30,27);

INSERT INTO 菜單 VALUES 

('肉類', '大', 50,28);

INSERT INTO 菜單 VALUES 

('滷豆腐', NULL, 10,29);

INSERT INTO 菜單 VALUES 

('油豆腐', NULL, 5,30);

INSERT INTO 菜單 VALUES 

('滷蛋', NULL, 15,31);

INSERT INTO 菜單 VALUES 

('燙青菜', NULL, 30,32);

INSERT INTO EMPLOYEE VALUES

('John',2002-10-02,'M',30000,12345678);

INSERT INTO EMPLOYEE VALUES

('lan',2003-11-22,'M',28000,11122233);

INSERT INTO EMPLOYEE VALUES

('Emma',2000-12-31,'F',31000,12312312);

INSERT INTO EMPLOYEE VALUES

('Molly',1999-07-03,'F',32000,22233344);

INSERT INTO EMPLOYEE VALUES

('Lydia',2001-01-01,'F',29000,44556677);

INSERT INTO EMPLOYEE VALUES

('Jason',1997-03-25,'M',33000,34556778);

INSERT INTO EMPLOYEE VALUES

('Aria',1998-10-16,'F',32500,32112345);

INSERT INTO customer VALUES

('James',3105550123,0001);

INSERT INTO customer VALUES

('Emily',4155550456,0002);

INSERT INTO customer VALUES

('Michael',2025550759,0003);

INSERT INTO customer VALUES

('Sarah',2125550934,0004);

INSERT INTO customer VALUES

('William',6465550182,0005);

INSERT INTO orderr VALUES

(0001,'2024-12-1 12:15:00',90,1);

INSERT INTO orderr VALUES

(0002,'2024-12-1 12:17:00',70,2);

INSERT INTO orderr VALUES

(0003,'2024-12-1 12:20:00',35,3);

INSERT INTO orderr VALUES

(0004,'2024-12-1 12:25:00',80,4);

INSERT INTO orderr VALUES

(0005,'2024-12-1 12:31:00',70,5);

INSERT INTO orderinform VALUES

(11111111,7,3105550123,35,1);

INSERT INTO orderinform VALUES

(11111112,3,4155550456,70,2);

INSERT INTO orderinform VALUES

(11111113,4,2025550789,35,3);

INSERT INTO orderinform VALUES

(11111114,15,2125550934,80,4);

INSERT INTO orderinform VALUES

(11111115,6,6465550182,70,5);

INSERT INTO orderinform VALUES

(11111116,10,3105550123,35,1);

INSERT INTO orderinform VALUES

(11111117,21,3105550123,10,1);

INSERT INTO orderinform VALUES

(11111118,29,3105550123,10,1);