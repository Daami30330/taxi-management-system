--updates

-- Updating data in Administrator Table
UPDATE Administrator
SET salary = 65000
WHERE adminID = 'ADM001';
 
UPDATE Administrator
SET email = 'john.doe.updated@example.com'
WHERE adminID = 'ADM001';
 
UPDATE Administrator
SET phone = '0987654321'
WHERE adminID = 'ADM002';
 
UPDATE Administrator
SET salary = salary + 5000
WHERE adminID = 'ADM003';
 
 
-- Updating data in CustomerAssistanceStaff Table
UPDATE CustomerAssistanceStaff
SET salary = 48000
WHERE staffID = 'CAS001';
 
UPDATE CustomerAssistanceStaff
SET email = 'matthew.green.updated@example.com'
WHERE staffID = 'CAS001';
 
UPDATE CustomerAssistanceStaff
SET phone = '5559998888'
WHERE staffID = 'CAS002';
 
UPDATE CustomerAssistanceStaff
SET dateOfEmployment = TO_TIMESTAMP('2023-01-15', 'YYYY-MM-DD')
WHERE staffID = 'CAS003';
 
 
-- Updating data in DrivingAssignments Table
UPDATE DrivingAssignments
SET status = 'completed'
WHERE assignmentID = 'ASSG001';
 
UPDATE DrivingAssignments
SET endDateTime = TO_TIMESTAMP('2023-11-01 13:00', 'YYYY-MM-DD HH24:MI')
WHERE assignmentID = 'ASSG001';
 
UPDATE DrivingAssignments
SET startDateTime = TO_TIMESTAMP('2023-11-02 10:00', 'YYYY-MM-DD HH24:MI')
WHERE assignmentID = 'ASSG002';
 
UPDATE DrivingAssignments
SET status = 'active'
WHERE assignmentID = 'ASSG003';
 
----------------------------------------------------------------------------------------------------------
 
-- Update salary for a specific driver
UPDATE Driver
SET salary = 50000
WHERE driverID = 'DRV003';
-- Increase salary by 5% for drivers employed before 2021
UPDATE Driver
SET salary = salary * 1.05
WHERE dateOfEmployment < TO_DATE('2021-01-01', 'YYYY-MM-DD');
-- Update license number for drivers earning more than 55000
UPDATE Driver
SET licenseNumber = UPPER(licenseNumber)
WHERE salary > 55000;

-- Raise salary for driver with salary under 48k
UPDATE Driver 
SET salary = salary * 1.05 
WHERE salary < 48000;

-----------------------------
-- Update monthly rate for a specific policy
UPDATE DriverInsurance
SET monthlyRate = '160'
WHERE policyNumber = 'POL001';
-- Increase monthly rate by 10% for all policies with a rate below 150
UPDATE DriverInsurance
SET monthlyRate = monthlyRate * 1.10
WHERE monthlyRate < 150;
-- Change the insurance company name for policies expiring in 2025
UPDATE DriverInsurance 
SET companyName = 'FutureScr' 
WHERE expirationDate BETWEEN TO_DATE('2025-01-01', 'YYYY-MM-DD') AND TO_DATE('2025-12-31', 'YYYY-MM-DD');
-- Extend expiration date by one year for policies with monthly rate above 140
UPDATE DriverInsurance
SET expirationDate = expirationDate + INTERVAL '12 months'
WHERE monthlyRate > 140;
-------------------------------
-- Update trip status to 'completed' for trips with a duration of less than 15 minutes
UPDATE Trip
SET status = 'completed'
WHERE duration < '00:15:00';
-- Increase distance by 10% for trips with more than 2 riders
UPDATE Trip
SET distance = distance * 1.10
WHERE numRiders > 2;
-- Change the pickup location for a specific trip
UPDATE Trip
SET pickupX = '40.7350N', pickupY = '73.9900W'
WHERE tripID = 'TRP005';
-- Set status to 'cancelled' for all trips with a pickup location in New York coordinates (approximate)
UPDATE Trip
SET status = 'cancelled'
WHERE pickupX LIKE '40.7%' AND pickupY LIKE '74.%';
 
----------------------------------------------------------------------------------------------
 
-- Updating data in MaintenanceStaff Table
UPDATE MaintenanceStaff
SET salary = salary * 1.05
WHERE staffID = '1';
 
UPDATE MaintenanceStaff
SET phone = '999-999-9999'
WHERE staffID = '2';
 
UPDATE MaintenanceStaff
SET email = 'updated.email@example.com'
WHERE staffID = '3';
 
UPDATE MaintenanceStaff
SET dateOfEmployment = TO_DATE('2021-05-01', 'YYYY-MM-DD')
WHERE staffID = '4';
 
 
-- Updating data in MaintenanceProducts Table
UPDATE MaintenanceProducts
SET unitPrice = unitPrice + 5
WHERE productID = '101';
 
UPDATE MaintenanceProducts
SET quantityInStock = quantityInStock - 20
WHERE productID = '102';
 
UPDATE MaintenanceProducts
SET productName = 'Advanced Wrench Set'
WHERE productID = '103';
 
UPDATE MaintenanceProducts
SET unitPrice = 20.00
WHERE productID = '104';
 
 
-- Updating data in Use Table (assuming the productID and orderID exist)
UPDATE Use
SET productID = 105
WHERE productID = '101' AND orderID = '201';
 
UPDATE Use
SET orderID = 210
WHERE productID = '102' AND orderID = '202';
 
