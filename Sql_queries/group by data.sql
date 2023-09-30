-- show daily_activity table
-- select *
-- from daily_activity
-- output (There are 940 rows and 15 columns)

-- Find sum of total_steps, total_distance, calories
-- select id, sum(total_steps)as total_steps, round(sum(total_distance),2)as total_distance, sum(calories)as calories
-- from daily_activity
-- group by id
-- order by id

-- select sum(total_steps)as total_steps, round(sum(total_distance),2)as total_distance, sum(calories)as calories, to_char(activity_date, 'Day') as week_of_day
-- from daily_activity
-- group by week_of_day

-- Show hourly_activity table
-- Select *
-- From hourly_activity
-- output (There are 22099 rows and 6 column)

-- Select id, sum(total_intensity)as total_intensity, sum(calories)as calories
-- from hourly_activity
-- group by id
-- order by id

-- Show on sleep_day table
-- select *
-- from sleep_day
-- output (there are 413 rows and 5 coloumn)

-- Select id, sum(total_sleep_records),as total_sleep_records, sum(total_minute_sleep)as total_sleep_minute, sum(total_time_in_bed)as total_time_in_bed
-- from sleep_day
-- group by id
-- order by id

-- show on total_weight table
-- select *
-- from total_weight

-- select id, round(sum(weight_kg),2)as weight_kg, round(sum(weight_pound),2)as weight_pound, sum(fat)as fat
-- from total_weight
-- group by id
-- order by id

-- select round(sum(weight_kg),2)as sum_of_weight, to_char(date, 'Day') as week_of_day
-- from total_weight
-- group by week_of_day
-- order by 2,1 DESC
-- select sum(total_steps)as total_steps, sum(calories)as total_calories, to_char(activity_date, 'Day') as week_of_day
-- from daily_activity
-- group by week_of_day
-- order by total_steps