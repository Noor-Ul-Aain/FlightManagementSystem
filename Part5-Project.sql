create database FlightManagementSystem;
use FlightManagementSystem;

create table aircraft(A_ID varchar(50) primary key, manufacturer varchar(50), model varchar(50), maxCapacity int, maxRange int, fuelCapacty int);
insert into aircraft(A_ID, manufacturer, model, maxCapacity, maxRange, fuelCapacty) values
('N12345', 'Boeing', '737', 180, 5460, 25000)
,('N67890', 'Airbus', 'A320', 150, 3900, 27000)
,('N24680', 'Boeing', '787', 240, 7670, 12000)
,('N13579', 'Embraer', 'E190', 100, 2590, 9500)
,('N24601', 'Bombardier', 'CRJ700', 70, 2250, 32500)
,('N11223', 'Airbus', 'A330', 300, 11750, 48000)
,('N33445', 'Boeing', '777', 396, 9450, 216000)
,('N55667', 'Embraer', 'E175', 78, 2440, 320000)
,('N77889', 'Bombardier', 'CRJ900', 76, 2865, 61500)
,('N10111', 'Airbus', 'A321', 220, 5950, 710000)
,('N12121', 'Boeing', '747', 660, 14215, 80800)
,('N14141', 'Embraer', 'E195', 124, 2650, 53500)
,('N16161', 'Bombardier', 'CRJ1000', 104, 2850, 550000)
,('N18181', 'Airbus', 'A380', 853, 15200, 549000)
,('N20202', 'Boeing', '737 MAX', 230, 7025, 39000)
,('N22222', 'Embraer', 'E170', 66, 3930, 8000)
,('N22829', 'Bombardier', 'CRJ200', 50, 1930, 17000)
,('N10240', 'Airbus', 'A319', 124, 6850, 715000)
,('N94001', 'Boeing', '767', 375, 11850, 320000)
,('N63101', 'Embraer', 'E135', 37, 2419, 61500);



create table flights(F_number varchar(20) primary key, DepartureAirport varchar(50), arrivalAirport varchar(50), NumOfSeats int, DepartureTime time, arrivalTime time);
alter table flights add column A_ID VARCHAR(50);
alter table flights add foreign key (A_ID) references aircraft(A_ID);
insert into flights(F_number, DepartureAirport, arrivalAirport, NumOfSeats, DepartureTime, arrivalTime) values
('AA101', 'LAX', 'JFK', 150, '08:00:00', '16:30:00')
,('AA102', 'JFK', 'LAX', 150, '10:00:00', '18:30:00')
,('DL201', 'ATL', 'LAX', 200, '07:30:00', '11:00:00')
,('DL202', 'LAX', 'ATL', 200, '13:00:00', '16:30:00')
,('UA301', 'SFO', 'ORD', 175, '09:00:00', '16:00:00')
,('UA302', 'ORD', 'SFO', 175, '12:00:00', '19:00:00')
,('BA401', 'LHR', 'JFK', 250, '11:00:00', '18:00:00')
,('BA402', 'JFK', 'LHR', 250, '14:00:00', '21:00:00')
,('AF501', 'CDG', 'JFK', 180, '10:30:00', '17:30:00')
,('AF502', 'JFK', 'CDG', 180, '14:30:00', '21:30:00')
,('EK601', 'DXB', 'LAX', 300, '08:30:00', '16:00:00')
,('EK602', 'LAX', 'DXB', 300, '13:30:00', '21:00:00')
,('TK701', 'IST', 'JFK', 190, '09:30:00', '17:30:00')
,('TK702', 'JFK', 'IST', 190, '13:30:00', '21:30:00')
,('SQ801', 'SIN', 'LAX', 220, '07:00:00', '15:00:00')
,('SQ802', 'LAX', 'SIN', 220, '12:00:00', '20:00:00')
,('QF901', 'SYD', 'LAX', 260, '06:30:00', '13:30:00')
,('QF902', 'LAX', 'SYD', 260, '15:30:00', '22:30:00')
,('EY1001', 'AUH', 'JFK', 200, '10:00:00', '18:30:00')
,('FL013', 'IAH', 'ORD', 180, '07:00:00', '10:00:00');



