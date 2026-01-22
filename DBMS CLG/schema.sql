-- Active: 1767363723104@@127.0.0.1@3306@dbms_clg
CREATE DATABASE IF NOT EXISTS DBMS_CLG;

USE DBMS_CLG;

CREATE TABLE STUDENT(
    Roll_no INT PRIMARY KEY,
    Student_Name VARCHAR(30),
    Father_Name VARCHAR(30),
    Course VARCHAR(30),
    Contact_No BIGINT,
    Address VARCHAR(100)
);

DESCRIBE TABLE STUDENT;
SHOW TABLES;
INSERT INTO STUDENT 
(Roll_no, Student_Name, Father_Name, Course, Contact_No, Address)
VALUES
(1,'James Miller','Robert Miller','Computer Science',12025550101,'New York, USA'),
(2,'Michael Johnson','David Johnson','Information Technology',12025550102,'California, USA'),
(3,'William Brown','Thomas Brown','Data Science',12025550103,'Texas, USA'),
(4,'Daniel Wilson','Mark Wilson','Cyber Security',12025550104,'Florida, USA'),
(5,'Matthew Taylor','Paul Taylor','Software Engineering',12025550105,'Ohio, USA'),
(6,'Christopher Anderson','Steven Anderson','Artificial Intelligence',12025550106,'Washington, USA'),
(7,'Andrew Thomas','Kevin Thomas','Computer Science',12025550107,'Oregon, USA'),
(8,'Joshua Jackson','Brian Jackson','Cloud Computing',12025550108,'Nevada, USA'),
(9,'Ryan White','Gary White','Information Systems',12025550109,'Arizona, USA'),
(10,'Nathan Harris','Edward Harris','Machine Learning',12025550110,'Utah, USA'),

(11,'Benjamin Martin','Frank Martin','Computer Science',442071001101,'London, UK'),
(12,'Samuel Thompson','Henry Thompson','Data Analytics',442071001102,'Manchester, UK'),
(13,'Joseph Garcia','Carlos Garcia','Software Engineering',442071001103,'Madrid, Spain'),
(14,'David Martinez','Juan Martinez','Cyber Security',442071001104,'Barcelona, Spain'),
(15,'Anthony Rodriguez','Miguel Rodriguez','AI & Robotics',442071001105,'Valencia, Spain'),

(16,'Lucas Smith','Peter Smith','Computer Science',33142011001,'Paris, France'),
(17,'Ethan Clark','George Clark','Information Technology',33142011002,'Lyon, France'),
(18,'Noah Lewis','Albert Lewis','Cloud Computing',33142011003,'Marseille, France'),

(19,'Oliver Walker','Henry Walker','Data Science',493012001101,'Berlin, Germany'),
(20,'Jack Hall','Walter Hall','Machine Learning',493012001102,'Munich, Germany'),
(21,'Harry Young','Patrick Young','Computer Engineering',493012001103,'Hamburg, Germany'),

(22,'Liam King','Arthur King','Cyber Security',61280111001,'Sydney, Australia'),
(23,'Mason Wright','Roger Wright','Software Engineering',61280111002,'Melbourne, Australia'),
(24,'Logan Lopez','Victor Lopez','Computer Science',61280111003,'Brisbane, Australia'),

(25,'Elijah Scott','Ronald Scott','Information Systems',14165550101,'Toronto, Canada'),
(26,'Aiden Green','Kenneth Green','Data Analytics',14165550102,'Vancouver, Canada'),
(27,'Caleb Adams','Lawrence Adams','AI & ML',14165550103,'Montreal, Canada'),

(28,'Sebastian Baker','Dennis Baker','Computer Science',81301110001,'Tokyo, Japan'),
(29,'Julian Perez','Ricardo Perez','Robotics',81301110002,'Osaka, Japan'),
(30,'Leo Turner','Stephen Turner','Information Technology',81301110003,'Nagoya, Japan'),

(31,'Henry Collins','Douglas Collins','Software Engineering',82101234001,'Seoul, South Korea'),
(32,'Alexander Stewart','Bruce Stewart','Cyber Security',82101234002,'Busan, South Korea'),

(33,'Dylan Morris','Philip Morris','Cloud Computing',55113011001,'Sao Paulo, Brazil'),
(34,'Aaron Rogers','Timothy Rogers','Computer Science',55113011002,'Rio de Janeiro, Brazil'),

(35,'Isaac Reed','Martin Reed','Data Science',390212001101,'Rome, Italy'),
(36,'Thomas Cook','Anthony Cook','Information Systems',390212001102,'Milan, Italy'),

(37,'Charles Bell','Raymond Bell','Machine Learning',31101234001,'Amsterdam, Netherlands'),
(38,'Christian Murphy','Sean Murphy','Computer Engineering',31101234002,'Rotterdam, Netherlands'),

(39,'Hunter Rivera','Oscar Rivera','AI & Robotics',521011001101,'Athens, Greece'),
(40,'Jordan Cooper','Stanley Cooper','Software Engineering',521011001102,'Thessaloniki, Greece'),

(41,'Kevin Brooks','Eric Brooks','Computer Science',46101234001,'Stockholm, Sweden'),
(42,'Adam Kelly','Patrick Kelly','Cloud Computing',46101234002,'Gothenburg, Sweden'),

(43,'Justin Foster','Harold Foster','Information Technology',47101234001,'Oslo, Norway'),
(44,'Brandon Sanders','Scott Sanders','Cyber Security',47101234002,'Bergen, Norway'),

(45,'Evan Price','Gerald Price','Data Analytics',48101234001,'Zurich, Switzerland'),
(46,'Tyler Watson','Dennis Watson','Machine Learning',48101234002,'Geneva, Switzerland'),

(47,'Connor Hughes','Alan Hughes','Computer Science',35101234001,'Dublin, Ireland'),
(48,'Zachary Ward','Bruce Ward','Software Engineering',35101234002,'Cork, Ireland'),

(49,'Ian Bennett','Victor Bennett','AI & ML',64101234001,'Helsinki, Finland'),
(50,'Jason Coleman','Howard Coleman','Computer Engineering',64101234002,'Espoo, Finland');

SELECT * FROM STUDENT;

ALTER TABLE STUDENT ADD COLUMN AGE INT;

UPDATE STUDENT
SET AGE = FLOOR(18 + (RAND() * 8));

SELECT * FROM STUDENT WHERE AGE >= 20;

SELECT * FROM STUDENT WHERE COURSE = "Computer Science";

SELECT SYSDATE() FROM DUAL;
ALTER TABLE student ADD COLUMN Create_date DATE;

UPDATE student SET
`Create_date`= DATE_ADD('2015-01-01', INTERVAL FLOOR(RAND()*DATEDIFF('2025-01-01','2015-01-01'))DAY);

CREATE TABLE EMPLOYEE