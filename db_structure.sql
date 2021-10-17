BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "JobsHistory" (
	"field1"	TEXT,
	"field2"	TEXT,
	"field3"	INTEGER,
	"field4"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Locations" (
	"field1"	TEXT,
	"field2"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Jobs" (
	"field1"	INTEGER,
	"field2"	TEXT,
	"field3"	INTEGER,
	"field4"	INTEGER
);
CREATE TABLE IF NOT EXISTS "Departments" (
	"field1"	INTEGER,
	"field2"	TEXT,
	"field3"	INTEGER,
	"field4"	TEXT
);
CREATE TABLE IF NOT EXISTS "Employees" (
	"field1"	TEXT,
	"field2"	TEXT,
	"field3"	TEXT,
	"field4"	INTEGER,
	"field5"	TEXT,
	"field6"	TEXT,
	"field7"	TEXT,
	"field8"	INTEGER,
	"field9"	INTEGER,
	"field10"	INTEGER,
	"field11"	INTEGER
);
INSERT INTO "JobsHistory" VALUES ('E1001','08/01/2000',100,2);
INSERT INTO "JobsHistory" VALUES ('E1002','08/01/2001',200,5);
INSERT INTO "JobsHistory" VALUES ('E1003','08/16/2001',300,5);
INSERT INTO "JobsHistory" VALUES ('E1004','08/16/2000',400,5);
INSERT INTO "JobsHistory" VALUES ('E1005','05/30/2000',500,2);
INSERT INTO "JobsHistory" VALUES ('E1006','08/16/2001',600,2);
INSERT INTO "JobsHistory" VALUES ('E1007','05/30/2002',650,7);
INSERT INTO "JobsHistory" VALUES ('E1008','05/06/2010',660,7);
INSERT INTO "JobsHistory" VALUES ('E1009','08/16/2016',234,7);
INSERT INTO "JobsHistory" VALUES ('E1010','08/16/2016',220,5);
INSERT INTO "Locations" VALUES ('L0001',2);
INSERT INTO "Locations" VALUES ('L0002',5);
INSERT INTO "Locations" VALUES ('L0003',7);
INSERT INTO "Jobs" VALUES (100,'Sr. Architect',60000,100000);
INSERT INTO "Jobs" VALUES (200,'Sr.Software Developer',60000,80000);
INSERT INTO "Jobs" VALUES (300,'Jr.Software Developer',40000,60000);
INSERT INTO "Jobs" VALUES (400,'Jr.Software Developer',40000,60000);
INSERT INTO "Jobs" VALUES (500,'Jr. Architect',50000,70000);
INSERT INTO "Jobs" VALUES (600,'Lead Architect',70000,100000);
INSERT INTO "Jobs" VALUES (650,'Jr. Designer',60000,70000);
INSERT INTO "Jobs" VALUES (660,'Jr. Designer',60000,70000);
INSERT INTO "Jobs" VALUES (234,'Sr. Designer',70000,90000);
INSERT INTO "Jobs" VALUES (220,'Sr. Designer',70000,90000);
INSERT INTO "Departments" VALUES (2,'Architect Group',30001,'L0001');
INSERT INTO "Departments" VALUES (5,'Software Group',30002,'L0002');
INSERT INTO "Departments" VALUES (7,'Design Team',30003,'L0003');
INSERT INTO "Employees" VALUES ('E1001','John','Thomas',123456,'01/09/1976','M','5631 Rice, OakPark,IL',100,100000,30001,2);
INSERT INTO "Employees" VALUES ('E1002','Alice','James',123457,'07/31/1972','F','980 Berry ln, Elgin,IL',200,80000,30002,5);
INSERT INTO "Employees" VALUES ('E1003','Steve','Wells',123458,'08/10/1980','M','291 Springs, Gary,IL',300,50000,30002,5);
INSERT INTO "Employees" VALUES ('E1004','Santosh','Kumar',123459,'07/20/1985','M','511 Aurora Av, Aurora,IL',400,60000,30004,5);
INSERT INTO "Employees" VALUES ('E1005','Ahmed','Hussain',123410,'01/04/1981','M','216 Oak Tree, Geneva,IL',500,70000,30001,2);
INSERT INTO "Employees" VALUES ('E1006','Nancy','Allen',123411,'02/06/1978','F','111 Green Pl, Elgin,IL',600,90000,30001,2);
INSERT INTO "Employees" VALUES ('E1007','Mary','Thomas',123412,'05/05/1975','F','100 Rose Pl, Gary,IL',650,65000,30003,7);
INSERT INTO "Employees" VALUES ('E1008','Bharath','Gupta',123413,'05/06/1985','M','145 Berry Ln, Naperville,IL',660,65000,30003,7);
INSERT INTO "Employees" VALUES ('E1009','Andrea','Jones',123414,'07/09/1990','F','120 Fall Creek, Gary,IL',234,70000,30003,7);
INSERT INTO "Employees" VALUES ('E1010','Ann','Jacob',123415,'03/30/1982','F','111 Britany Springs,Elgin,IL',220,70000,30004,5);
COMMIT;
