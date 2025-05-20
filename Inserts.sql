
-- Inserting data into Administrator Table
INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM001', 'John', 'Doe', '1234567890', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'johndoe@example.com', 60000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM002', 'Jane', 'Smith', '0987654321', TO_DATE('2022-05-15', 'YYYY-MM-DD'), 'janesmith@example.com', 75000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM003', 'Alice', 'Johnson', '1029384756', TO_DATE('2023-02-25', 'YYYY-MM-DD'), 'alicej@example.com', 62000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM004', 'Robert', 'Brown', '5647382910', TO_DATE('2023-03-15', 'YYYY-MM-DD'), 'robertb@example.com', 68000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM005', 'Emily', 'Davis', '9876543210', TO_DATE('2022-08-10', 'YYYY-MM-DD'), 'emilyd@example.com', 71000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM006', 'Chris', 'Wilson', '1234509876', TO_DATE('2021-12-01', 'YYYY-MM-DD'), 'chrisw@example.com', 64000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM007', 'Patricia', 'Miller', '1122334455', TO_DATE('2020-05-20', 'YYYY-MM-DD'), 'patm@example.com', 63000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM008', 'Linda', 'Taylor', '9988776655', TO_DATE('2021-09-12', 'YYYY-MM-DD'), 'lindat@example.com', 72000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM009', 'Michael', 'Clark', '5566778899', TO_DATE('2022-11-18', 'YYYY-MM-DD'), 'michaelc@example.com', 67000);

INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary) 
VALUES ('ADM010', 'Karen', 'Lee', '2233445566', TO_DATE('2023-06-01', 'YYYY-MM-DD'), 'karenl@example.com', 65000);

-------------------------------------------------------------------------

-- Inserting data into CustomerAssistanceStaff Table
INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS001', 'Matthew', 'Green', '5551112233', TO_DATE('2022-04-15', 'YYYY-MM-DD'), 'matthewg@example.com', 45000, 'ADM001');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS002', 'Sophia', 'Young', '5552223344', TO_DATE('2021-12-20', 'YYYY-MM-DD'), 'sophiay@example.com', 46000, 'ADM002');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS003', 'Daniel', 'Martinez', '5553334455', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'danielm@example.com', 47000, 'ADM003');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS004', 'Olivia', 'Hernandez', '5554445566', TO_DATE('2022-08-01', 'YYYY-MM-DD'), 'oliviah@example.com', 44000, 'ADM004');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS005', 'William', 'Lopez', '5555556677', TO_DATE('2021-09-25', 'YYYY-MM-DD'), 'williaml@example.com', 48000, 'ADM005');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS006', 'Emma', 'Gonzalez', '5556667788', TO_DATE('2022-03-15', 'YYYY-MM-DD'), 'emmag@example.com', 46000, 'ADM006');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS007', 'James', 'Perez', '5557778899', TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'jamesp@example.com', 47000, 'ADM007');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS008', 'Isabella', 'Kim', '5558889900', TO_DATE('2022-07-25', 'YYYY-MM-DD'), 'isabellak@example.com', 45000, 'ADM008');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS009', 'Benjamin', 'Rivera', '5559990011', TO_DATE('2021-06-15', 'YYYY-MM-DD'), 'benjaminr@example.com', 46000, 'ADM009');

INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID) 
VALUES ('CAS010', 'Mia', 'Garcia', '5550001122', TO_DATE('2023-02-20', 'YYYY-MM-DD'), 'miag@example.com', 49000, 'ADM010');

