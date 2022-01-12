SELECT ReservationDate, count(*) NumberVisits FROM Reservation
GROUP BY ReservationDate
HAVING count(*) = 
(SELECT MAX(countres.cntr)
FROM
(
SELECT ReservationDate, Count(*) cntr from Reservation
GROUP BY ReservationDate
) countres
);
