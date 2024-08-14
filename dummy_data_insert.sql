INSERT INTO courses (title, description)
VALUES 
    ('Introduction to Python', 'Learn the basics of Python programming.'),
    ('Advanced Java', 'Deep dive into Java for experienced developers.'),
    ('Data Science with R', 'Explore data analysis and visualization using R.'),
    ('Web Development with JavaScript', 'Build dynamic websites using JavaScript and Node.js.'),
    ('Machine Learning with Python', 'Introduction to machine learning techniques using Python.');

INSERT INTO lessons (course_id, title, content, video_url, position)
VALUES 
    (1, 'Python Basics', 'This lesson covers the basics of Python programming.', 'http://example.com/python_basics', 1),
    (1, 'Data Types in Python', 'Learn about different data types in Python.', 'http://example.com/python_data_types', 2),
    (2, 'Java Streams', 'Understand the use of streams in Java.', 'http://example.com/java_streams', 1),
    (2, 'Multithreading in Java', 'Learn about multithreading concepts in Java.', 'http://example.com/java_multithreading', 2),
    (3, 'Introduction to Data Science', 'Overview of data science field and its applications.', 'http://example.com/ds_intro', 1);

INSERT INTO modules (title, description)
VALUES 
    ('Python Programming', 'Module covering Python programming basics and advanced topics.'),
    ('Java Programming', 'Module focusing on advanced Java concepts.'),
    ('Data Science', 'Module on data analysis and visualization using R and Python.'),
    ('Web Development', 'Module for web development using HTML, CSS, and JavaScript.'),
    ('Machine Learning', 'Module covering basic to advanced machine learning techniques.');

INSERT INTO programs (name, price, program_type)
VALUES 
    ('Full Stack Developer Program', 1500.00, 'Full-Time'),
    ('Data Analyst Program', 1200.00, 'Part-Time'),
    ('AI Specialist Program', 2000.00, 'Full-Time'),
    ('Cybersecurity Program', 1300.00, 'Full-Time'),
    ('Cloud Computing Program', 1800.00, 'Part-Time');

INSERT INTO course_modules (course_id, module_id)
VALUES 
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5);

INSERT INTO program_modules (program_id, module_id)
VALUES 
    (1, 1),
    (1, 4),
    (2, 3),
    (3, 5),
    (4, 2);

INSERT INTO teaching_groups (slug)
VALUES 
    ('python-beginners'),
    ('java-experts'),
    ('data-science-pros'),
    ('web-dev-advanced'),
    ('ml-engineers');

INSERT INTO users (name, email, password_hash, role, teaching_group_id)
VALUES 
    ('Alice Johnson', 'alice@example.com', 'hashed_password', 'Student', 1),
    ('Bob Smith', 'bob@example.com', 'hashed_password', 'Teacher', 2),
    ('Charlie Brown', 'charlie@example.com', 'hashed_password', 'Admin', 3),
    ('Dana White', 'dana@example.com', 'hashed_password', 'Student', 4),
    ('Evan Davis', 'evan@example.com', 'hashed_password', 'Teacher', 5);

INSERT INTO enrollments (user_id, program_id, status)
VALUES 
    (1, 1, 'active'),
    (2, 2, 'pending'),
    (3, 3, 'cancelled'),
    (4, 4, 'completed'),
    (5, 5, 'active');

INSERT INTO payments (enrollment_id, amount, status, paid_at)
VALUES 
    (1, 1500.00, 'paid', '2024-08-01'),
    (2, 1200.00, 'pending', NULL),
    (3, 2000.00, 'failed', '2024-07-15'),
    (4, 1300.00, 'refunded', '2024-07-20'),
    (5, 1800.00, 'paid', '2024-08-10');

INSERT INTO program_completions (user_id, program_id, status, started_at, completed_at)
VALUES 
    (1, 1, 'completed', '2024-06-01', '2024-08-01'),
    (2, 2, 'active', '2024-07-01', NULL),
    (3, 3, 'cancelled', '2024-05-15', '2024-06-15'),
    (4, 4, 'completed', '2024-03-10', '2024-07-20'),
    (5, 5, 'active', '2024-08-01', NULL);

INSERT INTO certificates (user_id, program_id, url, issued_at)
VALUES 
    (1, 1, 'http://example.com/certificates/1', '2024-08-05'),
    (2, 2, 'http://example.com/certificates/2', '2024-08-10'),
    (3, 3, 'http://example.com/certificates/3', '2024-08-15'),
    (4, 4, 'http://example.com/certificates/4', '2024-08-20'),
    (5, 5, 'http://example.com/certificates/5', '2024-08-25');

INSERT INTO quizzes (lesson_id, title, content)
VALUES 
    (1, 'Quiz 1: Python Basics', '{"questions": [{"q": "What is Python?", "a": "A programming language"}]}'),
    (2, 'Quiz 2: Data Types', '{"questions": [{"q": "What are the basic data types in Python?", "a": "int, float, str"}]}'),
    (3, 'Quiz 3: Java Streams', '{"questions": [{"q": "What is a stream in Java?", "a": "A sequence of elements supporting sequential and parallel operations"}]}'),
    (4, 'Quiz 4: Multithreading', '{"questions": [{"q": "What is multithreading in Java?", "a": "Executing multiple threads simultaneously"}]}'),
    (5, 'Quiz 5: Data Science', '{"questions": [{"q": "What is data science?", "a": "Field of study involving data analysis and visualization"}]}');

INSERT INTO exercises (lesson_id, name, url)
VALUES 
    (1, 'Exercise 1: Python Basics', 'http://example.com/exercises/python_basics'),
    (2, 'Exercise 2: Data Types', 'http://example.com/exercises/python_data_types'),
    (3, 'Exercise 3: Java Streams', 'http://example.com/exercises/java_streams'),
    (4, 'Exercise 4: Multithreading', 'http://example.com/exercises/java_multithreading'),
    (5, 'Exercise 5: Data Science', 'http://example.com/exercises/ds_intro');

INSERT INTO discussions (lesson_id, user_id, text)
VALUES 
    (1, 1, '{"comments": [{"user": "Alice", "comment": "Great lesson!"}]}'),
    (2, 2, '{"comments": [{"user": "Bob", "comment": "Very informative."}]}'),
    (3, 3, '{"comments": [{"user": "Charlie", "comment": "Needs more examples."}]}'),
    (4, 4, '{"comments": [{"user": "Dana", "comment": "Well explained."}]}'),
    (5, 5, '{"comments": [{"user": "Evan", "comment": "Excellent content."}]}');

INSERT INTO blogs (user_id, title, content, status)
VALUES 
    (1, 'Learning Python', 'Python is a great language to start programming.', 'published'),
    (2, 'Java Tips', 'Some useful tips for Java developers.', 'in moderation'),
    (3, 'Data Science Journey', 'My journey into the world of data science.', 'published'),
    (4, 'Web Development Trends', 'Latest trends in web development.', 'archived'),
    (5, 'Machine Learning Basics', 'Basics of machine learning for beginners.', 'created');
