CREATE VIEW TaxiStats AS 
SELECT ta.taxiID as taxiID, year, make, model, COUNT(da.assignmentID) as numAsignments, count(da.driverID) as numDrivers
FROM Taxi ta left JOIN DrivingAssignments da on ta.taxiID = da.taxiID 
GROUP BY ta.taxiID, year, make, model;

CREATE VIEW CustomerStats AS
SELECT c.customerID as customerID, c.firstName as firstName, c.lastName as lastName, c.phone as phone, c.email as email, COUNT(t.tripID) as "TripsTaken", 
	Count(pi.CardNumber) as "Payment Methods"
FROM Customer c LEFT JOIN Trip t on c.customerID = t.customerID LEFT JOIN CustomerPaymentInfoLink cpil on cpil.customerID = c.customerID join PaymentInfo pi on pi.CardNumber = cpil.cardNumber
GROUP BY c.customerID, c.firstName, c.lastName, c.phone, c.email;

CREATE VIEW DriverStats AS
SELECT d.driverID, d.salary, count(da.assignmentID) as "numAssignments", count(t.taxiID) as "numTaxis"
from Driver d left Join DrivingAssignments da on d.driverID = da.driverID join Taxi t on t.taxiID = da.taxiID
group by d.driverID, d.salary;

CREATE VIEW MaintenanceStaffView AS
SELECT staffID, firstName, lastName, dateOfEmployment
from MaintenanceStaff;