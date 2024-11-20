CREATE DATABASE noodledb;



USE noodledb;
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
  
  sid              INT,

  PRIMARY KEY (sid)


);


 CREATE TABLE orderr (

  cuid              INT,

  ordtime           DATETIME,
  
  totalprice        INT,

  oid               INT            NOT NULL,
  


  PRIMARY KEY (oid),
  FOREIGN KEY (cuid) REFERENCES customer(sid)

);

CREATE TABLE 菜單 (

  name             VARCHAR(50)	    NOT NULL,

  Size             VARCHAR(15),

  price            INT,
  
  mid              INT       NOT NULL,

  PRIMARY KEY (mid)


);

CREATE TABLE orderinform (

  ofid              INT	    NOT NULL,

  ordish            INT     NOT NULL,

  ordernumber       INT,
  
  orderprice       INT,

  oid               INT           NOT NULL,
  


  PRIMARY KEY (ofid),
  FOREIGN KEY (oid) REFERENCES orderr(oid),
  FOREIGN KEY (ordish) REFERENCES 菜單(mid)

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