-- Insert data into DriverInsurance table
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'InsureCo', 150.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL002', TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2025-02-15', 'YYYY-MM-DD'), 'SafeLife', 120.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL003', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2025-03-10', 'YYYY-MM-DD'), 'ProtectUs', 200.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL004', TO_DATE('2024-04-05', 'YYYY-MM-DD'), TO_DATE('2025-04-05', 'YYYY-MM-DD'), 'CoverNow', 110.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL005', TO_DATE('2024-05-20', 'YYYY-MM-DD'), TO_DATE('2025-05-20', 'YYYY-MM-DD'), 'ShieldPlus', 130.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL006', TO_DATE('2024-06-15', 'YYYY-MM-DD'), TO_DATE('2025-06-15', 'YYYY-MM-DD'), 'SecureIt', 175.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL007', TO_DATE('2024-07-30', 'YYYY-MM-DD'), TO_DATE('2025-07-30', 'YYYY-MM-DD'), 'InsureCo', 140.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL008', TO_DATE('2024-08-25', 'YYYY-MM-DD'), TO_DATE('2025-08-25', 'YYYY-MM-DD'), 'SafeLife', 160.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL009', TO_DATE('2024-09-18', 'YYYY-MM-DD'), TO_DATE('2025-09-18', 'YYYY-MM-DD'), 'ProtectUs', 190.00);
 
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL010', TO_DATE('2024-10-22', 'YYYY-MM-DD'), TO_DATE('2025-10-22', 'YYYY-MM-DD'), 'CoverNow', 155.00);
 
 ------------------------------------------------------------------------------------------

-- Insert data into Driver table
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV001', 45000, TO_DATE('2020-01-15', 'YYYY-MM-DD'), 'LIC001', 'POL001');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV002', 52000, TO_DATE('2019-03-10', 'YYYY-MM-DD'), 'LIC002', 'POL002');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV003', 47000, TO_DATE('2018-05-20', 'YYYY-MM-DD'), 'LIC003', 'POL003');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV004', 53000, TO_DATE('2021-07-30', 'YYYY-MM-DD'), 'LIC004', 'POL004');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV005', 56000, TO_DATE('2017-09-18', 'YYYY-MM-DD'), 'LIC005', 'POL005');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV006', 49000, TO_DATE('2022-02-12', 'YYYY-MM-DD'), 'LIC006', 'POL006');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV007', 58000, TO_DATE('2021-10-25', 'YYYY-MM-DD'), 'LIC007', 'POL007');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV008', 46000, TO_DATE('2019-12-08', 'YYYY-MM-DD'), 'LIC008', 'POL008');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV009', 50000, TO_DATE('2023-04-05', 'YYYY-MM-DD'), 'LIC009', 'POL009');
 
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber) 
VALUES ('DRV010', 55000, TO_DATE('2022-08-15', 'YYYY-MM-DD'), 'LIC010', 'POL010');

--------------------------------------------------------------------------------

--Customer inserts

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000001', 'John', 'Doe', '202-555-0123', 'john.doe@example.com');	

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000002', 'Jane', 'Smith', '303-555-0456', 'jane.smith@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000003', 'Emily', 'Johnson', '415-555-0789', 'emily.johnson@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000004', 'Michael', 'Brown', '512-555-1011', 'michael.brown@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000005', 'Sarah', 'Davis', '618-555-1213', 'sarah.davis@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000006', 'David', 'Martinez', '707-555-1415', 'david.martinez@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000007', 'Jessica', 'Garcia', '818-555-1617', 'jessica.garcia@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000008', 'Daniel', 'Miller', '919-555-1819', 'daniel.miller@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('0000000009', 'Sophia', 'Wilson', '202-555-2021', 'sophia.wilson@example.com');

INSERT INTO Customer (customerID, firstName, lastName, phone, email)
VALUES ('000000000A', 'James', 'Taylor', '303-555-2223', 'james.taylor@example.com');

