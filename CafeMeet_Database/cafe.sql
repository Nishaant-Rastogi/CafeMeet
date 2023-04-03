drop table if exists Cafe;
CREATE TABLE Cafe(
Cafe_ID VARCHAR(100) NOT NULL PRIMARY KEY,
Cafe_Name VARCHAR(100) NOT NULL,
Cafe_Address VARCHAR(200) NOT NULL,
ContactNo VARCHAR(100) NOT NULL,
Cafe_Timings VARCHAR(100) NOT NULL,
Cafe_Description VARCHAR(200) NOT NULL,
Cafe_Cuisine VARCHAR(100) NOT NULL,
Number_of_tables int NOT NULL,
Avg_Cost_PP int NOT NULL
);


INSERT INTO Cafe(Cafe_ID, Cafe_Name, Cafe_Address, ContactNo, Cafe_Timings, Cafe_Description, Cafe_Cuisine, Number_of_tables, Avg_Cost_PP)
VALUES

('10001', "Pavlova", "Pavlova, Greater Kailash 2 (GK2), New Delhi", "1146018223", "9am – 11pm", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Ice Creams, Beverages, Waffles", 15, 400),
('10002', "The Great Cafe", "The Great Cafe, Kailash Colony, New Delhi", "1140043705", "9am – 11pm", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Fast Food, Beverages, Waffles", 15, 150),
('10003', "The Big Chill", "The Big Chill, Kailash Colony, New Delhi", "1129241040", "12noon – 10pm", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Italian, Continental, Desserts, Beverages", 15, 1200),
('10004', "Third Wave Coffee", "Third Wave Coffee, Lala Lajpat Rai Marg, New Delhi", "9620996922", "24 Hours", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Cafe, Coffee, Fast Food, Pizza, Sandwich, Tea", 15, 425),
('10005', "Cafe Bonita", "Cafe Bonita, Malviya Nagar, New Delhi", "9871957363", "11am – 10:15pm", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Fast Food, Street Food, Beverages", 15, 325),
('10006', "Blue Tokai Coffee Roasters", "Blue Tokai Coffee Roasters, M Block Market, Greater Kailash 2 (GK2), New Delhi", "9315971957", "7am – 1am", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Cafe, Coffee, Beverages, Continental, Pizza, Fast Food, Bakery, Desserts", 15, 550),
('10007', "Chaayos", "Chaayos, Saket, New Delhi", "9599598307", "8am – 11pm", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Tea, Fast Food, Cafe, Beverages, Rolls, Coffee", 15, 350),
('10008', "Chai Point", "Chai Point, Kalkaji, New Delhi", "1146113900", "24 Hours", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Tea, Beverages, Shake, Fast Food, Rolls, Desserts, Coffee", 15, 400),
('10009', "Starbucks Coffee", "Starbucks Coffee, M Block Market, Greater Kailash 2 (GK2), New Delhi", "8657995571", "8:30am – 9pm", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Cafe, Coffee, Fast Food, Desserts, Beverages", 15, 450),
('10010', "Uncafe", "Uncafe, Green Park, New Delhi", "9667437772", "8am – 10pm", "We pride ourselves on providing organic, fair trade tea and coffee. We work with local dairies and bakeries to source the freshest and tastiest additions to your coffee. ", "Cafe, Coffee, Salad, Healthy Food, Wraps, Desserts, Beverages", 15, 550);