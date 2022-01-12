CREATE OR ALTER PROCEDURE uspCancelReservation
    @EmailAddress VARCHAR(100)
    ,@CampsiteName VARCHAR(100) -- Specify the CampsiteName to CANCEL or if NULL=Cancel all reservations for the person for the specific date
    ,@ReservationDate DATE
AS

BEGIN
SET NOCOUNT ON;
DECLARE @PersonID INTEGER;
DECLARE @CampsiteID INTEGER;

SET @PersonID = (SELECT PersonID from Person WHERE EmailAddress = @EmailAddress);
SET @CampsiteID = (SELECT CampsiteID FROM Campsite WHERE CampsiteName = @CampsiteName);

UPDATE Reservation
SET Cancelled = 1
WHERE PersonID = @PersonID AND ReservationDate = @ReservationDate AND (@CampsiteID IS NULL OR CampsiteID = @CampsiteID); 
END;
