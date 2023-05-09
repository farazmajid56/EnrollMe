SELECT * FROM enrollme.admins;
SELECT * FROM enrollme.users;
SELECT * FROM enrollme.users_roles;
SELECT * FROM enrollme.staff;
SELECT * FROM enrollme.teachers;

SELECT * FROM enrollme.courses;
SELECT * FROM enrollme.registrations;
SELECT * FROM enrollme.roles;
SELECT * FROM enrollme.rooms;
SELECT * FROM enrollme.timetable;

-- INSERT INTO enrollme.staff
-- VALUES(1);
INSERT INTO enrollme.users
VALUES 
(1,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Admin','admin@enrollme.com',1,'Administrator','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(2,3.5,'1992-01-01 00:00:00.000000',2020,'CS','Student','faraz@enrollme.com',NULL,'Faraz Majid','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-1162')
,(3,3.8,'1992-01-01 00:00:00.000000',2020,'CS','Student','aemon@enrollme.com',NULL,'Aemon Fatima','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-1057')
,(4,3.6,'1992-01-01 00:00:00.000000',2020,'CS','Student','meeran@enrollme.com',NULL,'M. Meeran','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-2111')
,(5,3.2,'1992-01-01 00:00:00.000000',2020,'CS','Student','zawar@enrollme.com',NULL,'Zawar ALi Khan','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan','20L-1089')
,(6,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','zareen@enrollme.com',NULL,'Zareen Alamgir','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(7,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','ali@enrollme.com',NULL,'Ali Afzal','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(8,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','ishaq@enrollme.com',NULL,'Ishaq Raza','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL)
,(9,NULL,'1992-01-01 00:00:00.000000',0,NULL,'Teacher','saif@enrollme.com',NULL,'Saif Ul Islam','$2a$10$bjul8VSNoO0MLklGVR5eLOcCOtVs79qpWW.gdfITpygWy8rCGGKMa','Pakistan',NULL);

INSERT INTO enrollme.staff
VALUES
(1),(6),(7),(8),(9);

INSERT INTO enrollme.users_roles
VALUES 
(1,1),(2,2),(3,2),(4,2),(5,2),(6,3),(7,3),(8,3),(9,3);

INSERT INTO enrollme.teachers
VALUES
(6,'EE','Ahmed Khan'),
(7,'CS','Ali Afzal'),
(8,'CS','Ishaq Raza'),
(9,'CS','Saif Ul Islam');

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
(1,'CS100',3,30,'Programming Fundementals',0,'A'),
(2,'CS101',1,30,'Programming Fundementals Lab',0,'A'),
(3,'CS102',3,30,'ICT',0,'A'),
(4,'CS103',3,30,'Calculus I',0,'A'),
(5,'CS104',3,30,'Calculus II',0,'A'),
(6,'CS105',3,30,'SDA',0,'A'),
(7,'CS106',3,30,'Psychology',0,'A'),
(8,'CS107',3,30,'Applied Physics',0,'A'),
(8+1,'CS100',3,30,'Programming Fundementals',0,'B'),
(8+2,'CS101',1,30,'Programming Fundementals Lab',0,'B'),
(8+3,'CS102',3,30,'ICT',0,'B'),
(8+4,'CS103',3,30,'Calculus I',0,'B'),
(8+5,'CS104',3,30,'Calculus II',0,'B'),
(8+6,'CS105',3,30,'SDA',0,'B'),
(8+7,'CS106',3,30,'Psychology',0,'B'),
(8+8,'CS107',3,30,'Applied Physics',0,'B');

INSERT INTO enrollme.roles
VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_STUDENT'),
(3, 'ROLE_FACULTY');
-- create database enrollme