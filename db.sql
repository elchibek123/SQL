CREATE DATABASE java15;

CREATE TABLE IF NOT EXISTS programmer (
                                          id SERIAL PRIMARY KEY,
                                          name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE CHECK (email ~* '^.+@.+\..+$'),
    age INT CHECK (age >= 0),
    programming_language VARCHAR(255),
    date_of_birth DATE
    );

DROP TABLE IF EXISTS programmer;

ALTER TABLE programmer
    ADD COLUMN IF NOT EXISTS salary DECIMAL;

ALTER TABLE programmer
DROP COLUMN IF EXISTS salary;

ALTER TABLE programmer
ALTER COLUMN programming_language TYPE TEXT;

ALTER TABLE programmer
    RENAME TO developers;

ALTER TABLE developers
    RENAME COLUMN email TO login;

TRUNCATE TABLE developers;

INSERT INTO developers (name, login, age, programming_language, date_of_birth)
VALUES ('John', 'john@gmail.com', 30, 'Java', '1990-01-01'),
       ('Mark', 'mark@gmail.com', 18, 'C', '1993-04-01'),
       ('David', 'david@gmail.com', 25, 'Python', '1996-04-01'),
       ('Kevin', 'kevin@gmail.com', 40, 'C++', '2000-04-01');

DELETE FROM developers WHERE name = 'John Doe';
DELETE FROM developers WHERE name = 'Mark';

SELECT * FROM developers;

CREATE TABLE IF NOT EXISTS laptops (
                                       id SERIAL PRIMARY KEY,
                                       model VARCHAR(255) NOT NULL,
    developer_id INT REFERENCES developers(id)
    );

INSERT INTO laptops (model, developer_id)
VALUES ('MacBook Pro', 11),
       ('MacBook Air', 2),
       ('MacBook Pro', 13),
       ('MacBook Air', 14);

CREATE TABLE IF NOT EXISTS courses (
                                       id SERIAL PRIMARY KEY,
                                       name VARCHAR(255) NOT NULL,
    developer_id INT REFERENCES developers(id),
    laptop_id INT REFERENCES laptops(id)
    );