CREATE TABLE Administrator (
    adminID VARCHAR(10) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    dateOfEmployment DATE NOT NULL,
    email VARCHAR(100) DEFAULT ('not_provided@example.com'),
    salary INT NOT NULL CHECK (salary > 0),
    CHECK (LENGTH(phone) = 10)  -- Phone number must have exactly 10 digits
);

CREATE TABLE CustomerAssistanceStaff (
    staffID VARCHAR(10) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    dateOfEmployment DATE NOT NULL,
    email VARCHAR(100) DEFAULT ('not_provided@example.com'),
    salary INT NOT NULL CHECK (salary > 0),
    adminID VARCHAR(10) NOT NULL,
    CONSTRAINT fk_adminID FOREIGN KEY (adminID) REFERENCES Administrator(adminID),
    CHECK (LENGTH(phone) = 10)
);

CREATE TABLE DriverInsurance (
    policyNumber VARCHAR(10) PRIMARY KEY,
    startDate DATE NOT NULL,
    expirationDate DATE NOT NULL,
    companyName VARCHAR(10) NOT NULL,
    monthlyRate INT NOT NULL,
    -- Table-level constraint
    CHECK (expirationDate > startDate)  -- Expiration time must be after start time
);

CREATE TABLE Driver (
    driverID VARCHAR(10) PRIMARY KEY,
    salary INT NOT NULL CHECK (salary > 0),
    dateOfEmployment DATE NOT NULL,
    licenseNumber VARCHAR(10) NOT NULL ,
    policyNumber VARCHAR(10) NOT NULL,
    -- Foreign Key Constraints
    CONSTRAINT fk_policyNumber FOREIGN KEY (policyNumber) REFERENCES DriverInsurance(policyNumber)
);

CREATE TABLE Customer( 
customerID VARCHAR(10) NOT NULL, 
firstName VARCHAR(50) NOT NULL, 
lastName VARCHAR(50) NOT NULL, 
phone VARCHAR(17) NOT NULL, 
email VARCHAR(50) NOT NULL, 
PRIMARY KEY(customerID) 
);

CREATE TABLE PostalCode( 
PostalCode CHAR(10) NOT NULL, 
city VARCHAR(60) NOT NULL, 
state CHAR(2) NOT NULL, 
PRIMARY KEY (postalCode) 
);

CREATE TABLE PaymentInfo( 
CardNumber CHAR(20) NOT NULL, 
ExpirationMonth INTEGER CHECK(ExpirationMonth >= 1 AND ExpirationMonth <= 12) NOT NULL, 
ExpirationYear INTEGER CHECK(Expirationyear >=1950 AND ExpirationYear <= 2100) NOT NULL, 
cvv INTEGER CHECK(cvv >= 0 AND cvv <=9999) NOT NULL,
CardName VARCHAR(60) NOT NULL, 
PostalCode CHAR(10) NOT NULL, 
addressLine1 VARCHAR(100) NOT NULL, 
AddressLine2 VARCHAR(100), 
PRIMARY KEY (CardNumber), 
CONSTRAINT fk_postalCode FOREIGN KEY (postalCode) REFERENCES PostalCode(postalCode)
);

CREATE TABLE Trip( 
    tripID VARCHAR (10) PRIMARY KEY, 
    distance DECIMAL(5, 2) NOT NULL,
    duration VARCHAR(10) NOT NULL,  
    pickupX VARCHAR(10) NOT NULL, 
    pickupY VARCHAR(10) NOT NULL, 
    destinationX VARCHAR(10) NOT NULL, 
    destinationY VARCHAR(10) NOT NULL, 
    status VARCHAR(10) NOT NULL, 
    numRiders INT NOT NULL,
    cardNumber CHAR(20) NOT NULL,
    customerID VARCHAR(10) NOT NULL,
    -- Foreign Key Constraints 
    CONSTRAINT fk_customerID FOREIGN KEY (customerID) REFERENCES Customer(customerID), 
    CONSTRAINT fk_cardNumber2 FOREIGN KEY (cardNumber) REFERENCES PaymentInfo (cardNumber),
    -- Constraints 
    CHECK (duration BETWEEN '00:00:00' AND '23:59:59')  -- Only accept valid times within the 24-hour period
);

-- Creating MaintenanceStaff Table
CREATE TABLE MaintenanceStaff (
    staffID VARCHAR(10) PRIMARY KEY,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    dateOfEmployment DATE NOT NULL,
    email VARCHAR(100) DEFAULT ('not_provided@example.com'),
    salary DECIMAL(10, 2) NOT NULL CHECK (salary > 0)
);

