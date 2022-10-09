CREATE TABLE IF NOT EXISTS Genre (
	genre_id serial PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Musician (
	musician_id SERIAL PRIMARY KEY,
	name_ VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Album (
	album_id SERIAL PRIMARY KEY,
	name_ VARCHAR(60) NOT NULL,
	year_ DATE NOT NULL
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

CREATE TABLE IF NOT EXISTS Track (
	track_id SERIAL PRIMARY KEY,
	name_ VARCHAR(100) NOT NULL,
	duration NUMERIC(4, 2) NOT NULL,
	album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(100) NOT NULL,
	year_ DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS track_coll (
	track_id INTEGER REFERENCES Track(track_id),
	collection_id INTEGER REFERENCES Collection(collection_id),
	CONSTRAINT pk_t_c PRIMARY KEY (track_id, collection_id)
);


	