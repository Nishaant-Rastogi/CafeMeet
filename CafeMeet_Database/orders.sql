drop table if exists Orders;
CREATE TABLE Orders(
Cafe_ID VARCHAR(100) NOT NULL,
Customer_ID VARCHAR(100) NOT NULL,
Reservation_ID VARCHAR(100) NOT NULL,
Order_ID VARCHAR(100) PRIMARY KEY,
Date_Time DATETIME NOT NULL,
FOREIGN KEY (Cafe_ID) REFERENCES Cafe(Cafe_ID) ON DELETE CASCADE,
FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID) ON DELETE CASCADE,
FOREIGN KEY (Reservation_ID) REFERENCES Reservations(Reservation_ID) ON DELETE CASCADE
);