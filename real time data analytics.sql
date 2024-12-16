create table user_submissions
(
id serial primary key,
user_id bigint,
question_id int,
points int,
submitted_at timestamp with time zone,
username varchar(50)
);

select * from user_submissions;

-- List all distinct users and their stats (return user_name, total_submissions, points earned)

select
 username,
count(user_id) as total_submission,
sum(points) as points_earned
from user_submissions
group by username
order by points_earned desc;

/* Q.2 Calculate the daily average points for each user.
 each day
 each user and their daily avg points
 group by day and user */

 select 
 to_char(submitted_at, 'DD-MM') as day,
 username,
 avg(points) as daily_avg_points
 from user_submissions
 group by 1,2 
 order by daily_avg_points desc; 

/*Q.3 Find the top 3 users with the most correct submissions for each day.

 each day
 most correct submissions */
with daily_submission as (
    select 
        to_char(submitted_at, 'DD-MM') as daily,
        username,
        sum(
            case
                when points > 0 then 1 
                else 0
            end
        ) as correct_submission
    from user_submissions
    group by 1, 2
),
user_rank as(
select 
    daily,
    username,
    correct_submission,
    dense_rank() over (partition by daily order by correct_submission desc) as rank
from daily_submission
)

select 
    daily,
    username,
    correct_submission
	from user_rank 
	where rank <=3;


--Q.4 Find the top 5 users with the highest number of incorrect submissions.
select 

        username,
        sum(
            case
                when points < 0 then 1 
                else 0
            end
        ) as incorrect_submission
    from user_submissions
	group by 1 
	order by incorrect_submission desc
	limit 5;

--Q.5 Find the top 10 performers for each week.

SELECT *  
FROM
(
	SELECT 
		-- WEEK()
		EXTRACT(WEEK FROM submitted_at) as week_no,
		username,
		SUM(points) as total_points_earned,
		DENSE_RANK() OVER(PARTITION BY EXTRACT(WEEK FROM submitted_at) ORDER BY SUM(points) DESC) as rank
	FROM user_submissions
	GROUP BY 1, 2
	ORDER BY week_no, total_points_earned DESC
)
WHERE rank <= 10