create table passengers(P_ID int primary key, P_phoneNum int(12), P_firstName varchar(15), P_lastName varchar(15), P_address varchar(50));
insert into passengers(P_ID, P_phoneNum, P_firstName, P_lastName, P_address) values
(1, 14567890, 'John', 'Smith', '123 Main St.')
,(2, 23456789, 'Jane', 'Doe', '456 Elm St.')
,(3, 34567812, 'Bob', 'Johnson', '789 Oak St.')
,(4, 47890123, 'Mary', 'White', '321 Maple St.')
,(5, 56781234, 'Joe', 'Black', '654 Pine St.')
,(6, 67891345, 'Sara', 'Green', '987 Cedar St.')
,(7, 78901256, 'David', 'Brown', '159 Spruce St.')
,(8, 89583467, 'Kate', 'Wilson', '357 Birch St.')
,(9, 90123958, 'Jimmy', 'Harris', '864 Walnut St.')
,(10, 19345671, 'Emily', 'Young', '975 Pineapple St.')
,(11, 20256712, 'Steve', 'Adams', '753 Orange St.')
,(12, 31067023, 'Tina', 'Jones', '456 Apple St.')
,(13, 47890134, 'Max', 'Roberts', '321 Banana St.')
,(14, 7789045, 'Lisa', 'Walker', '654 Cherry St.')
,(15, 29890126, 'Mike', 'Baker', '987 Coconut St.')
,(16, 78932467, 'Kelly', 'Garcia', '159 Date St.')
,(17, 84132578, 'Paula', 'Jackson', '357 Elder St.')
,(18, 92317689, 'Matt', 'Miller', '864 Fig St.')
,(19, 34561380, 'Jessica', 'Hall', '975 Grape St.')
,(20, 45658921, 'Chris', 'Clark', '753 Honey St.');



create table email(E_ID int primary key, P_email varchar(30));
alter table email add column P_ID int;
alter table email add foreign key (P_ID) references passengers(P_ID);
insert into email(E_ID, P_email) values
(1, 'john.smith@example.com')
,(2, 'john@example.com')
,(3, 'jane.doe@example.com')
,(4, 'bob.johnson@example.com')
,(5, 'mary.white@example.com')
,(6, 'joe.black@example.com')
,(7, 'sara.green@example.com')
,(8, 'sara@example.com')
,(9, 'david.brown@example.com')
,(10, 'kate.wilson@example.com')
,(11, 'jimmy.harris@example.com')
,(12, 'emily.young@example.com')
,(13, 'steve.adams@example.com')
,(14, 'tina.jones@example.com')
,(15, 'max.roberts@example.com')
,(16, 'lisa.walker@example.com')
,(17, 'mike.baker@example.com')
,(18, 'mike@example.com')
,(19, 'kelly.garcia@example.com')
,(20, 'kelly@example.com')
,(21, 'paula.jackson@example.com')
,(22, 'matt.miller@example.com')
,(23, 'jessica.hall@example.com')
,(24, 'chris.clark@example.com');


create table bookings(Bo_ID int primary key, Bo_seatNum int);
alter table bookings add column F_number varchar(20);
alter table bookings add foreign key (F_number) references flights(F_number);
alter table bookings add column P_ID int;
alter table bookings add foreign key (P_ID) references passengers(P_ID);
insert into bookings(Bo_ID, Bo_seatNum) values
(1, 10)
,(2, 11)
,(3, 12)
,(4, 13)
,(5, 14)
,(6, 15)
,(7, 16)
,(8, 17)
,(9, 18)
,(10, 19)
,(11, 20)
,(12, 21)
,(13, 22)
,(14, 23)
,(15, 24)
,(16, 25)
,(17, 26)
,(18, 27)
,(19, 28)
,(20, 29);



create table maintenance(M_ID int primary key, M_type varchar(50), M_date date, M_cost double);
alter table maintenance add column A_ID varchar(50);
alter table maintenance add foreign key (A_ID) references aircraft(A_ID);
insert into maintenance(M_ID, M_type, M_date, M_cost) values
(1, 'Engine', '2022-01-05', 1500.00)
,(2, 'Landing Gear', '2022-02-10', 2000.00)
,(3, 'Avionics', '2022-03-15', 1200.00)
,(4, 'Airframe', '2022-04-20', 2500.00)
,(5, 'Engine', '2022-05-25', 1800.00)
,(6, 'Landing Gear', '2022-06-30', 1900.00)
,(7, 'Avionics', '2022-07-05', 1300.00)
,(8, 'Airframe', '2022-08-10', 2700.00)
,(9, 'Engine', '2022-09-15', 1600.00)
,(10, 'Landing Gear', '2022-10-20', 2200.00)
,(11, 'Avionics', '2022-11-25', 1400.00)
,(12, 'Airframe', '2022-12-30', 2900.00)
,(13, 'Engine', '2023-01-05', 1700.00)
,(14, 'Landing Gear', '2023-02-10', 2300.00)
,(15, 'Avionics', '2023-03-15', 1500.00)
,(16, 'Airframe', '2023-04-20', 3100.00)
,(17, 'Engine', '2023-05-25', 1900.00)
,(18, 'Landing Gear', '2023-06-30', 2400.00)
,(19, 'Avionics', '2023-07-05', 1600.00)
,(20, 'Airframe', '2023-08-10', 3300.00);



