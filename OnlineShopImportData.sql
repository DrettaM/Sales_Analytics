-- SalesAnalytics.sql
-- Author: Mildretta Martin
-- Date Created: 10/29/2021
-- Last Revision: 11/19/2021
-- Description: Sales analytics for Online Shop

/*************************************************************************
**************************  Load Sample Data  *****************************
**************************************************************************/

USE OnlineShop;
GO

INSERT INTO Customers ( CustID, CompanyName, FirstName, LastName, Email, Addr1, Addr2, City, State_Province, PostalCode, Country, Phone, DateCreated)
VALUES 
('C013', '','James', 'Butt', 'jbutt@gmail.com', '6649 N Blue Gum St', '', 'New Orleans', 'LA', '70116', 'US', '(504) 621-8927', '2019-01-31'),
('C015', '','Josephine', 'Darakjy', 'josephine_darakjy@darakjy.org', '4 B Blue Ridge Blvd', '', 'Brighton', 'MI', '48116', 'US', '(810) 292-9388', '2019-01-30'),
('C017',  '','Art', 'Venere','Art@venere.org', '8 W Cerritos Ave', '#54','Bridgeport', 'Nj', '08014', 'US', '(856) 636-8749', '2019-02-08'),
('C019', 'Feltz Printing Service', 'Lenna', 'Paprocki', 'Lpaprocki@hotmail.com', '639 Main St', '','Anchorage','Ak', '99501', 'US', '(907) 385-4412', '2019-02-08'),
('C021', 'Printing Dimensions', 'Donette', 'Foller', 'Donette.foller@cox.net', '34 Center St', '', 'Hamilton', 'Oh', '45011', 'US', '(513) 570-1893', '2019-02-08'),
('C023',  '', 'Simona', 'Morasca', 'Simona@morasca.com', '3 Mcauley Dr', '','Ashland', 'Oh', '44805', 'US', '(419) 503-2484', '2019-02-08'),
('C025', 'Morlong Associates', 'Mitsue', 'Tollner', 'Mitsue_tollner@yahoo.com', '7 Eads St', '','Chicago', 'Il', '60632', 'US', '(773) 573-6914', '2019-02-07'),
('C031', 'Commercial Press', 'Leota', 'Dilliard', 'Leota@hotmail.com', '7 W Jackson Blvd', '', 'San Jose','Ca', '95111', 'US', '(408) 752-3500', '2019-01-13'),
('C037', 'Truhlar And Truhlar Attys', 'Sage', 'Wieser', 'Sage_wieser@cox.net', '5 Boston Ave #88', '', 'Sioux Falls', 'Sd', '57105', 'US', '(605) 414-2147', '2019-01-14'),
('C048',  '', 'Kris', 'Marrier', 'Kris@gmail.com', '228 Runamuck Pl' , '#2808', 'Baltimore', 'Md', '21224', 'US', '(410) 655-8723', '2019-01-15');					
GO

INSERT INTO ItemCategory ( CategoryID, Description)
VALUES ('1', 'BUNNY'),
('2', 'CHICK'),
('3', 'MIXED'),
('4', 'SNOWMAN');
GO

INSERT  INTO  Inventory ( ItemSKU, CategoryID, ItemDesc, UOM, OnHand, PricePerUnit )
VALUES ('38289', '1', 'Peeps Bunny Treats Bulk Case', 'Case', '1200', '57.95'),
('57787', '3', 'Peeps Treats Mixed Case', 'CASE', '1300', '17.95'),
('21767', '4', 'Peeps Snowmen Treats Case', 'Case', '1100', '17.95'),
('58616','2','Peeps Chick Treats - Pink','Pack', '3600', '2.50'),
('56667','1','Peeps Bunny Treats - Yellow','Pack', '2700','2.50'),
('56698','2','Peeps Chick Treats - Yellow','Pack', '2100', '2.50'),
('58722','1','Peeps Bunny Treats - Pink','Pack', '900', '2.50'),
('21766','4','Peeps Snowmen Treats','Pack', '500','2.50');
GO

