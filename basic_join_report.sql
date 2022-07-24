-- Returns NULL if the student grade is less than 8, otherwise the name is returned
SELECT IF(grade<8, NULL, name), 
-- Order of table columns will be name, grade and marks
grade, marks
-- Using inner join to join students and grades tables
FROM students
INNER JOIN grades
-- Returning the students whose marks are between the min and max values in the grades table
ON marks 
BETWEEN grades.min_mark AND grades.max_mark
-- Ordering the students whose grades are highest at the top, then by alphabetical order ascending by default then marks.
ORDER BY grade desc, name, marks