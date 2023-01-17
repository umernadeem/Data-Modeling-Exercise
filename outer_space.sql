-- from the terminal run:
-- psql < outer_space.sql

DROP DATABASE IF EXISTS outer_space;

CREATE DATABASE outer_space;

\c outer_space

CREATE TABLE orbit_based
(
  id SERIAL PRIMARY KEY
  name TEXT NOT NULL
)

CREATE TABLE galaxy(
  id SERIAL PRIMARY KEY
  name TEXT NOT NULL
)

CREATE TABLE planets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  orbital_period_in_years FLOAT NOT NULL,
  orbits_around REFERENCES orbit_based TEXT NOT NULL,
  galaxy_is references galaxy TEXT NOT NULL,
  moons TEXT[]
)

CREATE TABLE planets_moons(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  planet references planets
)


