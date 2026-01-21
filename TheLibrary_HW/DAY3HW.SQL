--Find the Average, Maximum, and Minimum marks obtained in the Day 1 Exam to see how the class performed as a whole.
select
AVG(total_score) as average_marks,
MAX(total_score) as highest_marks,
MIN(total_score) as lowest_marks
from
day_1_exam

--List the names of MBA students who scored above 35 on Day 2.
select
t1.full_name,
t2.total_score
from
"RSVP_New" as t1
join
day_2_exam as t2
on t1.hall_ticket_no = t2.hall_ticket_no
where
total_score > 35
group by 1,2

--Identify students whose Day 2 score was strictly higher than their Day 1 score.


--Do passing students work faster? Join day_2_exam with qaday2 to find the average 'Total Time' for students who 'Pass' vs those who 'Fail'.
select
result_status,
avg(t2."Total Time") as avg_total_time
from
day_2_exam as t1
join qaday2 as t2
on t1.hall_ticket_no = t2.hall_ticket_no
group by 1

--Which students have NULLs in Q1 or Q2 but still passed the Day 2 exam? (This helps identify students who skip but are still accurate).

--For each department, show the total number of registrations, total students who took Day 1, and total students who took Day 2.


--Using the dob (Date of Birth) in RSVP_New, identify students born before the year 2000 as 'Senior Students' and those born in 2000 or later as 'Junior Students'.

--Join day_2_exam with qaday2. Create a logic: If 'Total Time' is less than 1000 and 'Result' is 'Pass', label them as 'High Efficiency'. If they passed but took longer, label them as 'Hard Worker'.

--If a student finished Question 1 (Q1) in under 15 seconds, they are 'Quick to Fall in Love.' If they took over 60 seconds, they are 'Hard to Get.' If they skipped (NULL), they are 'Focusing on their Career'.

--Get the full details from RSVP_New for the student who got the absolute maximum score on Day 2.(use subquery)

--Who registered for the class before 'AMENAH AHSAN'?(use subquery)

--Show the details of students who are among the 5 fastest finishers of the Day 2 exam.

