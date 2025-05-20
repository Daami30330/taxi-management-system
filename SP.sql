-- Stored Procedure 1: procedure that performs anupdate on the driver table
-- This updates the salary of all drivers based on years of employment and retrieve updated details.
CREATE OR REPLACE FUNCTION UpdateDriverSalaries()
RETURNS VOID AS $$
BEGIN
    UPDATE Driver
    SET salary = salary * 1.05
    WHERE dateOfEmployment < NOW() - INTERVAL '3 years';

    RAISE NOTICE 'Driver salaries updated for those employed more than 3 years.';
END;
$$ LANGUAGE plpgsql;


-- Stored Procedure 2: procedure that uses a conditional CASE statement to decide updates.
-- This updates the trip status based on the duration and rider count.
CREATE OR REPLACE FUNCTION UpdateTripStatus()
RETURNS VOID AS $$
BEGIN
    UPDATE Trip
    SET status = CASE 
                    WHEN duration::interval < INTERVAL '00:15:00' THEN 'completed'
                    WHEN numRiders > 2 THEN 'inprogress'
                    ELSE 'pending'
                 END;

    RAISE NOTICE 'Trip statuses updated.';
END;
$$ LANGUAGE plpgsql;



-- Stored Procdure 3: procedure that performs passing and receiving data.
-- This passes a customerID and returns the trip count.
CREATE OR REPLACE FUNCTION GetCustomerTrips(p_customerID VARCHAR)
RETURNS INTEGER AS $$
DECLARE
    p_tripCount INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO p_tripCount
    FROM Trip
    WHERE customerID = p_customerID;

    RAISE NOTICE 'Total trips for Customer %: %', p_customerID, p_tripCount;
    RETURN p_tripCount;
END;
$$ LANGUAGE plpgsql;


-- Stored Procedure 4: Function that calculates the processed data and returns the total. So use of passing and recieving data and a function that processes it. 
-- Processes data by calculating the total income for a customer using the SUM aggregate function. Input (p_customerID) and returns a processed result (total income).
CREATE OR REPLACE FUNCTION GetCustomerIncome(p_customerID VARCHAR)
RETURNS NUMERIC AS $$
DECLARE
    totalIncome NUMERIC;
BEGIN
    SELECT SUM(distance * 2) -- Example rate per km
    INTO totalIncome
    FROM Trip
    WHERE customerID = p_customerID;

    RETURN COALESCE(totalIncome, 0);
END;
$$ LANGUAGE plpgsql;

