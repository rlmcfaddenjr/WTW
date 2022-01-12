CREATE OR ALTER PROCEDURE uspGenerateReservation
    @PersonName VARCHAR(100) 
    ,@EmailAddress VARCHAR(100)
    ,@CampsiteName VARCHAR(100)
    ,@RequestedDate DATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @PersonID INTEGER;
    DECLARE @CampsiteID INTEGER;

-- Check to see if there's a person with the email address.  If not, add them. If there, update the name.
    BEGIN TRANSACTION
    MERGE [dbo].[Person] AS tgt
    USING (VALUES(@PersonName, @EmailAddress))
    AS src(PersonName, EmailAddress)
    on tgt.EmailAddress = src.EmailAddress
    WHEN MATCHED THEN 
        UPDATE SET PersonName = @PersonName 
    WHEN NOT MATCHED THEN 
        INSERT (
            PersonName
            ,EmailAddress)
        VALUES(
            @PersonName
            ,@EmailAddress
        );

    SET @PersonID = (Select PersonID from dbo.Person WHERE EmailAddress = @EmailAddress);
    SET @CampsiteID = (SELECT CampsiteID from dbo.Campsite WHERE CampsiteName = @CampsiteName);

-- Get a reservation at the requested Campsite for the specified day,
-- if not available, get a reservation at another available Campsite.
IF @CampsiteID IS NOT NULL
    BEGIN
    SET @CampsiteID = (SELECT 
        ca.CampsiteID
    FROM CampsiteAvailability AS ca 
    WHERE ca.CampsiteId = @CampsiteId
        AND ca.AvailableDate = @RequestedDate
    AND NOT EXISTS (
        SELECT ReservationID 
        FROM Reservation AS r
        WHERE
            r.CampsiteID = ca.CampSiteID 
            AND r.ReservationDate = ca.AvailableDate
            AND r.Cancelled = 'FALSE'
        )
    );
    END;

--Requested CampSite is reserved or not avaliable
IF @CampsiteID IS NULL
    BEGIN
    SET @CampsiteID = (SELECT TOP 1
        ca.CampsiteID
    FROM CampsiteAvailability AS ca 
    WHERE ca.AvailableDate = @RequestedDate
    AND NOT EXISTS (
        SELECT ReservationID 
        FROM Reservation AS r
        WHERE
            r.CampsiteID = ca.CampSiteID 
            AND r.ReservationDate = ca.AvailableDate
            AND r.Cancelled = 'FALSE'
        )
    );
    END;

    IF @CampsiteID IS NOT NULL

    INSERT INTO Reservation(CampsiteID,PersonID,ReservationDate,Cancelled) VALUES (@CampsiteID, @PersonID, @RequestedDate, 0);
COMMIT;

END;
