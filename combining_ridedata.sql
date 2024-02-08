-- Create the ridedata table with desired column names and data types
CREATE TABLE ridedata (
    ride_id VARCHAR(50),
    rideable_type VARCHAR(50),
	started_at datetime2(7),
	ended_at datetime2(7),
    start_station_name VARCHAR(75),
    start_station_id VARCHAR(50),
    end_station_name VARCHAR(75),
    end_station_id VARCHAR(50),
	start_lat float,
	start_lng float,
	end_lat float,
	end_lng float,
    member_casual VARCHAR(50)
);

--Inserting the values from the 12 tables into one table
INSERT INTO ridedata (
    ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
)
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202211-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202212-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202301-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202302-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202303-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202304-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202305-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202306-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202307-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202308-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202309-divvy-tripdata]
UNION ALL
SELECT ride_id,
    rideable_type,
	started_at,
	ended_at,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
	start_lat,
	start_lng,
	end_lat,
	end_lng,
    member_casual
FROM [202310-divvy-tripdata]

--verifying the table ridedata 5652827 total rows

SELECT COUNT(*) AS total_rows
FROM ridedata

SELECT TOP (100) *
  FROM ridedata