INSERT INTO Orders (OrderID, Customer, Item, OrderAmt, OrderDate)
Values
('50316', 'C013', '38289', '', '2019-02-26'),
('51118', 'C015', '56667', '', '2019-02-27'),
('51120', 'C017', '56667', '', '2019-02-27'),
('51425', 'C019', '56667', '', '2019-02-27'),
('51501', 'C021', '57787', '', '2019-02-27'),
('51780', 'C023', '21767', '', '2019-02-27'),
('51948', 'C025', '56698', '', '2019-02-27'),
('51950', 'C031', '58616', '', '2019-02-28'),
('51953', 'C037', '58722', '', '2019-02-28'),
('51959', 'C048', '56667', '', '2019-02-28'),
('51976', 'C013', '56667', '', '2019-02-28'),
('52107', 'C019', '58722', '', '2019-03-01'),
('52192', 'C031', '56667', '', '2019-03-01'),
('52198', 'C037', '56667', '', '2019-03-01'),
('52199', 'C013', '21767', '', '2019-03-02'),
('52200', 'C048', '56667', '', '2019-03-02'),
('52201', 'C021', '57787', '', '2019-03-02'),
('52202', 'C023', '57787', '', '2019-03-02'),
('52203', 'C017', '38289', '', '2019-03-02'),
('52204', 'C015', '21767', '', '2019-03-06'),
('52205', 'C013', '21766', '', '2019-03-06'),
('52206', 'C023', '56667', '', '2019-03-06'),
('52269', 'C025', '56667', '', '2019-03-06'),
('52270', 'C015', '56667', '', '2019-03-07'),
('52327', 'C019', '56667', '', '2019-03-08'),
('52346', 'C031', '56667', '', '2019-03-09'),
('52360', 'C037', '21766', '', '2019-03-11'),
('52361', 'C048', '56667', '', '2019-03-11'),
('52365', 'C013', '56667', '', '2019-03-11'),
('52366', 'C021', '56667', '', '2019-03-11'),
('52373', 'C048', '56667', '', '2019-03-12'),
('52392', 'C017', '56667', '', '2019-03-13'),
('52403', 'C019', '56667', '', '2019-03-15'),
('52516', 'C013', '56667', '', '2019-03-15'),
('52517', 'C021', '56667', '', '2019-03-15'),
('52560', 'C037', '56667', '', '2019-03-15'),
('52589', 'C048', '56667', '', '2019-03-15'),
('52602', 'C023', '56667', '', '2019-03-15'),
('52606', 'C013', '56667', '', '2019-02-20'),
('52608', 'C023', '56667', '', '2019-02-20'),
('52609', 'C048', '56667', '', '2019-03-13'),
('52613', 'C037', '58616', '', '2019-03-13'),
('52614', 'C031', '58616', '', '2019-02-20'),
('52615', 'C025', '58616', '', '2019-02-20'),
('52616', 'C023', '58616', '', '2019-02-20'),
('52617', 'C021', '58616', '', '2019-02-20'),
('52618', 'C017', '58616', '', '2019-02-20'),
('52619', 'C019', '58616', '', '2019-02-22'),
('52620', 'C015', '58616', '', '2019-02-22'),
('52621', 'C013', '58616', '', '2019-02-22');
GO

