-- Problem: Students and Examinations
--
-- Goal: Write a solution to find the number of times each student attended each exam.
--

SELECT st.student_id, st.student_name, sb.subject_name, COUNT(e.subject_name) as attended_exams 
FROM Students as st
CROSS JOIN Subjects as sb
LEFT JOIN Examinations as e
    ON st.student_id = e.student_id AND sb.subject_name = e.subject_name
GROUP BY st.student_id, st.student_name, sb.subject_name
ORDER BY st.student_id, st.student_name, sb.subject_name
