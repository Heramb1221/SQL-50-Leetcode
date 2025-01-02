SELECT s.student_id, s.student_name, s2.subject_name,
       COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects s2
LEFT JOIN Examinations e
    ON s.student_id = e.student_id AND s2.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, s2.subject_name
ORDER BY s.student_id, s2.subject_name;
