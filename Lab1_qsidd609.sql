--1
SELECT f_last, f_first
FROM faculty
WHERE f_rank = "FULL"
OR f_rank = "INST";

--2
SELECT f_last, f_first
FROM faculty
WHERE f_rank IN ("FULL", "INST");

--3
SELECT s_last, s_first
FROM student
WHERE s_dob BETWEEN "1985-01-01" AND "1985-12-31";

--4
SELECT s_last, s_first
FROM student
WHERE s_dob >= "1985-01-01"
AND s_dob <= "1985-12-31";

--5
SELECT c_sec_id
FROM course_section
WHERE c_sec_day NOT LIKE "%W%F%";

--6
SELECT s_id
FROM enrollment
WHERE grade IS NULL;

--7
SELECT COUNT(grade)
FROM enrollment
WHERE grade = "B"
AND c_sec_id = 6;

--8
SELECT AVG(max_enrl)
FROM course_section
WHERE c_sec_id = 1
AND term_id = 4;

--9
SELECT DISTINCT f_id
FROM student;

--10
SELECT f_id, f_rank
FROM faculty
WHERE f_rank = "ASSO";

--11
SELECT f_id, COUNT(*)
FROM student
GROUP BY f_id;

/* Question 11, continued:
No, this query CANNOT be written in 2 ways.
The above is the only way it can be written. */

--12
SELECT DISTINCT loc_id
FROM faculty;

--13
SELECT DISTINCT loc_id
FROM course_section;

--14
SELECT c_sec_id, c_sec_id
FROM course_section
ORDER BY loc_id DESC;

--15
SELECT loc_id
COUNT (c_sec_id)
FROM course_section
GROUP BY loc_id HAVING
COUNT((c_sec_id) > 3);
