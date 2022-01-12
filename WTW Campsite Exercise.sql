DECLARE @CampSiteID INTEGER; -- used to create sample CampsiteAvailability data.
                             -- pretending like I don't know the IDs of the 3 campsites being created.

USE WTW;

-- Campsite Table
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'Campsite') DROP TABLE Campsite;
CREATE TABLE Campsite
(
    CampsiteID INTEGER IDENTITY (1,1)
    ,CampsiteName VARCHAR(100) UNIQUE NOT NULL
);
-- Campsite data
INSERT INTO Campsite( CampsiteName) VALUES ('Horseshoe');
INSERT INTO Campsite( CampsiteName) VALUES ('Lakeview');
INSERT INTO Campsite( CampsiteName) VALUES ('Buffalo');
------------ End of Campsite

--CampsiteAvailability Table
IF EXISTS (SELECT name FROM sys.tables WHERE name = 'CampsiteAvailability') DROP TABLE CampsiteAvailability;
CREATE TABLE CampsiteAvailability
(
    CampsiteAvailabilityID INTEGER IDENTITY(1,1)
    ,CampSiteID INTEGER
    ,AvailableDate DATE
);
--Campsite Availability data
--I used Excel to create these INSERTs.  Create one row then generate the rest.
-- Make Horseshoe available from June 1 through Aug 31
SET @CampsiteID = (SELECT CampsiteID FROM Campsite WHERE CampsiteName = 'Horseshoe');
INSERT INTO CampsiteAvailability(CampsiteID, AvailableDate) VALUES (@CampSiteID,'6/1/2022'); 
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/2/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/3/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/4/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/5/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/6/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/7/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/8/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/9/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/10/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/11/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/12/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/13/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/14/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/15/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/16/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/17/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/18/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/19/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/20/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/21/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/22/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/23/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/24/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/25/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/26/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/27/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/28/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/29/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'6/30/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/1/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/2/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/3/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/4/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/5/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/6/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/7/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/8/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/9/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/10/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/11/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/12/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/13/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/14/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/15/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/16/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/17/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/18/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/19/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/20/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/21/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/22/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/23/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/24/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/25/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/26/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/27/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/28/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/29/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/30/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/31/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/1/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/2/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/3/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/4/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/5/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/6/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/7/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/8/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/9/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/10/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/11/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/12/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/13/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/14/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/15/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/16/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/17/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/18/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/19/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/20/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/21/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/22/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/23/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/24/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/25/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/26/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/27/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/28/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/29/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/30/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/31/2022');

-- Lakeview is available July 1 through August 31
SET @CampsiteID = (SELECT CampsiteID FROM Campsite WHERE CampsiteName = 'Lakeview');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/1/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/2/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/3/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/4/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/5/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/6/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/7/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/8/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/9/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/10/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/11/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/12/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/13/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/14/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/15/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/16/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/17/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/18/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/19/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/20/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/21/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/22/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/23/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/24/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/25/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/26/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/27/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/28/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/29/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/30/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'7/31/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/1/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/2/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/3/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/4/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/5/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/6/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/7/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/8/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/9/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/10/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/11/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/12/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/13/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/14/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/15/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/16/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/17/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/18/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/19/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/20/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/21/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/22/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/23/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/24/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/25/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/26/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/27/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/28/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/29/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/30/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/31/2022');

-- Buffalo is available August 1 through 31
SET @CampsiteID = (SELECT CampsiteID FROM Campsite WHERE CampsiteName = 'Buffalo');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/1/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/2/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/3/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/4/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/5/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/6/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/7/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/8/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/9/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/10/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/11/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/12/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/13/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/14/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/15/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/16/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/17/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/18/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/19/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/20/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/21/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/22/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/23/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/24/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/25/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/26/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/27/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/28/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/29/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/30/2022');
INSERT INTO CampsiteAvailability(CampsiteID,AvailableDate) VALUES (@CampsiteID,'8/31/2022');
------------ END CampsiteAvailability

--Person table
--I decided to do a person table rather than denormalize and have the person info on the RESERVATION table
IF EXISTS(SELECT name FROM sys.tables WHERE name = 'Person') DROP TABLE Person;
CREATE TABLE Person(
    PersonID INTEGER IDENTITY(1,1)
    ,PersonName VARCHAR(100) NOT NULL
    ,EmailAddress VARCHAR(100) NOT NULL
    );
-- Person data created by the GenerateReservation stored procedure
-- END Person

-- Reservation table
IF EXISTS(SELECT name FROM sys.tables WHERE name = 'Reservation') DROP TABLE Reservation;
CREATE TABLE Reservation(
    ReservationID INTEGER IDENTITY(1,1)
    ,CampsiteID INTEGER NOT NULL
    ,PersonID INTEGER NOT NULL
    ,ReservationDate DATE NOT NULL
    ,Cancelled BIT NOT NULL
);
--Reservation created by the GenerateReservation stored procedue
-- END Reservation

