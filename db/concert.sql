DROP TABLE gigs;
DROP TABLE venues;
DROP TABLE artists;

CREATE TABLE venues(
id SERIAL4 PRIMARY KEY, 
capacity INT2,
type VARCHAR(255),
location VARCHAR(255)
);

CREATE TABLE artists(
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
genre VARCHAR(255),
);

CREATE TABLE gigs(
id SERIAL4 PRIMARY KEY,
venue_id  REFERENCES venues(id) ON DELETE CASCADE,
artist_id REFERENCES artists(id) ON DELETE CASCADE,
date DATE 
);