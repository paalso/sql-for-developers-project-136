INSERT INTO courses (name, description)
VALUES 
    ('Database Design', 'Learn about designing efficient and normalized databases.'),
    ('Web Development', 'Introduction to web development with HTML, CSS, and JavaScript.'),
    ('Data Structures', 'Learn about core data structures and algorithms.'),
    ('Machine Learning', 'Introduction to machine learning concepts and applications.');


INSERT INTO courses (description)
VALUES
    ('A course without name');


SELECT id,
        name, 
       CONCAT(SUBSTRING(description, 1, 25),'...') AS description,
       TO_CHAR(created_at, 'YYYY-MM-DD HH24:MI:SS') AS created_at, 
       TO_CHAR(updated_at, 'YYYY-MM-DD HH24:MI:SS') AS updated_at
FROM courses;

 id |       name       |         description          |     created_at      |     updated_at      
----+------------------+------------------------------+---------------------+---------------------
  1 | Database Design  | Learn about designing eff... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
  2 | Web Development  | Introduction to web devel... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
  3 | Data Structures  | Understanding of core dat... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
  4 | Machine Learning | Introduction to machine l... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
(4 rows)


UPDATE courses
SET description = 'Learn about core data structures and algorithms.'
WHERE id = 3;

 id |       name       |         description          |     created_at      |     updated_at      
----+------------------+------------------------------+---------------------+---------------------
  1 | Database Design  | Learn about designing eff... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
  2 | Web Development  | Introduction to web devel... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
  4 | Machine Learning | Introduction to machine l... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
  3 | Data Structures  | Learn about core data str... | 2024-08-11 15:03:49 | 2024-08-11 15:03:49
(4 rows)




CREATE OR REPLACE FUNCTION drop_all()
RETURNS VOID AS $$
BEGIN
    EXECUTE 'DROP TABLE IF EXISTS courses, lessons, modules, programs, module_courses, program_modules, teaching_groups, users, enrollments, payments, program_completions, certificates, quizzes, exercises, discussions, blog_records CASCADE';
END;
$$ LANGUAGE plpgsql;

SELECT drop_all();

