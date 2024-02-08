# Google-Data-Analytics-Capstone-Cyclistic-Case-Study

## Introduction
The Cyclistic Bike Share Case Study serves as the completion of my experience with the Google Data Analytics Professional Certificate on Coursera. This project involves applying the data analysis process acquired during the course, which revolves around the essential
steps of __asking__ relevant questions, __preparing__ the data, __processing__ information, conducting comprehensive __analysis__, __sharing__ valuable insights, and taking __actionable__ steps.

## About Cyclistic
Cyclistic is a bike-share company in Chicago that started a popular bike-sharing program in 2016. Over time, the program has grown, and now they have 5,824 bikes and 692 stations spread throughout the city. With many bikes and stations, customers can easily rent from
one station and return to any other station in the network whenever it suits them.

## The Scenario

I'm a junior data analyst at Cyclistic, a bike-share company in Chicago. The marketing director believes that getting more annual memberships is crucial for the company's success. So, my team is digging into how casual riders and annual members use Cyclistic bikes
differently. We aim to create a new marketing plan to turn casual riders into annual members. But before we can make any changes, the Cyclistic executives need to see strong data and professional charts supporting our ideas.

## Ask
The director of marketing and our manager Lily Moreno has come up with three questions to help guide the future marketing program:
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?
 
Moreno has assigned you the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

## Prepare
Using [Cyclistic's historical trip data set](https://divvy-tripdata.s3.amazonaws.com/index.html) provided by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).  We will look at this most current tweleve month data set __Nov 2022 - Oct 2023__ to analyze and identify trends. 
This is information available to the public for you to check out and see how various customer types use Cyclistic bikes. However, keep in mind that privacy rules prevent you from using any personal details of the riders. So, you can't link
pass purchases to credit card numbers to find out if casual riders live in the Cyclistic service area or if they've bought multiple single passes.

## Processing
First we create a table with our 13 columns, then we combine our 12 csv files into one table called ridedata.  After that is complete we check over the table.

![data_names](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/b52121e2-6b99-46ff-8948-9fa31b26327e)


Checking over the data 

![ridedata](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/de51d2bf-57a1-4dc0-8ca8-7b31326c6fea)

Then I confirm how many rows

![total_rows](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/a1bbb9e0-89e2-45a4-844f-024194bd68a9)

## Data Exploration
Looking over and getting fimilar with the data we start to look for inconsistencies and NULL values.

First we start to look for NULL values.  

![null_values](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/33e8d78f-8832-4c69-9359-568b7a8dfce4)

Counting the ride_id to make sure we have no duplicates

![ride_id_dup](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/89919664-c609-4897-9fc4-2472991f9084)

Checking that the ride_id character length is uniform

![ride_id_16char](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/1542c648-917c-4bae-a9de-4f1924a3fbcf)

Checking rideable_type bikes and that there is only three types

![rideable_type1](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/a9224f0d-231d-4854-87ca-bc844f111972)

Checking member_casual has just member and casual

![member_casual](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/2891023f-3e21-4eb4-9d3b-45f771168770)

## Data Cleaning

We created a table called ridedata_clean.  We are going to use this table to delete all our NULL values and create 3 columns ride_duration, dayofweek, and month.  ride_duration is going to be the duration of the ride in minutes, dayofweek is the 3 letter day of the week
and month is the 3 letter month

![ride_data_clean_3](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/ad766204-73cf-43f8-929f-675bdcd2c40e)

![ride_data_clean_2](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/e00d89dd-ec00-4022-a732-e6add799b765)

Removing rows with NULL values in specified columns and filtering ride times less then 1 min and over 1440 min in ride_duration

![Nulls_filter_times](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/587bc53a-a983-4f97-a7b0-0741f21f06f8)

## Analysing The Data in SQL

Casual and Member rider counts

![member_casual_riders](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/b55264c3-6745-4cb7-9495-ade0d3b0f73d)

Bike preferences between members and casuals

![member_casual_bikes](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/5ae156b2-9768-4132-86c6-56571980a269)

Number of trips per month between members and casuals

![member_casual_month](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/639e1310-9366-4cd0-9979-a3d975133832)


Trips during the week between members and casuals.  This is interesting to me as members tend to use them more during the week as where casuals perfect the weekend.

![member_casual_week](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/9c28e290-c444-4636-bb20-fdb90820a2d4)

Average weekly ride duration in minutes between members and casuals.  Memembers tend to make shorter trips where casuals are more interested in long leisurely trips

![ave_ride_length_day](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/765c55ed-7810-4ed7-a193-609b5716a394)

For curiousity sake what are the names of the busiest bike stations in the city

![busiest_station](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/ba2fbb11-59fe-483c-a167-9bfedb90e807)

I would guess that most members prefer to use their bikes for going to work, maybe grabbing lunch, and going home from work.  The question is are there enough casual riders who enjoy doing the same thing that can be converted to members who also enjoy riding to work.

## Graphs and Charts
Members tend to get their day started around 4-5am and peak at 8am for the morning hours.  The peaks are pretty strong during the weekday, ridership slopes up slightly during lunch hours and then really starts to peak again 4-5pm which we can assume is when a lot of riders
are starting to head home.

![member_weekly_rides](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/8d311711-2e14-4f0b-9710-cf73ee0ce252)

Casual riders while not having as strong of peaks and values do tend to follow the same pattern.  I feel as though there might be enough there to consider running an ad campaign appealing to those who like to ride to work.  Or for those who enjoy their weekend rides who never 
thought about riding to work.

![casual_weekly_rides](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/1ac29abc-4a1a-4454-b030-bf2a2889ea1a)

I feel like this would be the best method of advertising.  You could promote how much members could save on gas, maintenance, and no worries about theft.  You could promote it as a healthy alternative to driving. 

![weekly_ridetotals_bar](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/ea5e39f4-9aa0-4d03-ad32-430168c7bd69)

You could start a campain at the begining of March-April and promote all the way into August-September before the wintery months. 

![member_casual_ridepermonth](https://github.com/rcs1978/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/assets/152421676/33806741-3cc3-4d42-aa59-86126ed6c642)
