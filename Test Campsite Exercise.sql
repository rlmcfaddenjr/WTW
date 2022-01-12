/***************************************************************************
Scripts:
1) Test Campsite Exercise.sql
    - This script is a readme and let's you test the data and procs
    - Run scripts 2 through 6 in your environment.
    - Execute procs and query table in this script
2) WTW Campsite Exercise.sql
    - Run this to create the 4 tables, INSERT 3 Campsites and the CampsiteAvailability data
3) CREATE PROCEDURE - GenerateReservation.sql
    - CREATE or ALTER uspGenerateReservation stored procedure
4) CREATE PROCEDURE - Cancel Reservation.sql
    - CREATE or ALTER uspCancelReservation stored procedure
5) CREATE VIEW - CampsiteReservationDates.sql
    - Selects the Campsite and Date if a) the date exists in the CampsiteAvailability table and the Campsite is not on an active reservation for that date
6) CREATE FUNCTION - usfMostPopularReservationDates.sql
    - CREATE OR ALTER FUNCTION to get the dates with the most Campsite reservations

Tables:
1) Campsite
    - ID and Name of Campsites.  
    - There are 3 created: Horseshoe, Lakeview, and Buffalo
2) CampsiteAvailability 
    - CampsiteID and DateAvailable for reserving.
    - Horseshow is available 6/1/2022 through 8/31/2022
    - Lakeview is available 7/2/2022 through 8/31/2022
    - Buffalo is available 8/1/2022 through 8/31/2022
3) Person
    - ID, Name and Email Address of persons making reservations
4) Reservation
    - Consists of PersonID, CampsiteID, and Date of the reservation
    - Cancelled column 0=active, 1=cancelled

Stored Procedures:
1) uspGenerateReservation (PersonName, EmailAddress, CampsiteName, RequestedDate
    - Creates the Person if the email address doesn't exist.  If existing, update the name
    - If CampsiteName is specified, reserve it if it's available.  If not available, find another Campsite and reserve it.
    - NOTE: If no Campsite can be reserved, the proc does not proved that feedback.  I'd improve this by returning a message if the proc did nothing.
2) uspCancelReservation (Email Address, CampsiteName, ReservationDate)
    - CampsiteName is optional - if specified, cancel the person's reservation for the specific campsite, NULL = cancel all reservations for the person on specied day
    - Could be modified easily to hard delete the reservation.  Only there because I hate throwing away data. 
NOTE: Would definitely add TRY/CATCHes to the stored procedures

View:
1) vwCampfileReservationDates
    - Returns CampsiteName and AvailabileDates (Date is in the CampsiteAvailablity table and the Campsite is not RESERVED for this date).

Function:
1) usfMOstPopularReservationDate()
    - No parameters
    - Table-valued Function
    - Would add TRY/CATCH
***************************************************************************/

/******************************
***  TESTING  RESERVATIONS  ***
*******************************/
-- To create Persons and Reservvations
-- The email address is unique if it doesn't exist it's inserted
-- Name is updated if the rows already exists
-- Parameter 3 is the Campsite.  If available and not reserved is is reserved for the person. If it is left NULL, not available, or is reserved, a different site is picked.
-- If there are no Campsites assigned, the proc does not tell you.  That would be the first thing to fix.
EXECUTE uspGenerateReservation 'Obi','obiwan@doggo.com','Buffalo','6/1/2022'; -- Buffalo selected, Horseshoe assigned because Buffalo not available for reservation until 8/1/2022
EXECUTE uspGenerateReservation 'Obiwan','obiwan@doggo.com','Buffalo','6/2/2022'; --Update PersonName, assign Horseshoe - only available for date
EXECUTE uspGenerateReservation 'Obiwan','obiwan@doggo.com','Buffalo','6/3/2022'; --Assign Horseshoe.  See above
EXECUTE uspGenerateReservation 'Abbey','Abbey@gmail.com',NULL,'6/20/2022'; -- no campsite specified.  An available one is selected.
EXECUTE uspGenerateReservation 'Andy','Andy@gmail.com',NULL,'8/23/2022'; -- no campsite specified.  An available one is selected.
EXECUTE uspGenerateReservation 'Andy','Andy@gmail.com',NULL,'8/23/2022'; -- no campsite specified.  An available one is selected.
EXECUTE uspGenerateReservation 'Andy','Andy@gmail.com',NULL,'8/23/2022'; -- no campsite specified.  An available one is selected.

EXECUTE uspCancelReservation 'Andy@gmail.com',NULL,'8/23/2022'; -- No Campsites specied so Cancels all campsites for Andy on 8/23/2022 
EXECUTE uspCancelReservation 'Andy@gmail.com','Lakeview','8/23/2022'; -- Cancels only Lakeview for Andy on 8/23/2022


-- Query reservations
SELECT c.CampsiteName, p.PersonName, p.EmailAddress, r.ReservationDate, r.Cancelled
FROM Reservation r 
JOIN Campsite c ON r.CampsiteID = c.CampsiteID
JOIN Person p ON r.PersonID = p.PersonID
WHERE r.Cancelled = 'FALSE' -- Filter out the cancelled reservations. Deleting them would have been better.
ORDER BY r.Cancelled, r.ReservationID, c.CampsiteID;

/*********************
*** TEST THE VIEW  ***
**********************/
-- these are unreserved dates - opposite of above reservation query
SELECT * FROM vwCampfireReservationDates
--WHERE AvailableDate = '8/2/2022'
ORDER BY AvailableDate, CampsiteName;

/**************************
***  TEST THE FUNCTION  ***
***************************/
SELECT * FROM usfMostPopularReservationDate();
-- Pick a day in August when 3 Campsites are available and reserve for that day to see this change.
EXECUTE uspGenerateReservation 'Andy','Andy@gmail.com',NULL,'8/23/2022'; -- no campsite specified.  An available one is selected.
EXECUTE uspGenerateReservation 'Andy','Andy@gmail.com',NULL,'8/23/2022'; -- no campsite specified.  An available one is selected.
EXECUTE uspGenerateReservation 'Andy','Andy@gmail.com',NULL,'8/23/2022'; -- no campsite specified.  An available one is selected.



