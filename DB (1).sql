drop database if exists whdbtest;
create database if not exists whdbtest;
use whdbtest;

CREATE TABLE Employee (
ID INT not null auto_increment unique,
Full_name VARCHAR(50) ,
Age int , 
Address VARCHAR(50) ,
Warehouse INT,
PRIMARY KEY (ID),
INDEX Full_name (Full_name)
);

CREATE TABLE Items (
ID INT not null auto_increment unique,
Item_Name VARCHAR (50) ,
Weight INT ,
Size VARCHAR(10) ,
Quantity INT ,
Item_Value INT ,
Address_from VARCHAR(50) ,
Address_to VARCHAR(50) ,
Details VARCHAR(50) ,
PRIMARY KEY (ID ASC) ,
INDEX Item_name (Item_name),
INDEX Address_from (Address_from) ,
INDEX Address_to (Address_to),
INDEX Quantity(Quantity)
);

CREATE TABLE Sender (
Sender_ID INT not null auto_increment unique,
Sender_full_name VARCHAR(50) ,
Phone VARCHAR(20) , 
Address VARCHAR(50) ,
Sent_time date ,
PRIMARY KEY (Sender_ID ASC),
Sender_Item_ID INT not null ,
Sender_Item_name VARCHAR(50) not null,
Sender_Item_quantity INT not null,
Order_ID Int not null,
INDEX Order_ID ( Order_ID ) ,
INDEX Sender_Item_quantity (Sender_Item_quantity),
Foreign Key (Sender_Item_ID) references Items(ID),
Foreign Key (Sender_Item_name) references Items(Item_name) ,
Foreign Key (Sender_Item_quantity) references Items(Quantity),
Foreign Key (Address) references Items(Address_from)
);

CREATE TABLE RECEIVER (
Receiver_ID INT not null auto_increment unique,
Receiver_full_name VARCHAR(50) ,
Phone VARCHAR(20) , 
Address VARCHAR(50) ,
primary key (Receiver_ID),
Receiver_Item_ID INT not null,
Receiver_Item_name VARCHAR(50) not null,
Receiver_Item_quantity INT not null,
Order_ID INT not null,
INDEX (Receiver_ID ASC),
Foreign Key (Receiver_Item_ID) references Items(ID),
Foreign Key (Receiver_Item_name) references Items(Item_name) ,
Foreign Key (Receiver_Item_quantity) references Items(Quantity),
Foreign Key (Address) references Items(Address_to)
);

CREATE TABLE Shipping (
ID INT not null auto_increment unique ,
Driver_Name VARCHAR(70) ,
Space INT ,
Order_ID int,
warehouse int,
INDEX Order_ID (Order_ID),
Foreign Key (Driver_Name) references Employee(Full_name),
Foreign Key (ID) references Employee(ID),
Foreign Key (Order_ID) references Sender(Order_ID),
Primary Key (ID ASC)
);

CREATE TABLE Warehouse (
ID INT not null auto_increment unique ,
Space INT ,
Address VARCHAR(50),
Manager_Name VARCHAR(50),
Manager_ID INT,
Foreign key (Manager_Name) REFERENCES Employee(Full_name) ,
Foreign key (Manager_ID) REFERENCES Employee(ID),
Primary key (ID)
);



