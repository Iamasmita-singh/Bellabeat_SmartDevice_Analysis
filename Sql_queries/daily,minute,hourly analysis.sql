Select *
from hourly_calories

select calories,TO_CHAR(activity_hour, 'HH24') AS "hour", TO_CHAR(activity_hour, 'day') AS "day", TO_CHAR(activity_hour, 'yyyy-mm-dd') AS "date"
from hourly_calories

select sum(calories)as calories, TO_CHAR(activity_hour, 'day') AS "day"
from hourly_calories
group by day

select *
from daily_calories

select id, calories, TO_CHAR(activity_day, 'day') AS "day"
from daily_calories

select *
from minute_steps

select id,  steps, TO_CHAR(activity_minute, 'day') AS "day", TO_CHAR(activity_minute, 'yyyy-mm-dd')as "date", TO_CHAR(Activity_minute,'MI') AS "MINUTE"
from minute_steps


select activity_day, sum(step_total)as total_steps,TO_CHAR(Activity_day, 'day') AS "day"
from daily_steps
group by activity_day
order by activity_day
limit 20;