create table ticket(T_ID int primary key, T_price double, T_seatNum int);
alter table ticket add column F_number varchar(20);
alter table ticket add foreign key (F_number) references flights(F_number);
alter table ticket add column Bo_ID int;
alter table ticket add foreign key (Bo_ID) references bookings(Bo_ID);
insert into ticket(T_ID, T_price, T_seatNum) values
(1, 100.50, 23)
,(2, 75.25, 14)
,(3, 200.00, 6)
,(4, 150.75, 29)
,(5, 85.00, 17)
,(6, 175.50, 11)
,(7, 110.25, 24)
,(8, 65.00, 16)
,(9, 190.00, 8)
,(10, 130.75, 30)
,(11, 95.00, 18)
,(12, 165.50, 12)
,(13, 120.25, 25)
,(14, 60.00, 15)
,(15, 180.00, 7)
,(16, 140.75, 31)
,(17, 105.00, 19)
,(18, 155.50, 13)
,(19, 130.25, 26)
,(20, 70.00, 20);



create table baggage(B_ID int primary key, B_description text, B_weight double);
alter table baggage add column P_ID int;
alter table baggage add foreign key (P_ID) references passengers(P_ID);
insert into baggage(B_ID, B_description, B_weight) values
(1, 'Small black suitcase', 12.5)
,(2, 'Red backpack', 8.2)
,(3, 'Large green duffel bag', 22.0)
,(4, 'Brown leather briefcase', 5.7)
,(5, 'Pink carry-on luggage', 10.0)
,(6, 'Blue plastic tote', 3.2)
,(7, 'Yellow sports bag', 18.9)
,(8, 'Purple rolling suitcase', 15.6)
,(9, 'Gray messenger bag', 7.1)
,(10, 'Orange beach tote', 4.8)
,(11, 'White garment bag', 9.3)
,(12, 'Black laptop bag', 2.5)
,(13, 'Green canvas backpack', 6.8)
,(14, 'Red plaid duffel bag', 19.2)
,(15, 'Blue nylon carry-on', 11.5)
,(16, 'Silver hard-shell suitcase', 14.0)
,(17, 'Pink polka-dot tote', 8.9)
,(18, 'Brown leather travel bag', 17.3)
,(19, 'Purple gym bag', 12.1)
,(20, 'Gray hard-case luggage', 21.5);



create table crew(C_ID int primary key, C_email varchar(30), C_firstName varchar(15), C_lastName varchar(15), jobTitle char(20));
alter table crew add column M_ID int;
alter table crew add foreign key (M_ID) references maintenance(M_ID);
insert into crew(C_ID, C_email, C_firstName, C_lastName, jobTitle) values
(1, 'john.doe@airlines.com', 'John', 'Doe', 'Pilot')
,(2, 'jane.smith@airlines.com', 'Jane', 'Smith', 'Pilot')
,(3, 'mark.johnson@airlines.com', 'Mark', 'Johnson', 'Co-Pilot')
,(4, 'lisa.anderson@airlines.com', 'Lisa', 'Anderson', 'Co-Pilot')
,(5, 'david.miller@airlines.com', 'David', 'Miller', 'Flight Attendant')
,(6, 'mary.williams@airlines.com', 'Mary', 'Williams', 'Flight Attendant')
,(7, 'jim.wang@airlines.com', 'Jim', 'Wang', 'Flight Attendant')
,(8, 'sarah.garcia@airlines.com', 'Sarah', 'Garcia', 'Flight Attendant')
,(9, 'juan.gonzalez@airlines.com', 'Juan', 'Gonzalez', 'Ground Crew')
,(10, 'kim.nguyen@airlines.com', 'Kim', 'Nguyen', 'Ground Crew')
,(11, 'thomas.johnson@airlines.com', 'Thomas', 'Johnson', 'Ground Crew')
,(12, 'emily.chen@airlines.com', 'Emily', 'Chen', 'Ground Crew')
,(13, 'michael.li@airlines.com', 'Michael', 'Li', 'Mechanic')
,(14, 'amy.wu@airlines.com', 'Amy', 'Wu', 'Mechanic')
,(15, 'jason.yang@airlines.com', 'Jason', 'Yang', 'Mechanic')
,(16, 'brian.wang@airlines.com', 'Brian', 'Wang', 'Mechanic')
,(17, 'jessica.lee@airlines.com', 'Jessica', 'Lee', 'Cleaner')
,(18, 'daniel.hernandez@airlines.com', 'Daniel', 'Hernandez', 'Cleaner')
,(19, 'ashley.chang@airlines.com', 'Ashley', 'Chang', 'Cleaner')
,(20, 'jose.rodriguez@airlines.com', 'Jose', 'Rodriguez', 'Cleaner');



