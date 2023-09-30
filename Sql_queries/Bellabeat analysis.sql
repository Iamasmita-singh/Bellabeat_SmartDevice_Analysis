-- Sleep_Minute query 

select * )
from sleep_minute

select date, sum(value), TO_CHAR(DATE, 'DAY') AS "day", TO_CHAR(DATE, 'dd-mm-yyyy') AS "date", TO_CHAR(DATE, 'MI') AS "minute"
from sleep_minute
group by date, day

select sum(total_steps), To_CHAR(activity_date, 'DAY')as"day"
from daily_activity
group by day


select sum(calories)as calories, To_CHAR(activity_date, 'DAY')as"day"
from daily_activity
group by day
-- select value, TO_CHAR(DATE, 'T''HH24''MI') AS "MINUTE"
-- from sleep_minute

-- select id, sum(value)
-- from sleep_minute
-- group by id

-- Daily_Activity query
Select activity_date, sum(total_steps)as total_steps,sum(calories)as calories
from daily_activity
group by activity_date
order by activity_date

select *
from daily_activity

Select distinct(activity_date)
from daily_activity
order by activity_date

-- select id, Sum(total_steps)as total_steps, sum(total_distance)as total_distance, sum(tracker_distance)as tracker_distance
-- from daily_activity
-- group by id

select activity_date, round(sum(abs(total_distance- tracker_distance)),2) as distance 
from daily_activity
group by activity_date
order by activity_date



select id, count(total_steps)as total_steps, count(total_distance)as total_distance, count(tracker_distance)as tracker_distance
from daily_activity
group by id
order by id

select activity_date,sum(total_steps)as total_steps, round(sum(total_distance),2)as total_distance,round(sum(tracker_distance),2)as tracker_distance
from daily_activity
group by activity_date
order by activity_date

select activity_date,round(sum(very_active_distance),2)as very_active_distance , round(sum(moderatly_active_distance),2)as moderatly_active_distance, round(sum(light_active_distance),2)as light_active_distance, round(sum(sedenatory_active_distance),2)as sedenatory_active_distance
from daily_activity
group by activity_date
order by activity_date

-- select activity_date,round(sum(very_active_minutes),2)as very_active_minutes , round(sum(fairly_active_minutes),2)as fairly_active_minute, round(sum(lightly_active_minute),2)as lightly_active_minute
-- from daily_activity
-- group by activity_date
-- order by activity_date

select activity_date, sum(calories)as calories
from daily_activity
group by activity_date
order by activity_date

-- select id, sum(calories)as calories
-- from daily_activity
-- group by id
-- order by id

-- Anlysis of hourly_activity
select count(id), activity_hour
from hourly_activity
group by activity_hour
order by activity_hour

select *
from hourly_activity
where activity_hour= '18:00:00'

select *
from hourly_activity

-- select count(*)
-- from hourly_activity

select activity_hour, sum(total_step)as total_steps, sum(total_intensity)as total_intensity, sum(calories)as callories
from hourly_activity
group by activity_hour
order by activity_hour

select id, sum(total_step)as total_step, sum(total_intensity)as total_intensity, sum(calories)as calories
from hourly_activity
group by id
order by id

-- -- Analysis of sleep day activity
Select *
from sleep_day

-- Select count(*)
-- from sleep_day

select sum(total_sleep_records)as total_sleep_records, sum(total_minute_sleep)as total_minute_sleep, sum(total_time_in_bed)as total_time_in_bed, TO_CHAR(sleep_day, 'DAY') AS "day"
from sleep_day
group by day

select To_CHAR(sleep_day, 'day')as day, sum(total_time_in_bed- total_minute_sleep)as extra_time_in_bed
from sleep_day
group by day

select sum(total_sleep_records)as total_sleep, sum(total_minute_sleep)as total_minute_sleep, sum(total_time_in_bed)as total_time_in_bed, TO_CHAR(sleep_day,'dd-mm-yyyy' ) AS "date"
from sleep_day
group by date
order by date

select To_CHAR(sleep_day, 'dd-yy-mm')as date, sum(total_time_in_bed- total_minute_sleep)as extra_time_in_bed
from sleep_day
group by date
-- Analysis of total_weight
select *
from total_weight

select id, date, weight_kg, weight_pound, TO_CHAR(date, 'day') AS "day"
from total_weight

select date, weight_kg, weight_pound, TO_CHAR(date, 'T''HH24') AS "hour"
from total_weight

select id, round(sum(weight_kg),2) as weight_kg, round(sum(weight_pound),2)as weight_pound 
from total_weight
group by id
order by id

select id, sum(value)as heart_rate
from heart_rate
group by id
order by heart_rate

select round(Avg(value),2), TO_CHAR(date, 'day') AS "day"
from heart_rate
group by day

select id, date, avg(value), TO_CHAR(time, 'HH24''MI') AS "hour"
from heart_rate
group by hour, id, date
order by date

