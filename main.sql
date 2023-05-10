SELECT * FROM enrollme.admins;
SELECT * FROM enrollme.users_roles;
SELECT * FROM enrollme.staff;
SELECT * FROM enrollme.roles;

SELECT * FROM enrollme.users;
SELECT * FROM enrollme.teachers;
SELECT * FROM enrollme.courses;
SELECT * FROM enrollme.rooms;
SELECT * FROM (enrollme.timetable join enrollme.courses on enrollme.timetable.course = enrollme.courses.id) 
				join enrollme.teachers on enrollme.timetable.teacher = enrollme.teachers.id;
SELECT * FROM enrollme.registrations;

-- INSERT INTO enrollme.staff
-- VALUES(1);
INSERT INTO enrollme.users
VALUES 
(1,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Admin','admin@enrollme.com',1,'Administrator','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(2,3.5,'1992-01-01 00:00:00.000000',2020,'CS','Student','faraz@enrollme.com',NULL,'Faraz Majid','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-1162')
,(3,3.8,'1992-01-01 00:00:00.000000',2020,'CS','Student','aemon@enrollme.com',NULL,'Aemon Fatima','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-1057')
,(4,3.6,'1992-01-01 00:00:00.000000',2020,'CS','Student','meeran@enrollme.com',NULL,'M. Meeran','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-2111')
,(5,3.2,'1992-01-01 00:00:00.000000',2020,'CS','Student','zawar@enrollme.com',NULL,'Zawar ALi Khan','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-1089')
,(6,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','zareen@enrollme.com',2,'Zareen Alamgir','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(7,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','ali@enrollme.com',3,'Ali Afzal','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(8,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','ishaq@enrollme.com',4,'Ishaq Raza','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(9,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','saif@enrollme.com',5,'Saif Ul Islam','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL),
(10,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','amna@enrollme.com',6,'Amna Ali','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL),
(11,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','maria@enrollme.com',7,'Maria Ali','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL),
(12,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','zeeshan@enrollme.com',8,'Zeeshan Hamid','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL),
(13,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','aliahmed@enrollme.com',9,'Ali Ahmed','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL),
(14,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','ayesha@enrollme.com',10,'Ayesha Karim','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL),
(15,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','omer@enrollme.com',11,'Omer Hamza','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL);

INSERT INTO enrollme.staff
VALUES
#(1),
(6),(7),(8),(9),(10),(11),(12),(13),(14),(15);

INSERT INTO enrollme.roles
VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_STUDENT'),
(3, 'ROLE_FACULTY');

INSERT INTO enrollme.users_roles
VALUES 
(1,1),
(2,2),
(3,2),
(4,2),
(5,2),
(6,3),
(7,3),
(8,3),
(9,3),
(10,3),
(11,3),
(12,3),
(13,3),
(14,3),
(15,3);

INSERT INTO enrollme.teachers
VALUES
(6,'EE','Zareen Alamgir'),
(7,'CS','Ali Afzal'),
(8,'CS','Ishaq Raza'),
(9,'CS','Saif Ul Islam'),
(10,'CS','Amna Ali'),
(11,'CS','Maria Ali'),
(12,'CS',"Zeeshan Hamid"),
(13,'EE',"Ali Ahmed"),
(14,'EE',"Ayesha Karim"),
(15,'EE',"Omer Hamza");

INSERT INTO enrollme.rooms
VALUES 
(1,50,'A'),
(2,50,'B'),
(3,50,'C'),
(4,50,'D'),
(5,50,'E'),
(6,50,'F'),
(7,50,'G');

INSERT INTO enrollme.courses
VALUES
(1,'CS100',3,30,'Programming Fundementals',30,'A'),
(2,'CS101',1,30,'Programming Fundementals Lab',30,'A'),
(3,'CS102',3,30,'ICT',30,'A'),
(4,'CS103',3,30,'Calculus I',30,'A'),
(5,'CS104',3,30,'Calculus II',30,'A'),
(6,'CS105',3,30,'SDA',30,'A'),
(7,'CS106',3,30,'Psychology',30,'A'),
(8,'CS107',3,30,'Applied Physics',30,'A'),
(8+1,'CS100',3,30,'Programming Fundementals',30,'B'),
(8+2,'CS101',1,30,'Programming Fundementals Lab',30,'B'),
(8+3,'CS102',3,30,'ICT',30,'B'),
(8+4,'CS103',3,30,'Calculus I',30,'B'),
(8+5,'CS104',3,30,'Calculus II',30,'B'),
(8+6,'CS105',3,30,'SDA',30,'B'),
(8+7,'CS106',3,30,'Psychology',30,'B'),
(8+8,'CS107',3,30,'Applied Physics',30,'B');


-- create database enrollme
-- # id	day	end_time	start_time	course	room	teacher
-- 2	Monday	04:30:00	03:30:00	14	1	6
-- DELETE FROM  enrollme.timetable;
INSERT INTO enrollme.timetable
VALUES
(1,'Monday','10:00:00','08:00:00',1,1,7),
(2,'Monday','12:00:00','10:00:00',3,2,9),
(3,'Monday','14:00:00','12:00:00',4,1,12),
(4,'Monday','16:00:00','14:00:00',7,2,10),
(5,'Monday','18:00:00','16:00:00',6,1,7),
#(6,'Tuesday','12:00:00','08:00:00',1,5,7),
(7,'Tuesday','14:00:00','12:00:00',2,1,12),
-- ----------------------------------- --
(8, 'Wednesday','10:00:00','08:00:00',1,1,7),
(9, 'Wednesday','12:00:00','10:00:00',3,2,9),
(10,'Wednesday','14:00:00','12:00:00',4,1,12),
#(11,'Wednesday','16:00:00','14:00:00',7,2,10),
(12,'Wednesday','18:00:00','16:00:00',6,1,7),
#(13,'Thursday','12:00:00','08:00:00',1,5,7),
(14,'Thursday','14:00:00','12:00:00',2,1,12),
-- ----------------------------------- --
#(15, 'Wednesday','10:00:00','08:00:00',1+8,2,8),
(16, 'Wednesday','12:00:00','10:00:00',3+8,1,7),
(17,'Wednesday','14:00:00','12:00:00',4+8,2,11),
(18,'Wednesday','16:00:00','14:00:00',7+8,1,12),
(19,'Wednesday','18:00:00','16:00:00',6+8,2,8),
#(20,'Thursday','12:00:00','08:00:00',1+8,6,8),
(21,'Thursday','14:00:00','12:00:00',2+8,1,11),
-- ----------------------------------- --
(22, 'Monday','10:00:00','08:00:00',1+8,2,8),
(23, 'Monday','12:00:00','10:00:00',3+8,1,7),
(24,'Monday','14:00:00','12:00:00',4+8,2,11),
(25,'Monday','16:00:00','14:00:00',7+8,1,12),
(26,'Monday','18:00:00','16:00:00',6+8,2,8),
(27,'Tuesday','12:00:00','08:00:00',1+8,6,8),
(28,'Tuesday','14:00:00','12:00:00',2+8,1,11),
-- ----------------------------------- --
(29, 'Friday','10:00:00','08:00:00',8,2,12),
(30, 'Friday','12:00:00','10:00:00',8+8,1,11),
(31, 'Friday','10:00:00','08:00:00',8,3,13),
(32, 'Friday','12:00:00','10:00:00',8+8,4,14),
(33, 'Tuesday','10:00:00','08:00:00',5,2,15),
(34, 'Tuesday','12:00:00','10:00:00',5+8,1,15),
(35, 'Thursday','10:00:00','08:00:00',5,3,15),
(36, 'Thursday','12:00:00','10:00:00',7,4,7);
#(37, 'Thursday','12:00:00','10:00:00',3,3,11);