--Checking for duplicate data in ride_id

SELECT ride_id, COUNT(*) AS duplicate
FROM ridedata
GROUP BY ride_id
HAVING COUNT(*) > 1;

--checking that all the charcter lengths are similar

SELECT LEN(ride_id) AS character_length, COUNT(*) AS count_of_length
FROM ridedata
GROUP BY LEN(ride_id)
ORDER BY LEN(ride_id);


--checking rideable_type has 3 unique types

SELECT DISTINCT rideable_type
FROM ridedata;

--checking member_casual has just member and casual

SELECT DISTINCT member_casual
FROM ridedata;

--checking for NULL values

SELECT COUNT(*) - COUNT(ride_id) ride_id,
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
 FROM ridedata	