--PostalCode inserts
INSERT INTO PostalCode (PostalCode,city, state) VALUES ('33618-3224', 'Tampa', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('32801-1120', 'Orlando', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('32803-4512', 'Orlando', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('32819-7843', 'Orlando', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('33301-2204', 'Fort Lauderdale', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('33304-3012', 'Fort Lauderdale', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('33316-5801', 'Fort Lauderdale', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('32601-5304', 'Gainesville', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('32608-1123', 'Gainesville', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('32607-4510', 'Gainesville', 'FL');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('32801-1234', 'Wk', 'FA');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('90001-5678', 'Ls', 'CW');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('10001-9101', 'Nk', 'NK');
INSERT INTO PostalCode (PostalCode, city, state) VALUES ('60601-1122', 'Co', 'IX');

--Payment info inserts
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('4532123456789010', 05, 2023, 1234, 'John Doe', '32801-1120', '123 Main St', NULL);
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('4012345678901234', 11, 1998, 5678, 'Jane Smith', '33301-2204', '456 Elm St', 'Apt 3B');
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('6011234567890123', 01, 2050, 9101, 'Emily Johnson', '33618-3224', '789 Oak St', NULL);
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('4222222222222222', 07, 2015, 2345, 'Michael Brown', '32803-4512', '321 Pine St', NULL);
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('378282246310005', 03, 2027, 3456, 'Sarah Davis', '32819-7843', '654 Maple St', 'Suite 200');
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('6011123456789010', 09, 2010, 4567, 'David Martinez', '33304-3012', '987 Cedar St', NULL);
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('5111111111111111', 12, 1995, 6789, 'Jessica Garcia', '32601-5304', '159 Birch St', NULL);
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('5105101051055100', 02, 2005, 2340, 'Daniel Miller', '32608-1123', '753 Willow St', 'Floor 4');
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('4485485485485485', 06, 2024, 5432, 'James Taylor', '32819-7843', '321 Oak Ave', 'Building A');
INSERT INTO PaymentInfo (CardNumber, ExpirationMonth, ExpirationYear, cvv, CardName, PostalCode, addressLine1, addressLine2) VALUES ('4111111111111111', 06, 2024, 2321,'Sophia Wilson', '33618-3224', '321 Grape Run', NULL);


-- Insert data into Trip table
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP001', 12.5, '00:25:00', '40.7128N', '74.0060W', '40.7306N', '73.9352W', 'completed', 2, '4532123456789010','0000000001');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP002', 5.0, '00:15:00', '40.7306N', '73.9352W', '40.7580N', '73.9855W', 'completed', 1, '4012345678901234', '0000000002');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP003', 7.3, '00:20:00', '40.7580N', '73.9855W', '40.7291N', '73.9965W', 'cancelled', 3, '6011234567890123','0000000003');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP004', 8.9, '00:22:00', '40.7291N', '73.9965W', '40.7488N', '73.9680W', 'inprogress', 2, '4222222222222222', '0000000004');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP005', 3.2, '00:10:00', '40.7488N', '73.9680W', '40.7128N', '74.0060W', 'completed', 4, '378282246310005', '0000000005');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP006', 15.6, '00:40:00', '40.7128N', '74.0060W', '40.7306N', '73.9352W', 'inprogress', 1, '6011123456789010', '0000000006');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP007', 9.8, '00:18:00', '40.7580N', '73.9855W', '40.7291N', '73.9965W', 'cancelled', 3, '5111111111111111', '0000000007');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP008', 6.1, '00:17:00', '40.7291N', '73.9965W', '40.7488N', '73.9680W', 'completed', 2, '5105101051055100', '0000000008');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP009', 11.4, '00:30:00', '40.7488N', '73.9680W', '40.7128N', '74.0060W', 'completed', 4, '4485485485485485', '0000000009');
 
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, cardNumber, customerID) 
VALUES ('TRP010', 4.7, '00:12:00', '40.7306N', '73.9352W', '40.7580N', '73.9855W', 'inprogress', 1, '4111111111111111', '000000000A');


-- Inserting data into MaintenanceStaff Table
INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('1', 'John', 'Doe', TO_DATE('2020-05-15', 'YYYY-MM-DD'), 55000, '123-456-7890', 'john.doe@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('2', 'Jane', 'Smith', TO_DATE('2019-08-22', 'YYYY-MM-DD'), 60000, '234-567-8901', 'jane.smith@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('3', 'Alice', 'Brown', TO_DATE('2021-07-30', 'YYYY-MM-DD'), 45000, '345-678-9012', 'alice.brown@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('4', 'Mike', 'Johnson', TO_DATE('2018-12-12', 'YYYY-MM-DD'), 70000, '456-789-0123', 'mike.johnson@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('5', 'Chris', 'Davis', TO_DATE('2022-03-17', 'YYYY-MM-DD'), 40000, '567-890-1234', 'chris.davis@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('6', 'Sarah', 'Wilson', TO_DATE('2017-11-25', 'YYYY-MM-DD'), 65000, '678-901-2345', 'sarah.wilson@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('7', 'David', 'Martinez', TO_DATE('2016-06-06', 'YYYY-MM-DD'), 55000, '789-012-3456', 'david.martinez@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('8', 'Anna', 'Taylor', TO_DATE('2023-01-15', 'YYYY-MM-DD'), 50000, '890-123-4567', 'anna.taylor@example.com');


INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('9', 'Robert', 'Lee', TO_DATE('2021-09-28', 'YYYY-MM-DD'), 62000, '901-234-5678', 'robert.lee@example.com');

INSERT INTO MaintenanceStaff (staffID, firstName, lastName, dateOfEmployment, salary, phone, email) 
VALUES ('10', 'Linda', 'Harris', TO_DATE('2020-04-09', 'YYYY-MM-DD'), 52000, '012-345-6789', 'linda.harris@example.com');


INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('101', 'Cleaning Solution', 15.99, 100);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('102', 'Lubricant Oil', 8.50, 50);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('103', 'Wrench Set', 25.00, 30);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('104', 'Screwdriver Kit', 12.75, 200);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('105', 'Hammer', 10.50, 60);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('106', 'Safety Gloves', 5.99, 150);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('107', 'Face Mask', 2.50, 300);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('108', 'Toolbox', 45.99, 25);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('109', 'Grease', 9.99, 80);

INSERT INTO MaintenanceProducts (productID, productName, unitPrice, quantityInStock) 
VALUES ('110', 'Pliers', 14.49, 75);

--Taxi Table Inserts
INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) 
VALUES ('TX001', 2016, 'Chrysler', 'Pacifica', 7, 45, 69000, 6000, 'Yes');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX002', 2005, 'Ford', 'Crown Victoria', 4, 12, 60500, 5100, 'Yes');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX003', 2010, 'Toyota', 'Prius', 4, 15, 45000, 3000, 'Yes');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX004', 2012, 'Chevrolet', 'Impala', 4, 9, 71000, 5200, 'No');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX005', 2018, 'Honda', 'Civic', 4, 3, 23000, 2700, 'Yes');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX006', 2020, 'Tesla', 'Model 3', 4, 18, 15000, 2500, 'Yes');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX007', 2016, 'Nissan', 'Altima', 4, 5, 54000, 4100, 'No');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX008', 2017, 'Hyundai', 'Sonata', 4, 6, 32000, 3900, 'Yes');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX009', 2015, 'Kia', 'Optima', 4, 8, 55000, 4800, 'No');

INSERT INTO Taxi (taxiID, year, make, model, capacity, spotNumber, currentX, currentY, inComission) VALUES 
('TX010', 2019, 'Volkswagen', 'Jetta', 4, 10, 26000, 3200, 'Yes');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('201', TO_DATE('01-DEC-23', 'DD-MON-YY'), TO_DATE('15-DEC-23', 'DD-MON-YY'), TO_DATE('14-DEC-23', 'DD-MON-YY'), 'TX001', 'ADM001');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('202', TO_DATE('05-DEC-23', 'DD-MON-YY'), TO_DATE('20-DEC-23', 'DD-MON-YY'), TO_DATE('19-DEC-23', 'DD-MON-YY'), 'TX002', 'ADM002');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('203', TO_DATE('10-DEC-23', 'DD-MON-YY'), TO_DATE('25-DEC-23', 'DD-MON-YY'), TO_DATE('24-DEC-23', 'DD-MON-YY'), 'TX003', 'ADM003');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('204', TO_DATE('15-DEC-23', 'DD-MON-YY'), TO_DATE('30-DEC-23', 'DD-MON-YY'), TO_DATE('29-DEC-23', 'DD-MON-YY'), 'TX004', 'ADM001');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('205', TO_DATE('20-DEC-23', 'DD-MON-YY'), TO_DATE('05-JAN-24', 'DD-MON-YY'), TO_DATE('04-JAN-24', 'DD-MON-YY'), 'TX005', 'ADM002');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('206', TO_DATE('01-JAN-24', 'DD-MON-YY'), TO_DATE('15-JAN-24', 'DD-MON-YY'), TO_DATE('14-JAN-24', 'DD-MON-YY'), 'TX006', 'ADM003');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('207', TO_DATE('05-JAN-24', 'DD-MON-YY'), TO_DATE('20-JAN-24', 'DD-MON-YY'), TO_DATE('19-JAN-24', 'DD-MON-YY'), 'TX007', 'ADM001');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('208', TO_DATE('10-JAN-24', 'DD-MON-YY'), TO_DATE('25-JAN-24', 'DD-MON-YY'), TO_DATE('24-JAN-24', 'DD-MON-YY'), 'TX008', 'ADM002');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('209', TO_DATE('15-JAN-24', 'DD-MON-YY'), TO_DATE('30-JAN-24', 'DD-MON-YY'), TO_DATE('29-JAN-24', 'DD-MON-YY'), 'TX009', 'ADM003');

INSERT INTO MaintenanceWorkOrder (orderID, dateCreated, dueDate, dateFulfilled, taxiID, adminID) 
VALUES ('210', TO_DATE('20-JAN-24', 'DD-MON-YY'), TO_DATE('05-FEB-24', 'DD-MON-YY'), TO_DATE('04-FEB-24', 'DD-MON-YY'), 'TX010', 'ADM001');

-- Inserting data into Use Table (Assuming valid foreign keys exist in MaintenanceProducts and MaintenanceWorkOrder)
INSERT INTO Use (productID, orderID) VALUES ('101', '201');

INSERT INTO Use (productID, orderID) VALUES ('102', '202');

INSERT INTO Use (productID, orderID) VALUES ('103', '203');

INSERT INTO Use (productID, orderID) VALUES ('104', '204');

INSERT INTO Use (productID, orderID) VALUES ('105', '205');

INSERT INTO Use (productID, orderID) VALUES ('106', '206');

INSERT INTO Use (productID, orderID) VALUES ('107', '207');

INSERT INTO Use (productID, orderID) VALUES ('108', '208');

INSERT INTO Use (productID, orderID) VALUES ('109', '209');

INSERT INTO Use (productID, orderID) VALUES ('110', '210');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('1', '201');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('2', '202');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('3', '203');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('4', '204');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('5', '205');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('6', '206');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('7', '207');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('8', '208');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('9', '209');

INSERT INTO AssignedTo (staffID, orderID) VALUES ('10', '210');

--CustomerPaymentInfoLink inserts
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000001', '4532123456789010');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000002', '4012345678901234');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000003', '6011234567890123');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000004', '4222222222222222');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000005', '378282246310005');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000006', '6011123456789010');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000007', '5111111111111111');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000008', '5105101051055100');
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('0000000009', '4111111111111111');  
INSERT INTO CustomerPaymentInfoLink (customerID, cardNumber) VALUES ('000000000A', '4485485485485485'); 

