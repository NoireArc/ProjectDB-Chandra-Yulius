USE UniDlox
GO

INSERT INTO StaffDetail VALUES
('SF001','Samuel Loren','081234567899','Kutagara No.30','19','Male','700000'),
('SF002','Ricardo sevil','081356781927','Cipto No.38','18','Male','550000'),
('SF003','Leonardo Ravy','082134586960','M.Toha No.11','35','Male','500000'),
('SF004','Alexa Sylvie','082233445566','Ahmad Yani No.2','12','Female','150000'),
('SF005','Rowan Devin','082050587327','Pemuda No.77','20','Male','750000'),
('SF006','Rivaldo Toba','08912384905','Diponegoro No.5','24','Male','850000'),
('SF007','Michelle Livy','082043849300','J.Sudirman No.9','22','Female','300000'),
('SF008','Katherine Celly','089104849307','Nusantara No.87','27','Female','450000'),
('SF009','David Sean','082142839209','Cekik No.19','45','Male','950000'),
('SF010','Jessica Priscille','083138495051','Panjaitan No.1','17','Female','200000')

SELECT
*
FROM StaffDetail

INSERT INTO SupplierDetail VALUES
('SU001','MNC Clothes','085157582920','Wahidin No.29'),
('SU002','Lex Shop','081299988112','Zamrud No.18'),
('SU003','R&V Clothing','082138588713','Bunga No.99'),
('SU004','Kids Clothing','081212311657','Hasanudin No.3'),
('SU005','SLX Jersey','082120209890','Mutiara No.14'),
('SU006','MZY Shop','081197695231','Salatiga No.54'),
('SU007','Raja Store','088157642718','Teratai No.38'),
('SU008','Zhara Shirt','085150592988','Drajat No.11'),
('SU009','Niki Shop','081231415277','Simaja No.57'),
('SU010','My Shirts','081324783260','Pegambiran No.2')

SELECT
*
FROM SupplierDetail

INSERT INTO ClothDetail VALUES
('CL001','Jersey Bola','200','150000'),
('CL002','Kemeja Panjang','150','100000'),
('CL003','T-Shirt','100','95000'),
('CL004','Baju Anak','220','95000'),
('CL005','Baju Batik','150','125000'),
('CL006','Sweater','100','85000'),
('CL007','Celana Jeans','100','80000'),
('CL008','Celana Training','100','90000'),
('CL009','Cardigan','150','85000'),
('CL010','Kemeja Flanel','205','155000')

SELECT
*
FROM ClothDetail

INSERT INTO MaterialDetail VALUES
('MA001','Cotton','20000'),
('MA002','Denim','30000'),
('MA003','Leather','65000'),
('MA004','Wool','40000'),
('MA005','Flax','20000'),
('MA006','Ramie','25000'),
('MA007','Silk','35000'),
('MA008','Nylon','20000'),
('MA009','Fur','35000'),
('MA010','Polyester','30000')

SELECT
*
FROM MaterialDetail

INSERT INTO CustomerDetail VALUES
('CU001','Livai Aman','085051678394','Slamet No.1','Male','livai.aman@gmail.com','2001-11-29'),
('CU002','Cecillia Reeves','081257756898','Kalijaga No.18','Female','cecillia.reeves@yahoo.com','2005-09-05'),
('CU003','Dave Veen','082198761234','Perum No.35','Male','dave.veen@yahoo.com','2009-01-15'),
('CU004','Avillia Vey','081239861935','Soepomo No.12','Female','avillia.vey@gmail.com','2006-06-05'),
('CU005','Karen Daimond','082021258734','Saharjo No.23','Female','karen.daimond@yahoo.com','1998-01-03'),
('CU006','Kevin Teen','085183654829','Sartono No.51','Male','kevin.teen@gmail.com','1990-05-25'),
('CU007','Michael Budi','082148390221','Cemara No.92','Male','michael.budi@gmail.com','2002-07-27'),
('CU008','Agung Firman','085199881522','Garuda No.61','Male','agung.firman@yahoo.com','1985-05-20'),
('CU009','Jessi Bell','081298989091','Intan No.11','Female','jessi.bell@gmail.com','2003-11-22'),
('CU010','Monica Scott','082157677891','Soedarto No.37','Female','monica.scott@gmail.com','2001-12-17')

SELECT
*
FROM CustomerDetail

