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
SUM(total_score) AS TOTAL_MARKS
from
day_2_exam
where
total_score > 40

Q6: Count students by result status for those who scored 35 or more.
select
distinct result_status,
COUNT(*) AS STUDENT_COUNT
from
day_2_exam
WHERE 
total_score >= 35
GROUP BY 1

Q7: Find average score grouped by result status for students with scores between 30 and 40.
select
distinct result_status,
AVG (total_score) AS AVG_SCORE
from
day_2_exam
where
total_score between 30 AND 40
GROUP BY 1

Q8: Get maximum and minimum scores grouped by result status for students who scored less than 35.
select
distinct result_status,
MAX(total_score) AS MAX_SCORE,
MIN(total_score) AS MIN_SCORE
from
day_2_exam
where
total_score < 35
GROUP BY 1

Q9: Count students grouped by result status for those whose names start with 'A'.
select
distinct result_status,
COUNT (student_name) AS STUDENT_COUNT
from
day_1_exam
where
student_name LIKE 'A%'
GROUP BY 1

Q10: Sum total scores grouped by result status for students who scored exactly 35, 40, or 45.
select
distinct result_status,
SUM(total_score) AS TOTAL_MARKS
from
day_2_exam
where
total_score = 35 OR total_score = 40 OR total_score = 45
GROUP BY 1

Q11: Count students by each score value, ordered by score descending.
select
total_score,
COUNT (*) AS STUDENT_COUNT
from
day_2_exam
GROUP BY 1
ORDER BY total_score desc

Q12: Show average score for each result status, ordered by average score.
select
distinct result_status,
AVG(total_score) AS AVG_SCORE
from
day_2_exam
GROUP BY 1 
ORDER BY AVG_SCORE DESC

Q13: Count how many students got each score, only for scores above 30, ordered by frequency.
select
total_score,
COUNT(*) AS STUDENTS_COUNT
from
day_2_exam
where
total_score>30
GROUP BY 1
ORDER BY STUDENTS_COUNT desc

Q14: Get total marks sum for each result status, ordered by sum.
select
distinct result_status,
SUM (total_score) AS TOTAL_MARKS
from
day_2_exam
GROUP BY 1 
ORDER BY TOTAL_MARKS desc

Q15: Find minimum score for each result status, ordered by min score.
select
result_status,
MIN(total_score) AS MIN_SCORE
from
day_2_exam
GROUP BY 1
ORDER BY MIN_SCORE desc

Q16: For passed students only, show count, average, max and min scores grouped by whether score is above 40.
select
count(*),
avg(total_score),
max(total_score),
min(total_score)
from
day_2_exam
where
result_status = 'Pass'

Q17: Count and average score for each result status, only for scores not equal to 35.
select
distinct result_status,
COUNT(hall_ticket_no) AS STUDENTS_COUNT,
AVG(total_score) AS AVG_SCORE
from
day_2_exam
where
total_score <> 35
GROUP BY 1

Q18: Group students by score ranges (0-20, 21-30, 31-40, 41-50) and show count for each range.

Q19: For each result status, show count of students with scores greater than 30 and less than 40.
select
result_status,
COUNT(*)
from
day_2_exam
where
total_score > 30 AND total_score < 40
GROUP BY 1

Q20: Group by first letter of student name and show count and average score for each letter.




