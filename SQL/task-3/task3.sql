# Write a query to find the total number of students enrolled in each course.
SELECT c.course_id, c.course_name, COUNT(e.student_id) AS total_students
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

#  Write a query to find the total number of students enrolled in each course.
SELECT c.course_id, c.course_name, p.first_name, p.last_name
FROM courses c
JOIN professors p ON c.professor_id = p.professor_id
WHERE p.department = 'Computer Science';

# Write a query to calculate the average grade for each course.
SELECT c.course_id, c.course_name, AVG(e.grade) AS average_grade
FROM courses c
LEFT JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_id, c.course_name;

# Write a query to find students who are enrolled in more than three courses.
SELECT s.student_id, s.first_name, s.last_name, COUNT(e.course_id) AS num_courses_enrolled
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
GROUP BY s.student_id, s.first_name, s.last_name
HAVING COUNT(e.course_id) > 3;

