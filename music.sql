-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music
CREATE TABLE artists(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
)

CREATE TABLE albums(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
)

CREATE TABLE producer(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
)

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artist references artist TEXT NOT NULL,
  album references albums TEXT NOT NULL,
  producers references producer TEXT NOT NULL
);