---Car Insurance Inserts
INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL123', 'TX001', TO_DATE('01-JAN-24', 'DD-MON-YY'), TO_DATE('01-JAN-25', 'DD-MON-YY'), 'InsuranceCo', 150.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL124', 'TX002', TO_DATE('15-FEB-24', 'DD-MON-YY'), TO_DATE('15-FEB-25', 'DD-MON-YY'), 'BestInsurer', 175.50);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL125', 'TX003', TO_DATE('10-MAR-24', 'DD-MON-YY'), TO_DATE('10-MAR-25', 'DD-MON-YY'), 'SecureCoverage', 160.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL126', 'TX004', TO_DATE('05-APR-24', 'DD-MON-YY'), TO_DATE('05-APR-25', 'DD-MON-YY'), 'ReliableInsure', 140.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL127', 'TX005', TO_DATE('20-MAY-24', 'DD-MON-YY'), TO_DATE('20-MAY-25', 'DD-MON-YY'), 'FastInsurance', 155.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL128', 'TX006', TO_DATE('30-JUN-24', 'DD-MON-YY'), TO_DATE('30-JUN-25', 'DD-MON-YY'), 'TrustyInsure', 165.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL129', 'TX007', TO_DATE('25-JUL-24', 'DD-MON-YY'), TO_DATE('25-JUL-25', 'DD-MON-YY'), 'PremierCoverage', 180.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL130', 'TX008', TO_DATE('15-AUG-24', 'DD-MON-YY'), TO_DATE('15-AUG-25', 'DD-MON-YY'), 'GlobalInsurers', 170.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL131', 'TX009', TO_DATE('01-SEP-24', 'DD-MON-YY'), TO_DATE('01-SEP-25', 'DD-MON-YY'), 'SureSafe', 145.00);

