-- display all Sender
Select distinct Sender_ID, Sender_full_name, Phone, Address from Sender;

-- Delete a particular order
Delete from Sender where Sender_Item_name = 'MayTinhXachTay' AND Sender_Item_quantity = 1 AND Order_ID = 3;

-- Find all order that involve 'LyThuyTinh'
Select order_ID from sender where Sender_Item_ID = 1;

-- queue the priority of the orders base on time
Select * from sender ORDER BY Sent_time ASC;

-- find what a single driver had to ship
select * from shipping 
join sender ON Shipping.Order_ID = Sender.Order_ID;

-- find out which employee is working in the warehouse
Select ID, Full_name from employee where warehouse = 3;  -- any of the warehouse

-- Find the number of ship for each order
Select order_ID, count (order_ID) as 'Number of order' from receiver
group by order_ID;

-- Total purchase
Select sum(Receiver_Item_quantity) as 'purchase(s)' from receiver;

