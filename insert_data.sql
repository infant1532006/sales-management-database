INSERT INTO ProductLines
(productline,textDescription,htmlDescription,image)
VALUES
('Classic Cars','Vintage and classic model cars',NULL,NULL),
('Motorcycles','Racing and sports bikes',NULL,NULL);

INSERT INTO Products VALUES
('S10_1678','1969 Harley Davidson','Motorcycles','1:10','Min Lin Diecast','Classic Harley Davidson bike model',100,4800,6500),
('S12_1099','1968 Ford Mustang','Classic Cars','1:12','Autoart Studio','Classic Ford Mustang model',50,9500,12000);

INSERT INTO Office VALUES
('1','Chennai','+91-44-12345678','T Nagar',NULL,'Tamil Nadu','India','600017','APAC'),
('2','Bangalore','+91-80-87654321','MG Road',NULL,'Karnataka','India','560001','APAC');

INSERT INTO Employees VALUES
(1002,'Kumar','Arun','x101','arun.kumar@classic.com','1',NULL,'Sales Manager'),
(1056,'Ravi','Suresh','x102','suresh.ravi@classic.com','1',1002,'Sales Rep'),
(1076,'Sharma','Neha','x103','neha.sharma@classic.com','2',1002,'Sales Rep');

INSERT INTO Customers VALUES
(2001,'ABC Traders','Rao','Vikram','+91-9876543210','Anna Nagar',NULL,'Chennai','Tamil Nadu','600040','India',1056,150000),
(2002,'XYZ Electronics','Patel','Amit','+91-9123456789','Indiranagar',NULL,'Bangalore','Karnataka','560038','India',1076,200000);

INSERT INTO Orders VALUES
(30001,'2026-01-10','2026-01-15','2026-01-13','Shipped','Delivered on time',2001),
(30002,'2026-01-12','2026-01-18',NULL,'In Process',NULL,2002);

INSERT INTO OrderDetails VALUES
(30001,'S10_1678',2,6500,1),
(30002,'S12_1099',1,12000,1);

INSERT INTO Payments VALUES
(2001,'CHK1001','2026-01-16',13000),
(2002,'CHK1002','2026-01-17',12000);
