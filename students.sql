CREATE TABLE students 
(
    id NUMERIC(1) PRIMARY KEY,
    firstname VARCHAR(40),
    lastname VARCHAR(80),
    age NUMERIC(3)
);

INSERT INTO students(id, firstname, lastname, age)
VALUES (1, 'Fred', 'Flintstone', 35),
        (2, 'Wilma', 'Flintstone', 33),
        (3, 'Barney', 'Rubble', 33),
        (4, 'Betty', 'Rubble', 29),
        (5, 'Pebbles', 'Flintstone', 1),
        (6, 'Bam-Bam', 'Rubble', 1);