INSERT INTO CarInsurance (policyNumber, taxiID, startDate, expirationDate, companyName, monthlyRate) 
VALUES ('POL132', 'TX010', TO_DATE('20-OCT-24', 'DD-MON-YY'), TO_DATE('20-OCT-25', 'DD-MON-YY'), 'EliteCoverage', 160.00);

--Accidents Inserts
INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC123', TO_DATE('01-JAN-24', 'DD-MON-YY'), 123, 2000, 'Front side collision', 'TX002');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC124', TO_DATE('05-JAN-24', 'DD-MON-YY'), 150, 2050, 'Rear-end collision', 'TX003');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC125', TO_DATE('10-JAN-24', 'DD-MON-YY'), 200, 2100, 'Side swipe accident', 'TX004');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC126', TO_DATE('15-JAN-24', 'DD-MON-YY'), 250, 2150, 'Hit and run incident', 'TX005');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC127', TO_DATE('20-JAN-24', 'DD-MON-YY'), 300, 2200, 'Single vehicle accident', 'TX006');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC128', TO_DATE('25-JAN-24', 'DD-MON-YY'), 350, 2250, 'Intersection collision', 'TX007');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC129', TO_DATE('30-JAN-24', 'DD-MON-YY'), 400, 2300, 'Road obstruction incident', 'TX008');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC130', TO_DATE('05-FEB-24', 'DD-MON-YY'), 450, 2350, 'Weather-related accident', 'TX009');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC131', TO_DATE('10-FEB-24', 'DD-MON-YY'), 500, 2400, 'Collision with a pedestrian', 'TX010');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC132', TO_DATE('15-FEB-24', 'DD-MON-YY'), 550, 2450, 'Accident with a bicycle', 'TX002');