UPDATE Use
SET productID = 106
WHERE productID = '103' AND orderID = '203';
 
UPDATE Use
SET orderID = 209
WHERE productID = '104' AND orderID = '204';
 
 
-- Updating data in AssignedTo Table (assuming the staffID and orderID exist)
UPDATE AssignedTo
SET staffID = 6
WHERE staffID = '1' AND orderID = '201';
 
UPDATE AssignedTo
SET orderID = 208
WHERE staffID = '2' AND orderID = '202';
 
UPDATE AssignedTo
SET staffID = 7
WHERE staffID = '3' AND orderID = '203';
 
UPDATE AssignedTo
SET orderID = 208
WHERE staffID = '4' AND orderID = '204';
 
-------------------------------------------------------------------------------------------
--------------------------
--customer updates
--------------------------
 
--change the area code of all customer's named Sophia
UPDATE Customer
SET phone = CONCAT('813', SUBSTR(Customer.phone, 4))
WHERE Customer.firstName = 'Sophia';
 
--change format for emails in the example.com domain
UPDATE Customer 
SET email = CONCAT(CONCAT(firstName, '.'), CONCAT(lastName, '@example.com')) 
WHERE SUBSTR(email, STRPOS(email, '@') + 1) = 'example.com';
 
--change the last name of a specific customer
UPDATE Customer 
SET lastName = 'Jenkins' 
WHERE customerID = '0000000003';
 
--change the phone number of a specific customer
UPDATE Customer 
SET phone = '727-638-0011'
WHERE customerID = '000000000A';
 
------------------------------
--PaymentInfo Updates
-----------------------------
 
UPDATE PaymentInfo
SET CardName =  'Emily Jenkins'
WHERE CardNumber = '6011234567890123';
 
UPDATE PaymentInfo
SET addressLine1 =  '1648 Leaf Lake Run', addressLine2 = NULL, PostalCode = '32801-1120'
WHERE CardNumber = '5105101051055100';
 
UPDATE PaymentInfo pi
SET expirationYear =  expirationYear + 4
WHERE CardNumber = '4532123456789010';
 
UPDATE PaymentInfo pi
SET expirationYear =  2028
WHERE expirationYear < 2024;
 
----------------------------------
--PostalCode updates
----------------------------------
UPDATE PostalCode pc
SET city = 'Winter Park', state = 'FL'
WHERE PostalCode = '32801-1234';
 
UPDATE PostalCode pc
SET city = 'Los Angeles', state = 'CA'
WHERE PostalCode = '90001-5678';
 
UPDATE PostalCode pc
SET city = 'New York', state = 'NY'
WHERE PostalCode = '10001-9101';
 
UPDATE PostalCode pc
SET city = 'Chicago', state = 'IL'
WHERE PostalCode = '60601-1122';
 
-------------------------------------------------------------------------------------------
 
--Update Data in Taxi Table
--Update Car Model and Year
UPDATE Taxi 
SET year = 2017, model = 'Pacifica 2.0' 
WHERE taxiID = 'TX001';
 
--Update Commission Status
UPDATE Taxi 
SET inComission = 'No' 
WHERE taxiID = 'TX005';
 
--Update Car Capacity
UPDATE Taxi 
SET capacity = 8
WHERE taxiID = 'TX002';
 
--Update Car Location
UPDATE Taxi 
SET currentX = 75500, currentY = 6500 
WHERE taxiID = 'TX007';
 
--Update Data in CarInsurance
--Update Monthly Rate
UPDATE CarInsurance 
SET monthlyRate = 160.00 
WHERE policyNumber = 'POL123';
--Update Company Insurance Name
UPDATE CarInsurance 
SET companyName = 'NewInsuranceCo' 
WHERE policyNumber = 'POL124';
--Update Insurance rate and expiration date
UPDATE CarInsurance 
SET expirationDate = TO_DATE('01-FEB-26', 'DD-MON-YY'), monthlyRate = 170.00 
WHERE policyNumber = 'POL125';
--Update new monthly rate
UPDATE CarInsurance 
SET monthlyRate = 150.00 
WHERE policyNumber IN ('POL127', 'POL128');
 
--Update Accidents 
UPDATE Accidents 
SET locationX = 250, locationY = 2155 
WHERE accidentID = 'ACC125';
 
UPDATE Accidents 
SET description = 'Front-end collision at traffic light' 
WHERE accidentID = 'ACC123';
 
UPDATE Accidents 
SET incidentDate = TO_DATE('15-JAN-24', 'DD-MON-YY'), locationX = 400, locationY = 2300 
WHERE accidentID = 'ACC129';
 
UPDATE Accidents 
SET incidentDate = TO_DATE('01-MAR-24', 'DD-MON-YY') 
WHERE taxiID = 'TX001';
 
 
--Update MaintenanceWorkOrder 
UPDATE MaintenanceWorkOrder 
SET dueDate = TO_DATE('17-DEC-23', 'DD-MON-YY') 
WHERE orderID = 'MWO001';
 
UPDATE MaintenanceWorkOrder 
SET dateFulfilled = TO_DATE('15-DEC-23', 'DD-MON-YY') 
WHERE orderID = 'MWO002';
 
UPDATE MaintenanceWorkOrder 
SET dateFulfilled = TO_DATE('10-JAN-24', 'DD-MON-YY') 
WHERE taxiID = 'TX005';
 
UPDATE MaintenanceWorkOrder 
SET adminID = 'ADM006' 
WHERE orderID = 'MWO007';
