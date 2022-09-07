
-- create
CREATE TABLE students_career (
	id serial PRIMARY KEY,
  career VARCHAR ( 50 ) UNIQUE NOT NULL
);

CREATE TABLE bootcamp (
  id serial PRIMARY KEY,
  location VARCHAR (100) UNIQUE NOT NULL
);

CREATE TABLE students (
	user_id serial PRIMARY KEY,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
	name VARCHAR ( 50 ) UNIQUE NOT NULL,
	batch VARCHAR ( 50 ) NOT NULL,
  id_bootcamp integer,
    constraint fk_bootcamp
      foreign KEY (id_bootcamp)
      references bootcamp(id)
      on delete cascade,
  id_students_career integer,
    constraint fk_students_career
      foreign KEY (id_students_career)
      references students_career(id)
      on delete cascade
);



-- insert
INSERT INTO
    students_career (career)
VALUES
    ('Data Scientist'),
    ('Full Stack Dev');

INSERT INTO
    bootcamp (location)
VALUES
    ('Chile'),
    ('USA');

INSERT INTO 
    students (email, name, batch, id_bootcamp, id_students_career)
VALUES
    ('andres@gmail.com','Andres Perez', 1, 1, 1),
    ('pedrito@gmail.com','Pedro Gonzalez', 1, 2, 1),
    ('elena@gmail.com','Elena Gonzalez', 2, 1, 1),
    ('constanza@gmail.com','Constanza Perez', 2, 2, 1),
    ('andrea@gmail.com','Andrea Gonzalez', 3, 1, 2),
    ('maria@gmail.com','Maria Torres', 3, 1, 2);



-- fetch 
SELECT * FROM students WHERE batch = '2';
SELECT * FROM students;
SELECT * FROM students WHERE batch = '1' OR batch = '3';
SELECT * FROM students WHERE name LIKE 'A%';