drop table if exists Reservations;
CREATE TABLE Reservations(
Reservation_ID VARCHAR(100) NOT NULL PRIMARY KEY,
Date_Time DATETIME NOT NULL,
Reservation_Duration DATETIME NOT NULL,
Number_of_people INT NOT NULL
);