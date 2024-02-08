-- Create ridedata_clean table
SELECT
    ride_id,
    rideable_type,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual,
    started_at,
    ended_at,
    DATEDIFF(MINUTE, started_at, ended_at) AS ride_duration,
    CAST(FORMAT(started_at, 'ddd', 'en-US') AS VARCHAR(3)) AS dayofweek,
    CAST(FORMAT(started_at, 'MMM', 'en-US') AS VARCHAR(3)) AS month
INTO ridedata_clean
FROM ridedata

--looking over the data
SELECT TOP (100) *
  FROM ridedata_clean

-- Remove rows with NULL values in specified columns and filter ride_duration
DELETE FROM ridedata_clean
WHERE start_station_name IS NULL
   OR start_station_id IS NULL
   OR end_station_name IS NULL
   OR end_station_id IS NULL
   OR end_lat IS NULL
   OR end_lng IS NULL
   OR ride_duration < 1
   OR ride_duration > 1440;

--checking there is no data with ride times under 1 min and over 1440 min

SELECT COUNT(*)
FROM ridedata_clean
WHERE ride_duration < 1 OR ride_duration > 1440;

--checking that there are no NULL values

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
 COUNT(*) - COUNT(member_casual) member_casual,
 COUNT(*) - COUNT(ride_duration) ride_duration,
 COUNT(*) - COUNT(dayofweek) dayofweek,
 COUNT(*) - COUNT(month) month
FROM ridedata_clean