INSERT INTO Accidents (accidentID, incidentDate, locationX, locationY, description, taxiID) 
VALUES ('ACC133', TO_DATE('20-FEB-24', 'DD-MON-YY'), 600, 2500, 'Multi-vehicle collision', 'TX003');

-- Inserting data into DrivingAssignments Table
INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG001', 'active', TO_TIMESTAMP('2023-11-01 08:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-01 12:00', 'YYYY-MM-DD HH24:MI'), 'CAS001', 'DRV001', 'TX001');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG002', 'completed', TO_TIMESTAMP('2023-11-02 09:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-02 13:00', 'YYYY-MM-DD HH24:MI'), 'CAS002', 'DRV002', 'TX002');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG003', 'pending', TO_TIMESTAMP('2023-11-03 07:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-03 11:00', 'YYYY-MM-DD HH24:MI'), 'CAS003', 'DRV003', 'TX003');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG004', 'active', TO_TIMESTAMP('2023-11-04 10:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-04 14:00', 'YYYY-MM-DD HH24:MI'), 'CAS004', 'DRV004', 'TX004');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG005', 'completed', TO_TIMESTAMP('2023-11-05 11:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-05 15:00', 'YYYY-MM-DD HH24:MI'), 'CAS005', 'DRV005', 'TX005');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG006', 'pending', TO_TIMESTAMP('2023-11-06 12:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-06 16:00', 'YYYY-MM-DD HH24:MI'), 'CAS006', 'DRV006', 'TX006');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG007', 'active', TO_TIMESTAMP('2023-11-07 08:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-07 12:00', 'YYYY-MM-DD HH24:MI'), 'CAS007', 'DRV007', 'TX007');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG008', 'completed', TO_TIMESTAMP('2023-11-08 09:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-08 13:00', 'YYYY-MM-DD HH24:MI'), 'CAS008', 'DRV008', 'TX008');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG009', 'active', TO_TIMESTAMP('2023-11-09 07:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-09 11:00', 'YYYY-MM-DD HH24:MI'), 'CAS009', 'DRV009', 'TX009');

INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID) 
VALUES ('ASSG010', 'pending', TO_TIMESTAMP('2023-11-10 10:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-10 14:00', 'YYYY-MM-DD HH24:MI'), 'CAS010', 'DRV010', 'TX010');

