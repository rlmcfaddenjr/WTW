
--Available Campsites
CREATE VIEW vwCampfireReservationDates AS
SELECT 
    c.CampsiteName
    , ca.AvailableDate 
FROM Campsite AS c
JOIN CampsiteAvailability AS ca ON c.CampsiteId = ca.CampsiteId
WHERE NOT EXISTS (SELECT PersonID FROM Reservation AS r
WHERE r.CampsiteID = ca.CampSiteID AND ca.AvailableDate = r.ReservationDate
and r.Cancelled = 'FALSE');