create table crew_contact(CC_ID int primary key, C_phoneNum int(12));
alter table crew_contact add column C_ID int;
alter table crew_contact add foreign key (C_ID) references crew(C_ID);
insert into crew_contact(CC_ID, C_phoneNum) values
(1, '12347890')
,(2, '34567958')
,(3, '56717402')
,(4, '45678902')
,(5, '72853917')
,(6, '29801235')
,(7, '78321854')
,(8, '78901677')
,(9, '84890437')
,(10, '90123219')
,(11, '10758489')
,(12, '45678901')
,(13, '83901234')
,(14, '52287912')
,(15, '45679081')
,(16, '45670123')
,(17, '67845981')
,(18, '67890679')
,(19, '89012543')
,(20, '89123567')
,(21, '92345678')
,(22, '12345678')
,(23, '56931892');



create table meal(M_ID int primary key, M_name char(25), M_price double, M_description text);
insert into meal(M_ID, M_name, M_price, M_description) values
(1, 'Vegetarian Pasta', 15.99, 'Pasta dish with roasted vegetables and marinara sauce.')
,(2, 'Chicken Caesar Salad', 12.99, 'Romaine lettuce with grilled chicken, croutons, and Caesar dressing.')
,(3, 'Grilled Steak', 24.99, '10-ounce sirloin steak with mashed potatoes and green beans.')
,(4, 'Fish and Chips', 18.99, 'Deep-fried cod with French fries and tartar sauce.')
,(5, 'Spicy Tofu Stir Fry', 13.99, 'Tofu with mixed vegetables in a spicy sauce.')
,(6, 'Pesto Chicken Sandwich', 11.99, 'Grilled chicken breast with pesto, mozzarella cheese, and roasted red peppers on ciabatta bread.')
,(7, 'Beef Burgundy', 22.99, 'Beef stew with mushrooms and red wine sauce.')
,(8, 'Shrimp Scampi', 19.99, 'Linguine pasta with shrimp and garlic butter sauce.')
,(9, 'Mushroom Risotto', 14.99, 'Creamy risotto with mushrooms and parmesan cheese.')
,(10, 'Teriyaki Salmon', 21.99, 'Grilled salmon with teriyaki glaze and rice.')
,(11, 'Veggie Burger', 10.99, 'Vegetarian burger with lettuce, tomato, and avocado.')
,(12, 'Roast Beef Sandwich', 11.99, 'Thinly sliced roast beef with horseradish mayo and Swiss cheese on sourdough bread.')
,(13, 'Pork Tenderloin', 23.99, 'Roasted pork tenderloin with sweet potato mash and Brussels sprouts.')
,(14, 'Cheese Pizza', 9.99, '12-inch pizza with tomato sauce and mozzarella cheese.')
,(15, 'BBQ Chicken Pizza', 12.99, '12-inch pizza with BBQ sauce, chicken, and red onions.')
,(16, 'Caesar Salad', 8.99, 'Romaine lettuce with croutons and Caesar dressing.')
,(17, 'Grilled Chicken Sandwich', 10.99, 'Grilled chicken breast with lettuce, tomato, and mayo on a bun.')
,(18, 'Meatloaf', 16.99, 'Classic meatloaf with mashed potatoes and green beans.')
,(19, 'Stir Fry Noodles', 13.99, 'Egg noodles with mixed vegetables in a soy sauce.')
,(20, 'Beef Tacos', 11.99, 'Two soft-shell tacos with seasoned ground beef, lettuce, tomato, and cheese.');


