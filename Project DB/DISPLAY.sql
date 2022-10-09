USE UniDlox
GO

--1
Select SD.StaffID, StaffName, StaffAddress, SupplierName, [total purchase] = count(PurchaseID)
From  StaffDetail SD join PurchaseTransaction PT on SD.StaffID = PT.StaffID join SupplierDetail on SupplierDetail.SupplierID = PT.SupplierID
Where month(TransactionDate) = 11 AND Right (SD.StaffID, 1) in ('0','2','4', '6', '8')
Group by SD.StaffID, StaffName, StaffAddress, SupplierName

--2
Select SalesID, CustomerName, [Total Sales Price] = Sum(ClothPrice*Quantity)
From SalesTransaction join CustomerDetail on SalesTransaction.CustomerID = CustomerDetail.CustomerID join ClothDetail on ClothDetail.ClothID = SalesTransaction.CLothID
Where CustomerName like '%m%'
Group by SalesID, CustomerName
HAVING Sum(ClothPrice*Quantity) >= 2000000

--3
Select [Month] = Month(TransactionDate) , [Transaction Count] = Count(*), [Material Sold] = Sum(Quantity)
From StaffDetail join PurchaseTransaction on StaffDetail.StaffID = PurchaseTransaction.StaffID 
join MaterialDetails on PurchaseTransaction.MaterialID = MaterialDetails.MaterialID 
Where StaffAge Between 25 and 30 AND MaterialPrice >= 150000
Group by TransactionDate

--4
Select [CustomerName]=Lower(CustomerName), CustomerEmail, CustomerAddress, [Cloth Bought Count] = Count(*), [Total Price] = Sum(Quantity*ClothPrice)
From CustomerDetail join SalesTransaction on CustomerDetail.CustomerID = SalesTransaction.CustomerID join ClothDetail on SalesTransaction.ClothID = ClothDetail.ClothID join PaymentInfo on SalesTransaction.PaymentID = PaymentInfo.PaymentID
Where PaymentType in ('Cryptocurrency', 'Cash', 'Shopee-Pay')
Group by CustomerName, CustomerEmail, CustomerAddress

--5
Select PurchaseID, PurchaseDate, StaffName, PaymentTypeName 
From StaffDetail join PurchaseTransaction on StaffDetail.StaffID = PurchaseTransaction.StaffID,(
Select Average = AVG(StaffSalary)
From StaffDetail
Where GetDate() - StaffAge > 1996
) as AvgSalary
Where StaffGender like 'Female' AND StaffSalary>AvgSalary.Average


--6-
SELECT SalesTransaction.SalesID, SalesTransaction.TransactionDate, CustomerDetail.CustomerName, CustomerDetail.CustomerGender
FROM SalesTransaction
INNER JOIN CustomerDetail
ON SalesTransaction.CustomerID=CustomerDetail.CustomerID
WHERE YEAR(TransactionDate) = 2021 AND DAY(TransactionDate) = 15
ORDER BY Quantity 

--7
SELECT PurchaseID, SupplierName,  replace(SupplierPhoneNumber, '08', '+628')AS SupplierPhoneNumber, TransactionDate, Quantity 
FROM PurchaseTransaction
INNER JOIN SupplierDetail
ON PurchaseTransaction.SupplierID=SupplierDetail.SupplierID
ORDER BY Quantity 

--8
SELECT 
(CASE
WHEN CustomerGender='male' THEN 'Mr.'+CustomerName
WHEN CustomerGender='female' THEN 'Mrs.'+CustomerName
ELSE CustomerName
END) AS CustomerName,CustomerGender, CustomerPhoneNumber, CustomerAddress, CONVERT(VARCHAR, GETDATE(), 1) AS CustomerDOB--, Quantity 
FROM CustomerDetail

INNER JOIN ClothDetail
ON ClothDetail.CustomerID=CustomerDetail.CustomerID
--ORDER BY Quantity 

--9
CREATE VIEW [ViewCustomerTransaction] AS
SELECT CustomerID, CustomerName, CustomerEmail, CustomerDOB--, Minimum Quantity, Maximum Quantity
FROM CustomerDetail
WHERE YEAR(CustomerDOB) = 2002

SELECT * FROM [ViewCustomerTransaction];

--10
CREATE VIEW [ViewFemaleStaffTransaction] AS
SELECT StaffID, UPPER(StaffName) AS StaffName, 'Rp.' + [StaffSalary] + ',00' AS StaffSalary,
FROM StaffDetail
WHERE GetDate() - StaffAge > 1996
) AS AvgSalary
WHERE StaffGender like 'Female' AND StaffSalary>AvgSalary.Average

SELECT * FROM [ViewFemaleStaffTransaction];