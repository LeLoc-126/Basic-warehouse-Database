
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- Employee table 
INSERT INTO Employee ( Full_name, Age, Address, Warehouse)
VALUES ( 'Le Van A', 30, 'HN', 1),
       ('Nguyen Van B', 25, 'HCM', 2),
       ( 'Tran Van C', 20, 'HN', 1),
       ( 'Le Thi D', 21, 'HCM', 3),
       ( 'Nguyen Van A', 25, 'HCM', 3),
       ( 'Do Duy A', 27, 'HN', 3),
       ( 'Le Xuan X', 36, 'HCM', 3),
       ( 'Phung Thanh D', 40, 'HN', 1),
       ( 'Tran Kim H', 22, 'HCM', 2),
       ( 'Le Truc A', 22, 'HN', 2);
       
-- Warehouse Table 
INSERT INTO Warehouse ( Space, Address, Manager_Name, Manager_ID)
VALUES ( 1000, 'HN', 'Le Van A', 1),
       ( 500, 'HCM', 'Nguyen Van B', 2),
       ( 600, 'HN' , 'Do Duy A', 6);
       -- need somthing to link to truck
-- Truck table
INSERT INTO Shipping ( Driver_Name, Space, Order_ID)
VALUES   ('Le Thi D', 500, 11),
		 ('Hoang Tran H', 700, 1),
 		 ('Tran Kim H', 700, 2),
		 ('Nguyen Truc A', 700, 3),
		 ('Le Thi D', 500, 9),
		 ('Le Xuan N', 700, 4),
		 ('Tran Kim L', 700, 5),
		 ('Le Van L', 700, 6),
		 ('Le Khac L', 500, 10),
		 ('Le Xuan S', 700, 7),
		 ('Hoang Minh T', 700, 8);
         
-- Items table
INSERT INTO Items ( Item_Name, Weight, Size, Quantity, Item_Value, Address_from, Address_to, Details)
VALUES ( 'LyThuyTinh', 10, 'Small', 50, 50, 'HN', 'HCM', 'Fragile'),
       ( 'DienThoai', 5, 'Small', 100, 100, 'HCM', 'HN', 'Electronics'),
       ( 'MayTinhXachTay' , 10 , 'Medium' , 25 , 100 , 'HN' , 'HCM' ,'Electronics'),
	   ( 'TuLanh', 8, 'Large', 20, 80, 'DN', 'HN', 'Appliances'),
	   ( 'LaptopGaming', 12, 'Medium', 30, 70, 'HN', 'HCM', 'Electronics'),
       ( 'QuatDien', 6, 'Small', 40, 60, 'HN', 'DN', 'Home Appliances'),
       ( 'SmartWatch', 7, 'Small', 60, 40, 'DN', 'HCM', 'Wearables'),
       ( 'CameraAnh', 9, 'Medium', 15, 85, 'HCM', 'HN', 'Photography Equipment');
;

-- Sender table
INSERT INTO Sender ( Sender_full_name, Phone, Address, Sent_time, Sender_Item_ID, Sender_Item_name, Sender_Item_quantity, Order_ID)
VALUES ( 'Le Viet A', '123-456-7890', 'HN', '2023-01-01', 1, 'LyThuyTinh', 10, 1),
       ( 'Tran Anh M', '987-654-3210', 'HCM', '2023-02-01', 2, 'DienThoai', 1, 2),
       ('Le Tung A', '123-456-6543', 'HN', '2023-01-12', 3, 'MayTinhXachTay', 1, 3),
       ( 'Nguyen Van B', '234-567-8901', 'DN', '2023-03-15', 5, 'LaptopGaming',2 ,4),
       ( 'Tran Thi C', '345-678-9012', 'HCM', '2023-04-20', 4, 'TuLanh', 2, 5),
       ( 'Tran Thi C', '345-678-9012', 'HCM', '2023-04-20', 6, 'QuatDien', 3, 5),
		( 'Le Quang H', '890-123-4567', 'DN', '2023-09-15', 7, 'SmartWatch', 5, 6),
		( 'Le Quang H', '890-123-4567', 'DN', '2023-09-15', 8, 'CameraAnh', 4, 6),
		( 'Le Quang H', '890-123-4567', 'DN', '2023-09-15', 1, 'LyThuyTinh', 2, 6),
		( 'Nguyen Thu I', '901-234-5678', 'HCM', '2023-10-20', 2, 'DienThoai', 10, 7),
		( 'Pham Van J', '123-456-7890', 'HN', '2023-11-25', 3, 'MayTinhXachTay', 2, 8),
		( 'Le Thi K', '234-567-8901', 'DN', '2023-12-30', 5, 'LaptopGaming', 2, 9),
		( 'Tran Van L', '345-678-9012', 'HCM', '2024-01-05', 4, 'TuLanh',1 ,10),
		( 'Tran Van L', '345-678-9012', 'HCM', '2024-01-05', 6, 'QuatDien',8 , 10),
		( 'Tran Minh O', '678-901-2345', 'HCM', '2024-04-20', 7, 'SmartWatch', 4, 11),
		( 'Tran Minh O', '678-901-2345', 'HCM', '2024-04-20', 8, 'CameraAnh', 7, 11)
        ;

-- RECEIVER table
INSERT INTO RECEIVER ( Receiver_full_name, Phone, Address, Receiver_Item_ID, Receiver_Item_name, Receiver_Item_quantity, Order_ID)
VALUES ( 'Tran Thi A', '555-123-4567', 'HCM', 1, 'LyThuyTinh', 10, 1),
       ( 'Phung Kim X', '555-987-6543', 'HN', 2, 'DienThoai',1 ,2),
       ( 'Tran Van B' , '677-891-4567', 'HCM', 3 , 'MayTinhXachTay', 1, 3),
		( 'Nguyen Thi C', '555-123-4567', 'DN', 4, 'TuLanh',2 ,5),
		( 'Le Van D', '555-234-5678', 'HN', 5, 'LaptopGaming', 2, 4),
		( 'Hoang Thi E' , '666-345-6789', 'HCM', 6 , 'QuatDien',3 ,5),
		( 'Vu Van F', '777-456-7890', 'DN', 7, 'SmartWatch', 8, 6),
		( 'Bui Thi G', '888-567-8901', 'HCM', 8, 'CameraAnh', 3, 6),
		( 'Do Van H', '999-678-9012', 'DN', 1, 'LyThuyTinh',2 ,6),
		( 'Nguyen Van I', '111-789-0123', 'HN', 2, 'DienThoai', 5, 7),
		( 'Tran Thi K', '222-890-1234', 'HCM', 3, 'MayTinhXachTay', 1, 18),
		( 'Pham Van L', '333-901-2345', 'DN', 4, 'TuLanh', 2, 10),
		( 'Le Thi M', '444-012-3456', 'HN', 5, 'LaptopGaming', 2, 9),
		( 'Nguyen Van N', '555-123-4567', 'HCM', 6, 'QuatDien', 2, 10),
		( 'Tran Van P', '666-234-5678', 'DN', 7, 'SmartWatch', 4, 11),
		( 'Do Thi W', '777-234-5678', 'DN', 1, 'LyThuyTinh', 5, 11);
        
        
        select * from Employee, items,receiver,sender,shipping,warehouse
        
        
	
        