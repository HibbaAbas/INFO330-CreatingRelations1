CREATE TABLE student_courses(
   studentid INTEGER REFERENCES students(id),
   course VARCHAR REFERENCES courses(code),
   grade FLOAT NULL
 );

INSERT INTO student_courses(studentid, course, grade)
VALUES
  ((SELECT id FROM students WHERE firstname = 'Fred'), (SELECT code FROM
  courses WHERE code = 'INFO330A'), null),
  ((SELECT id FROM students WHERE firstname = 'Fred'), (SELECT code FROM
  courses WHERE code = 'INFO448A'), null),
  ((SELECT id FROM students WHERE firstname = 'Fred'), (SELECT code FROM
  courses WHERE code = 'INFO314'), null),
  ((SELECT id FROM students WHERE firstname = 'Barney'), (SELECT code FROM
  courses WHERE code = 'INFO330A'), null),
  ((SELECT id FROM students WHERE firstname = 'Barney'), (SELECT code FROM
  courses WHERE code = 'INFO449A') , null),
  ((SELECT id FROM students WHERE firstname = 'Wilma'), (SELECT code FROM
  courses WHERE code = 'BAW010'), null),
  ((SELECT id FROM students WHERE firstname = 'Wilma'), (SELECT code FROM
  courses WHERE code = 'BAW100A'), null),
  ((SELECT id FROM students WHERE firstname = 'Betty'), (SELECT code FROM
  courses WHERE code = 'BAW010'), null);

