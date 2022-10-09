USE UniDlox
GO

BEGIN TRAN

-- Transaksi baru, salah tipe pembayaran dan salah jumlah pembelian
INSERT INTO PurchaseTransaction VALUES
('PU026','SF006','SU006','MA006','2021-11-12','Debit Card','30'),
('PU027','SF007','SU007','MA007','2021-11-14','OVO','30'),
('PU028','SF008','SU008','MA008','2020-12-01','Cryptocurrency','5'),
('PU029','SF009','SU009','MA009','2020-12-06','Flash','40'),
('PU030','SF010','SU010','MA010','2020-12-09','DANA','20')

UPDATE PurchaseTransaction
SET PaymentType='Credit Card'
WHERE PurchaseID='PU027'

UPDATE PurchaseTransaction
SET Quantity='35'
WHERE PurchaseID='PU028'

SELECT
*
FROM PurchaseTransaction

-- Pelanggan baru, tidak jadi/cancel beli
INSERT INTO SalesTransaction VALUES
('SA026','SF001','CU010','PA009','CL005','2022-01-12','2'),
('SA027','SF004','CU001','PA001','CL006','2022-01-22','5'),
('SA028','SF003','CU003','PA003','CL001','2022-02-05','2'),
('SA029','SF010','CU005','PA005','CL003','2022-02-14','1'),
('SA030','SF007','CU002','PA002','CL007','2022-03-16','1'),
('SA031','SF003','CU004','PA004','CL003','2022-02-14','3'),
('SA032','SF002','CU008','PA008','CL007','2022-03-16','2'),
('SA033','SF008','CU003','PA003','CL003','2022-02-14','1')

DELETE FROM SalesTransaction 
WHERE SalesID='SA033'

SELECT
*
FROM SalesTransaction

COMMIT

-- Salah tanggal pembelian dan salah jumlah pembelian
INSERT INTO SalesTransaction VALUES
('SA034','SF003','CU008','PA008','CL002','2022-02-11','2'),
('SA035','SF002','CU001','PA001','CL009','2022-02-28','5'),
('SA036','SF001','CU001','PA001','CL004','2022-03-10','22')

UPDATE SalesTransaction
SET TransactionDate='2022-03-01'
WHERE SalesID='SA036'

UPDATE SalesTransaction
SET Quantity='2'
WHERE SalesID='SA036'

SELECT
*
FROM SalesTransaction

COMMIT

-- salah tipe pembayaran dan salah jumlah pembelian
INSERT INTO PurchaseTransaction VALUES
('PU031','SF001','SU006','MA006','2021-12-02','DANA','30'),
('PU032','SF002','SU007','MA007','2021-12-07','OVO','30'),
('PU033','SF003','SU008','MA008','2020-12-08','Gop-Pay','5')

UPDATE PurchaseTransaction
SET PaymentType='Go-Pay' , Quantity='25'
WHERE PurchaseID='PU033'

SELECT
*
FROM SalesTransaction

COMMIT