INSERT INTO LineItems (LineID, OrderID, CustID, ItemSKU, Quantity, OrderDate)
VALUES
('C013.001', '52606', 'C013', '56667', '1', '2019-02-20'),  
('C013.002', '52606', 'C013', '56698', '20', '2019-02-20'),  
('C017.001', '52618', 'C017', '58616', '21', '2019-02-20'),  
('C021.001', '52617', 'C021', '58616', '52', '2019-02-20'),  
('C023.001', '52608', 'C023', '56667', '3', '2019-02-20'),  
('C023.002', '52616', 'C023', '58616', '45', '2019-02-20'),  
('C023.003', '52608', 'C023', '56698', '109', '2019-02-20'), 
('C025.001', '52615', 'C025', '58616', '82', '2019-02-20'), 
('C031.001', '52614', 'C031', '58616', '17', '2019-02-20'), 
('C013.003', '52621', 'C013', '58616', '13', '2019-02-22'), 
('C015.001', '52620', 'C015', '58616', '50', '2019-02-22'), 
('C019.001', '52619', 'C019', '58616', '10', '2019-02-22'), 
('C013.005', '50316', 'C013', '38289', '3', '2019-02-26'), 
('C013.006', '50316', 'C013', '57787', '2', '2019-02-26'), 
('C015.003', '51118', 'C015', '56667', '28', '2019-02-27'), 
('C015.004', '51118', 'C015', '56698', '17', '2019-02-27'), 
('C017.002', '51120', 'C017', '56667', '11', '2019-02-27'), 
('C017.003', '51120', 'C017', '56698', '8', '2019-02-27'), 
('C019.002', '51425', 'C019', '56667', '7', '2019-02-27'), 
('C019.003', '51425', 'C019', '56698', '6', '2019-02-27'), 
('C021.002', '51501', 'C021', '57787', '2', '2019-02-27'), 
('C021.003', '51501', 'C021', '21767', '2', '2019-02-27'), 
('C023.004', '51780', 'C023', '21767', '4', '2019-02-27'), 
('C023.005', '51780', 'C023', '56698', '6', '2019-02-27'), 
('C025.002', '51948', 'C025', '56698', '20', '2019-02-27'), 
('C025.003', '51948', 'C025', '58616', '20', '2019-02-27'), 
('C013.007', '51976', 'C013', '56667', '5', '2019-02-28'), 
('C031.002', '51950', 'C031', '58616', '3', '2019-02-28'), 
('C031.003', '51950', 'C031', '56698', '2', '2019-02-28'), 
('C037.001', '51953', 'C037', '58722', '18', '2019-02-28'), 
('C037.002', '51953', 'C037', '56698', '17', '2019-02-28'), 
('C048.001', '51959', 'C048', '56667', '9', '2019-02-28'), 
('C048.002', '51959', 'C048', '56698', '9', '2019-02-28'), 
('C013.008', '51976', 'C013', '56698', '5', '2019-02-28'), 
('C019.004', '52107', 'C019', '58722', '17', '2019-03-01'), 
('C019.005', '52107', 'C019', '56698', '50', '2019-03-01'), 
('C031.004', '52192', 'C031', '56667', '50', '2019-03-01'), 
('C031.005', '52192', 'C031', '56698', '7', '2019-03-01'), 
('C037.003', '52198', 'C037', '56667', '7', '2019-03-01'), 
('C037.004', '52198', 'C037', '21766', '5', '2019-03-01'), 
('C013.009', '52199', 'C013', '21767', '1', '2019-03-02'), 
('C017.004', '52203', 'C017', '38289', '4', '2019-03-02'), 
('C021.004', '52201', 'C021', '57787', '1', '2019-03-02'), 
('C023.006', '52202', 'C023', '57787', '4', '2019-03-02'), 
('C048.003', '52200', 'C048', '56667', '10', '2019-03-02'), 
('C048.004', '52200', 'C048', '21766', '8', '2019-03-02'), 
('C013.011', '52205', 'C013', '21766', '10', '2019-03-06'), 
('C015.005', '52204', 'C015', '21767', '4', '2019-03-06'), 
('C023.007', '52206', 'C023', '56667', '3', '2019-03-06'), 
('C025.004', '52269', 'C025', '56667', '3', '2019-03-06'), 
('C015.007', '52270', 'C015', '56667', '20', '2019-03-07'), 
('C015.008', '52270', 'C015', '56698', '1', '2019-03-07'), 
('C019.006', '52327', 'C019', '56667', '129', '2019-03-08'), 
('C019.007', '52327', 'C019', '56698', '10', '2019-03-08'), 
('C031.006', '52346', 'C031', '56667', '1', '2019-03-09'), 
('C031.007', '52346', 'C031', '56698', '1', '2019-03-09'), 
('C013.013', '52365', 'C013', '56667', '3', '2019-03-11'), 
('C021.005', '52366', 'C021', '56667', '10', '2019-03-11'),
('C021.006', '52366', 'C021', '21766', '6', '2019-03-11'), 
('C037.005', '52360', 'C037', '21766', '1', '2019-03-11'), 
('C037.006', '52360', 'C037', '56698', '4', '2019-03-11'), 
('C048.005', '52361', 'C048', '56667', '27', '2019-03-11'),
('C048.006', '52361', 'C048', '56698', '4', '2019-03-11'), 
('C013.014', '52365', 'C013', '58616', '4', '2019-03-11'), 
('C048.007', '52373', 'C048', '56667', '2', '2019-03-12'), 
('C048.008', '52373', 'C048', '56698', '7', '2019-03-12'), 
('C017.005', '52392', 'C017', '56667', '16', '2019-03-13'),
('C017.006', '52392', 'C017', '21766', '5', '2019-03-13'), 
('C037.007', '52613', 'C037', '58616', '21', '2019-03-13'),
('C048.009', '52609', 'C048', '56667', '41', '2019-03-13'),
('C048.010', '52609', 'C048', '57787', '1', '2019-03-13'), 
('C013.015', '52516', 'C013', '56667', '61', '2019-03-15'),
('C019.008', '52403', 'C019', '56667', '80', '2019-03-15'),
('C019.009', '52403', 'C019', '56698', '3', '2019-03-15'), 
('C021.007', '52517', 'C021', '56667', '53', '2019-03-15'),
('C023.008', '52602', 'C023', '56667', '3', '2019-03-15'), 
('C023.009', '52602', 'C023', '56698', '3', '2019-03-15'), 
('C037.008', '52560', 'C037', '56667', '3', '2019-03-15'), 
('C048.011', '52589', 'C048', '56667', '7', '2019-03-15') 
GO

