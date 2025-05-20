
-- Not Null Constraint Violation: Attempting to insert NULL into a NOT NULL column (phone) in Administrator
INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary)
VALUES ('ADM012', 'NullTest', 'Admin', NULL, TO_DATE('2023-02-05', 'YYYY-MM-DD'), 'nulltest@example.com', 65000);

-- Check Constraint Violation: Attempting to insert an invalid salary value (negative salary) in Administrator
INSERT INTO Administrator (adminID, firstName, lastName, phone, dateOfEmployment, email, salary)
VALUES ('ADM013', 'NegativeSalary', 'Admin', '9876543210', TO_DATE('2023-03-01', 'YYYY-MM-DD'), 'negativesalary@example.com', -5000);

-- Referential Integrity Violation: Attempting to insert a non-existent adminID in CustomerAssistanceStaff
INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID)
VALUES ('CAS011', 'ForeignKeyTest', 'Staff', '1231231234', TO_DATE('2022-07-15', 'YYYY-MM-DD'), 'foreignkey@example.com', 47000, 'NOEXIST');

-- Check Constraint Violation: Attempting to insert an invalid phone number (not 10 digits) in CustomerAssistanceStaff
INSERT INTO CustomerAssistanceStaff (staffID, firstName, lastName, phone, dateOfEmployment, email, salary, adminID)
VALUES ('CAS013', 'InvalidPhone', 'Staff', '123', TO_DATE('2022-12-01', 'YYYY-MM-DD'), 'invalidphone@example.com', 46000, 'ADM003');

-- Check Constraint Violation: Attempting to set endDateTime before startDateTime in DrivingAssignments
INSERT INTO DrivingAssignments (assignmentID, status, startDateTime, endDateTime, staffID, driverID, taxiID)
VALUES ('ASSG012', 'completed', TO_TIMESTAMP('2023-11-16 14:00', 'YYYY-MM-DD HH24:MI'), TO_TIMESTAMP('2023-11-16 10:00', 'YYYY-MM-DD HH24:MI'), 'CAS001', 'DRV002', 'TX002');

--------------------------------------------------------------------------------------------------------------

-- 1. Violate PRIMARY KEY constraint by attempting to insert a duplicate policyNumber in DriverInsurance
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate)
VALUES ('POL001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'TestCo', '140.00');

-- 2. Violate CHECK constraint on salary by inserting a negative value in Driver
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber)
VALUES ('DRV011', -5000, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'LIC011', 'POL002');

-- 3. Violate CHECK constraint on duration by setting duration outside 24-hour range in Trip
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, customerID)
VALUES ('TRP011', 15.0, '24:00:00', '40.7128N', '74.0060W', '40.7306N', '73.9352W', 'inprogress', 2, 'CUST001');

-- 4. Violate NOT NULL constraint by inserting a NULL policyNumber in Driver
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber)
VALUES ('DRV012', 52000, TO_DATE('2023-05-10', 'YYYY-MM-DD'), 'LIC012', NULL);

-- 5. Violate FOREIGN KEY constraint by setting an invalid customerID in Trip
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, customerID)
VALUES ('TRP012', 12.0, '00:35:00', '40.7580N', '73.9855W', '40.7306N', '73.9352W', 'completed', 3, 'CUST999');

-- 6. Violate PRIMARY KEY constraint by inserting a duplicate tripID in Trip
INSERT INTO Trip (tripID, distance, duration, pickupX, pickupY, destinationX, destinationY, status, numRiders, customerID)
VALUES ('TRP001', 8.5, '00:22:00', '40.7291N', '73.9965W', '40.7580N', '73.9855W', 'inprogress', 2, 'CUST003');

-- 7. Violate CHECK constraint on monthlyRate by inserting a non-numeric value in DriverInsurance
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate)
VALUES ('POL011', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 'SafeLife', 'ABC');

-- 8. Violate CHECK constraint on expirationDate by setting it before startDate in DriverInsurance
INSERT INTO DriverInsurance (policyNumber, startDate, expirationDate, companyName, monthlyRate)
VALUES ('POL012', TO_DATE('2024-06-01', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'), 'CoverNow', 145.00);

-- 9. Violate FOREIGN KEY constraint by setting an invalid policyNumber in Driver
INSERT INTO Driver (driverID, salary, dateOfEmployment, licenseNumber, policyNumber)
VALUES ('DRV014', 48000, TO_DATE('2024-11-01', 'YYYY-MM-DD'), 'LIC014', 'POL999');	

-------------------------------------------------------------------------------------------------------------------

