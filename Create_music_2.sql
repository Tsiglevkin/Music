CREATE TABLE IF NOT EXISTS genre (
	genre_id serial PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL UNIQUE 
);

CREATE TABLE IF NOT EXISTS musician (
	musician_id SERIAL PRIMARY KEY,
	musician_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(60) NOT NULL,
	album_year INTEGER NOT NULL
	CHECK (album_year > 1925)
);

CREATE TABLE IF NOT EXISTS genre_musician (
	genre_id INTEGER REFERENCES Genre(genre_id),
	musician_id INTEGER REFERENCES Musician(musician_id),
	CONSTRAINT pk_g_m PRIMARY KEY (genre_id, musician_id)
);

CREATE TABLE IF NOT EXISTS album_musician (
	album_id INTEGER REFERENCES Album(album_id),
	musician_id INTEGER REFERENCES Musician(musician_id),
	CONSTRAINT pk_a_m PRIMARY KEY (album_id, musician_id)
);

CREATE TABLE IF NOT EXISTS track (
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(100) NOT NULL,
	duration INTEGER NOT NULL,
	album_id INTEGER REFERENCES Album(album_id)
	CHECK (duration > 0)
);

CREATE TABLE IF NOT EXISTS collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(100) NOT NULL,
	collection_year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS track_coll (
	track_id INTEGER REFERENCES Track(track_id),
	collection_id INTEGER REFERENCES Collection(collection_id),
	CONSTRAINT pk_t_c PRIMARY KEY (track_id, collection_id)
);