-- Query 1: List all Customer Assistance Staff with their associated Administrators
-- This query retrieves Customer Assistance Staff members and the Administrators they report to.
SELECT CAS.staffID, CAS.firstName AS StaffFirstName, CAS.lastName AS StaffLastName,
       A.firstName AS AdminFirstName, A.lastName AS AdminLastName
FROM CustomerAssistanceStaff CAS
JOIN Administrator A ON CAS.adminID = A.adminID;

-- Query 2: Find the total number of trips completed by each customer
-- Aggregates the number of trips completed by each customer, grouping by customerID.
SELECT C.customerID, C.firstName, C.lastName, COUNT(T.tripID) AS TotalTrips
FROM Customer C
JOIN Trip T ON C.customerID = T.customerID
WHERE T.status = 'completed'
GROUP BY C.customerID, C.firstName, C.lastName
HAVING COUNT(T.tripID) > 0;

-- Query 3: List all Maintenance Work Orders along with assigned staff and used products
-- Joins MaintenanceWorkOrder, AssignedTo, and Use tables to show details for each work order.
SELECT MWO.orderID, MWO.dateCreated, MS.firstName AS StaffFirstName, MP.productName
FROM MaintenanceWorkOrder MWO
JOIN AssignedTo AT ON MWO.orderID = AT.orderID
JOIN MaintenanceStaff MS ON AT.staffID = MS.staffID
JOIN Use U ON MWO.orderID = U.orderID
JOIN MaintenanceProducts MP ON U.productID = MP.productID;

-- Query 4: Find drivers with insurance policies that expire within the next 6 months
-- Uses a subquery to filter policies expiring within the next 6 months.
SELECT D.driverID, D.licenseNumber, DI.companyName, DI.expirationDate
FROM Driver D
JOIN DriverInsurance DI ON D.policyNumber = DI.policyNumber
WHERE DI.expirationDate < (CURRENT_DATE + INTERVAL '6 months');

-- Query 5: Calculate average salary of employees grouped by their role (Administrator, Customer Assistance, Maintenance)
-- Uses multiple joins with GROUP BY to calculate the average salary per role.
SELECT 'Administrator' AS Role, AVG(A.salary) AS AverageSalary
FROM Administrator A
UNION
SELECT 'Customer Assistance' AS Role, AVG(CAS.salary) AS AverageSalary
FROM CustomerAssistanceStaff CAS
UNION
SELECT 'Maintenance Staff' AS Role, AVG(MS.salary) AS AverageSalary
FROM MaintenanceStaff MS;

-- Query 6
-- Retrieve each customer's name, their payment card's expiration year, and the total distance of completed trips by the customer using aggregates(SUM) . This query also joins 4 tables to display the information needed. This also checked the trip is completed.

SELECT c.firstName AS customer_first_name,
       c.lastName AS customer_last_name,
       pi.ExpirationYear AS payment_card_expiration_year,
       SUM(t.distance) AS total_completed_trip_distance
FROM Customer c
JOIN CustomerPaymentInfoLink cpil ON c.customerID = cpil.customerID
JOIN PaymentInfo pi ON cpil.cardNumber = pi.CardNumber
JOIN Trip t ON c.customerID = t.customerID
WHERE t.status = 'completed'
GROUP BY c.customerID, c.firstName, c.lastName, pi.ExpirationYear;


--Query 7
-- Retrieve each administrator’s name, the total number of customer assistance staff they manage, and the total salary paid to these staff members. This query join Administrator and CustomerAssistanceStaff tables while using aggregates(SUM) to calculate total salary and aggregates(COUNT) to count the staff that report to specific admin.

SELECT a.firstName AS admin_first_name,
       a.lastName AS admin_last_name,
       COUNT(cas.staffID) AS staff_count,
       SUM(cas.salary) AS total_staff_salary
FROM Administrator a
JOIN CustomerAssistanceStaff cas ON a.adminID = cas.adminID
GROUP BY a.adminID, a.firstName, a.lastName;


-- find the average distance of trips taken in each city as 
-- indicated by the billing address of the card used for payment
select pc.city, AVG(distance) as "Average Distance"
from Customer c join Trip t on c.customerID = t.customerID
join PaymentInfo pi on t.cardNumber = pi.CardNumber 
join PostalCode pc on pi.postalCode = pc.postalCode
group by pc.city;

-----------------------------------------------------------

-- Select all maintenance staff who have worked on taxi TX001
select firstName, lastName, email from MaintenanceStaff m
where exists(
    select taxiID
	from AssignedTo a join MaintenanceWorkOrder mwo using(orderID) join Taxi t using(TaxiID)
    where taxiID = 'TX001' and m.staffID = a.staffID
    
);

-----------------------------------------------------------------------------------------------

--Show the Policy number, company name, and monthly rate of all insurances from DriverInsurance that are above average
--Uses WHERE and subquery
SELECT driverID, i.policyNumber, i.companyName, i.monthlyRate FROM DriverInsurance i
    JOIN Driver d ON i.policyNumber = d.policyNumber
WHERE monthlyRate >= (SELECT AVG(monthlyRate) FROM DriverInsurance);
 
--Find the last taxi work order of 2023, show the order id, taxi id, model, policy number, date order was created and fulfilled
--uses where and subquery
SELECT taxiID, model, policyNumber, orderID, dateCreated, dateFulfilled
FROM Taxi
	JOIN CarInsurance USING (taxiID)
	JOIN MaintenanceWorkOrder USING (taxiID)
WHERE orderID = (SELECT MAX(orderID) FROM MaintenanceWorkOrder 
    WHERE dateFulfilled <= TO_DATE('31-DEC-23', 'DD-MON-YY'));