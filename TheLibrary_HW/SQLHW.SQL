Q1: Count how many students passed the exam.
select
count (hall_ticket_no) as students_passed
from
day_2_exam
where
result_status = 'Pass'

Q2: Find the average score of all students who failed.
select
ROUND (avg (total_score),2) as AVG_FAILED_SCORE
from
day_2_exam
where
result_status = 'Fail'

Q3: Get the highest score among all students.
select
MAX(total_score) AS HIGHEST_SCORE
from
day_2_exam

Q4: Get the lowest score among passed students.
select
MIN(total_score) AS LOWEST_SCORE
from
day_2_exam

Q5: Sum the total marks of all students who scored above 40.
select
SUM(total_score)
from
day_2_exam
where
total_score > 40



