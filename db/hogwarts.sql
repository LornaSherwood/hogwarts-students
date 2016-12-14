DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses(
  id SERIAL4 primary key,
  name VARCHAR(255),
  logo VARCHAR(255)
);

CREATE TABLE students(
  id SERIAL4 primary key,
  first_name VARCHAR(255),
  second_name VARCHAR(255),
  house VARCHAR(255),
  age INT4
);


  

-- CREATE TABLE users (
--   id SERIAL4 primary key,
--   name VARCHAR(255)
-- );

-- CREATE TABLE locations (
--   id SERIAL4 primary key,
--   category VARCHAR(255),
--   name VARCHAR(255)
-- );

-- CREATE TABLE visits(
--   id SERIAL4 primary key,
--   user_id INT4 references users(id) ON DELETE CASCADE,
--   location_id INT4 references locations(id) ON DELETE CASCADE,
--   review TEXT
-- );