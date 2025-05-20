--INSERT TRIGGER
--Will not allow the insert of a Driver who's salary is lower than 40,000
CREATE OR REPLACE TRIGGER MinInsertSalary
BEFORE INSERT ON Driver
FOR EACH ROW
DECLARE 
	minSalary INT := 40000;
BEGIN
	IF :NEW.salary < minSalary THEN
		RAISE_APPLICATION_ERROR(-20001, 'Salary must be at least $40,000.');
    END IF;
END;
/

--DELETE Trigger
--Prevents deleting any Administrators that are currently in Customer Assistance Staff
CREATE OR REPLACE TRIGGER AdminDeleteinCAStaff
BEFORE DELETE ON Administrator
FOR EACH ROW
DECLARE
    CAstaff_count INT;
BEGIN
    -- Count the number of staff linked to the administrator being deleted
    SELECT COUNT(*) INTO CAstaff_count
    FROM CustomerAssistanceStaff
    WHERE adminID = :OLD.adminID;
    -- If in CA staff, raise error
    IF CAstaff_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Cannot delete an Administrator assigned to Customer Assistance Staff.');
    END IF;
END;
/
    
-- UPDATE Trigger
-- Prevents updating the salary of a driver to below $40,000 by doing a comparision with minSalary.
CREATE OR REPLACE TRIGGER trg_update_driver_salary
BEFORE UPDATE ON Driver
FOR EACH ROW
DECLARE
    minSalary INT := 40000;
BEGIN
    IF :NEW.salary < minSalary THEN
        RAISE_APPLICATION_ERROR(-20001, 'Salary cannot be reduced below $40,000.');
    END IF;
END;
/

--FOR EACH ROWS TRIGGER
-- Prevent assigning a driver to a new driving assignment if they already have an active one
CREATE OR REPLACE TRIGGER trg_prevent_multiple_driver_assignments
BEFORE INSERT OR UPDATE ON DrivingAssignments
FOR EACH ROW
DECLARE
    v_active_assignments NUMBER;
BEGIN
    -- Count the number of active assignments for the driver being assigned
    SELECT COUNT(*)
    INTO v_active_assignments
    FROM DrivingAssignments
    WHERE driverID = :NEW.driverID
      AND status = 'active'
      AND (
          :NEW.startDateTime BETWEEN startDateTime AND endDateTime
          OR :NEW.endDateTime BETWEEN startDateTime AND endDateTime
      );
 
    -- If there is any active assignment overlapping with the new one, raise an error
    IF v_active_assignments > 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Driver is already assigned to an active assignment during this time.');
    END IF;
END;
/