-- Creating MaintenanceProducts Table
CREATE TABLE MaintenanceProducts (
    productID VARCHAR(10) PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    unitPrice DECIMAL(10, 2) NOT NULL CHECK (unitPrice > 0),
    quantityInStock INT NOT NULL CHECK (quantityInStock >= 0)
);

CREATE TABLE Taxi (
 	 taxiID VARCHAR(10) PRIMARY KEY,
 year INT,
 make VARCHAR(50),
 model VARCHAR(50),
 capacity INT,
 spotNumber INT,
 currentX FLOAT,
 currentY FLOAT,
 inComission VARCHAR(10)
);

CREATE TABLE MaintenanceWorkOrder (
 	orderID VARCHAR(10) PRIMARY KEY,
 dateCreated DATE NOT NULL,
 dueDate DATE NOT NULL,
 dateFulfilled DATE,
 taxiID VARCHAR(10) NOT NULL,
 adminID VARCHAR(10) NOT NULL,
 CONSTRAINT fk_taxiID_MWO FOREIGN KEY (taxiID) REFERENCES Taxi(taxiID) ON DELETE CASCADE,
 CONSTRAINT fk_adminID_MWO FOREIGN KEY (adminID) REFERENCES Administrator(adminID) ON DELETE SET NULL,
CHECK (dueDate > dateCreated)
);

-- Creating Use Table
CREATE TABLE Use (
    productID VARCHAR(10),
    orderID VARCHAR(10),
    PRIMARY KEY (productID, orderID),
    CONSTRAINT fk_productID FOREIGN KEY (productID) REFERENCES MaintenanceProducts(productID),
    CONSTRAINT fk_orderID FOREIGN KEY (orderID) REFERENCES MaintenanceWorkOrder(orderID)
);

-- Creating AssignedTo Table
CREATE TABLE AssignedTo (
    staffID VARCHAR(10),
    orderID VARCHAR(10),
    PRIMARY KEY (staffID, orderID),
    CONSTRAINT fk_staffID_link FOREIGN KEY (staffID) REFERENCES MaintenanceStaff(staffID),
    CONSTRAINT fk_orderID_link FOREIGN KEY (orderID) REFERENCES MaintenanceWorkOrder(orderID)
);

CREATE TABLE CustomerPaymentInfoLink(
customerID VARCHAR(10) NOT NULL,
cardNumber CHAR(20) NOT NULL,
PRIMARY KEY (customerID, cardNumber),
CONSTRAINT fk_customerID_link FOREIGN KEY (customerID) REFERENCES Customer(customerID),
CONSTRAINT fk_cardNumber_link FOREIGN KEY (cardNumber) REFERENCES PaymentInfo(cardNumber)
);

CREATE TABLE CarInsurance (
 policyNumber VARCHAR(10) PRIMARY KEY,
 	taxiID VARCHAR(10) NOT NULL,
 	startDate DATE NOT NULL,
 	expirationDate DATE NOT NULL,
 companyName VARCHAR(100),
 monthlyRate FLOAT,
 CONSTRAINT fk_taxiID_CI FOREIGN KEY (taxiID) REFERENCES Taxi(taxiID) ON DELETE CASCADE,
 UNIQUE (taxiID),
CHECK( expirationDate >startDate )
);

CREATE TABLE Accidents (
 	accidentID VARCHAR(10) PRIMARY KEY,
 	incidentDate DATE NOT NULL,
 locationX FLOAT,
 locationY FLOAT,
 description VARCHAR(255),
 taxiID VARCHAR(10) NOT NULL,
 CONSTRAINT fk_taxiID_A FOREIGN KEY (taxiID) REFERENCES Taxi(taxiID) ON DELETE CASCADE
);


CREATE TABLE DrivingAssignments (
    assignmentID VARCHAR(10) PRIMARY KEY,
    status VARCHAR(20)  DEFAULT 'pending',
    startDateTime TIMESTAMP NOT NULL,
    endDateTime TIMESTAMP NOT NULL,
    staffID VARCHAR(10) NOT NULL,
    driverID VARCHAR(10) NOT NULL,
    taxiID VARCHAR(10) NOT NULL,
    CONSTRAINT fk_staffID FOREIGN KEY (staffID) REFERENCES CustomerAssistanceStaff(staffID),
    CONSTRAINT fk_driverID FOREIGN KEY (driverID) REFERENCES Driver(driverID),
    CONSTRAINT fk_taxiID FOREIGN KEY (taxiID) REFERENCES Taxi(taxiID),
    CHECK (endDateTime > startDateTime)
);