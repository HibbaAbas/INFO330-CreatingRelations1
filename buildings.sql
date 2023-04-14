CREATE TABLE buildings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(80) NOT NULL,
    shortname VARCHAR(10) UNIQUE
);

CREATE TABLE rooms (
    number INTEGER,
    buildingid INTEGER REFERENCES buildings(id), 
    seating INTEGER
);

INSERT INTO buildings (name, shortname)
VALUES 
    ('Odegardd', 'Ode'),
    ('Mary Gates Hall', 'MGH');


INSERT INTO rooms (number, buildingid, seating)
VALUES 
    (112, (SELECT id FROM buildings WHERE name = 'Odegardd'), 200),
    (200, (SELECT id FROM buildings WHERE name = 'Odegardd'), 40),
    (314, (SELECT id FROM buildings WHERE name = 'Mary Gates Hall'), 30);