INSERT INTO PaymentInfo VALUES
('PA001','DANA'),
('PA002','OVO'),
('PA003','Go-Pay'),
('PA004','Shopee-Pay'),
('PA005','Cash'),
('PA006','Debit Card'),
('PA007','Credit Card'),
('PA008','Cryptocurrency'),
('PA009','Flash')

SELECT
*
FROM PaymentInfo

INSERT INTO PurchaseTransaction VALUES
('PU001','SF001','SU001','MA001','2019-01-29','PA001','30'),
('PU002','SF002','SU002','MA002','2019-02-05','PA002','50'),
('PU003','SF003','SU003','MA003','2019-02-15','PA003','40'),
('PU004','SF004','SU004','MA004','2019-03-04','PA004','25'),
('PU005','SF005','SU005','MA005','2019-03-21','PA005','20'),
('PU006','SF006','SU006','MA006','2019-04-10','PA006','30'),
('PU007','SF007','SU007','MA007','2019-04-27','PA007','55'),
('PU008','SF008','SU008','MA008','2019-05-03','PA008','50'),
('PU009','SF009','SU009','MA009','2019-05-12','PA009','25'),
('PU010','SF010','SU010','MA010','2019-05-20','PA001','25'),
('PU011','SF001','SU001','MA001','2019-05-23','PA001','10'),
('PU012','SF002','SU002','MA002','2019-05-27','PA002','40'),
('PU013','SF003','SU003','MA003','2019-06-04','PA003','20'),
('PU014','SF004','SU004','MA004','2021-06-28','PA004','30'),
('PU015','SF005','SU005','MA005','2021-07-11','PA005','35'),
('PU016','SF006','SU006','MA006','2021-07-19','PA006','20'),
('PU017','SF007','SU007','MA007','2021-08-12','PA007','15'),
('PU018','SF008','SU008','MA008','2021-08-20','PA008','20'),
('PU019','SF009','SU009','MA009','2021-09-12','PA009','15'),
('PU020','SF010','SU010','MA010','2021-10-06','PA001','10'),
('PU021','SF001','SU001','MA001','2021-10-15','PA001','10'),
('PU022','SF002','SU002','MA002','2021-10-31','PA002','40'),
('PU023','SF003','SU003','MA003','2020-11-01','PA003','25'),
('PU024','SF004','SU004','MA004','2020-11-06','PA004','35'),
('PU025','SF005','SU005','MA005','2020-11-11','PA005','50')

SELECT
*
FROM PurchaseTransaction

INSERT INTO SalesTransaction VALUES
('SA001','SF001','CU001','PA001','CL001','2020-12-29','5'),
('SA002','SF002','CU002','PA002','CL002','2021-01-05','1'),
('SA003','SF003','CU005','PA005','CL005','2021-01-15','1'),
('SA004','SF005','CU007','PA007','CL009','2021-02-04','1'),
('SA005','SF007','CU001','PA001','CL010','2021-02-11','1'),
('SA006','SF008','CU010','PA009','CL001','2021-02-20','2'),
('SA007','SF009','CU002','PA002','CL003','2021-03-17','2'),
('SA008','SF010','CU006','PA006','CL008','2021-03-20','5'),
('SA009','SF006','CU007','PA007','CL003','2021-04-22','2'),
('SA010','SF004','CU008','PA008','CL006','2021-04-27','2'),
('SA011','SF001','CU003','PA003','CL001','2021-05-19','1'),
('SA012','SF003','CU009','PA009','CL004','2021-05-20','4'),
('SA013','SF010','CU004','PA004','CL007','2021-06-02','2'),
('SA014','SF007','CU001','PA001','CL002','2021-06-19','6'),
('SA015','SF008','CU002','PA002','CL008','2021-07-07','3'),
('SA016','SF002','CU005','PA005','CL007','2021-08-21','1'),
('SA017','SF005','CU003','PA003','CL006','2021-09-27','1'),
('SA018','SF004','CU007','PA007','CL004','2021-10-20','2'),
('SA019','SF010','CU010','PA009','CL005','2021-11-22','2'),
('SA020','SF005','CU009','PA009','CL001','2021-12-04','1'),
('SA021','SF006','CU008','PA008','CL003','2021-12-12','1'),
('SA022','SF007','CU005','PA005','CL009','2021-12-31','4'),
('SA023','SF003','CU004','PA004','CL010','2022-01-01','4'),
('SA024','SF008','CU001','PA001','CL007','2022-01-05','3'),
('SA025','SF009','CU007','PA007','CL008','2022-01-09','2')

SELECT
*
FROM SalesTransaction



