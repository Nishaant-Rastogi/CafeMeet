drop table if exists Cafe_Features;
CREATE TABLE Cafe_Features(
Seating_Type VARCHAR(100) NOT NULL,
Amenities VARCHAR(200) NOT NULL,
Catering bit,
Alcohol_Served bit,
FOREIGN KEY (Cafe_ID) REFERENCES Cafe(Cafe_ID) ON DELETE CASCADE
);

INSERT INTO Cafe_Features
VALUES

("10001", "Indoor", "Home Delivery, Indoor Seating, Desserts and Bakes, Takeaway Available", 1, 0);