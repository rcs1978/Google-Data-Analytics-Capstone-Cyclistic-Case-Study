--member_casual rider count

SELECT member_casual, COUNT (*) AS ride_count
FROM ridedata_clean
GROUP BY member_casual

-- no. of trips per month

SELECT
    member_casual,
    month,
    COUNT(*) AS trip_count
FROM ridedata_clean
GROUP BY member_casual, month
ORDER BY member_casual, trip_count DESC;

-- no. of trips per day of week

SELECT
    member_casual,
    dayofweek,
    COUNT(*) AS trip_count
FROM ridedata_clean
GROUP BY member_casual, dayofweek
ORDER BY member_casual, trip_count DESC;

-- no. of trips per hour

SELECT
    member_casual,
    DATEPART(HOUR, started_at) AS hour_of_day,
    COUNT(*) AS trip_count
FROM ridedata_clean
GROUP BY member_casual, DATEPART(HOUR, started_at)
ORDER BY member_casual, hour_of_day;

--average ride length per month

SELECT
    member_casual,
    month,
    AVG(ride_duration) AS avg_ride_length_per_month
FROM ridedata_clean
GROUP BY member_casual, month
ORDER BY member_casual, avg_ride_length_per_month DESC;

--average ride length per day of week

SELECT
    member_casual,
    dayofweek,
    AVG(ride_duration) AS avg_ride_length_per_day
FROM ridedata_clean
GROUP BY member_casual, dayofweek
ORDER BY member_casual, avg_ride_length_per_day DESC;

--average ride length per hour of day

SELECT
    member_casual,
    DATEPART(HOUR, started_at) AS hour_of_day,
    AVG(ride_duration) AS avg_ride_length_per_hour
FROM ridedata_clean
GROUP BY member_casual, DATEPART(HOUR, started_at)
ORDER BY member_casual, hour_of_day;


--busiest casual start stations

SELECT
    start_station_id,
    start_station_name,
    COUNT(*) AS trip_count
FROM ridedata_clean
WHERE member_casual = 'casual'
GROUP BY start_station_id, start_station_name
ORDER BY trip_count DESC;

--busiest casual end station

SELECT
    end_station_id,
    end_station_name,
    COUNT(*) AS trip_count
FROM ridedata_clean
WHERE member_casual = 'casual'
GROUP BY end_station_id, end_station_name
ORDER BY trip_count DESC;


--busiest station overall (member and casual)

SELECT
    station_id,
    station_name,
    COUNT(*) AS trip_count
FROM (
    SELECT start_station_id AS station_id, start_station_name AS station_name
    FROM ridedata_clean
    UNION ALL
    SELECT end_station_id AS station_id, end_station_name AS station_name
    FROM ridedata_clean
) AS combined_stations
GROUP BY station_id, station_name
ORDER BY trip_count DESC;

