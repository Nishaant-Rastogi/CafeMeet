drop table if exists Customers;
CREATE TABLE Customers(
Customer_ID VARCHAR(100) PRIMARY KEY,
Customer_Name VARCHAR(100) NOT NULL,
Customer_Email VARCHAR(100) NOT NULL,
Customer_Age INT NOT NULL,
ContactNo VARCHAR(100) NOT NULL,
Password VARCHAR(100) NOT NULL
);

INSERT INTO Customers(Customer_ID, Customer_Name, Customer_Email, Customer_Age, ContactNo, Password)
VALUES
("100001", "Nishaant Rastogi", "nishaant20091@iiitd.ac.in", 20, "9999999999", "thala123");