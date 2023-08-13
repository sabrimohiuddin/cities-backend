-- DROP DATABASE IF EXISTS cities_dev;
-- CREATE DATABASE cities_dev;

-- \c cities_dev;

-- CREATE TABLE cities (
--  id SERIAL PRIMARY KEY,
--  city TEXT NOT NULL,
--  country TEXT,
--  image TEXT,
--  has_visited BOOLEAN
--  ticket_price NUMBER
-- );

-- DROP TABLE IF EXISTS comments;

-- CREATE TABLE comments (
--  id SERIAL PRIMARY KEY,
--  commenter TEXT,
--  title TEXT,
--  content TEXT,
--  city_id INTEGER REFERENCES cities (id)
--  ON DELETE CASCADE
-- );

DROP DATABASE IF EXISTS cities_dev;
CREATE DATABASE cities_dev;

\c cities_dev;

CREATE TABLE cities (
 id SERIAL PRIMARY KEY,
 city TEXT NOT NULL,
 country TEXT,
 image TEXT,
 has_visited BOOLEAN,
 ticket_price INTEGER  -- Use INTEGER, REAL, or DECIMAL here as needed
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
 id SERIAL PRIMARY KEY,
 commenter TEXT,
 title TEXT,
 content TEXT,
 city_id INTEGER REFERENCES cities (id)
 ON DELETE CASCADE
);
