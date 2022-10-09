INSERT INTO Genre(genre_name)
VALUES 
	('Rock'),
	('Metall'),
	('Power metall'),
	('Alternative'),
	('Some shit')
	
INSERT INTO Musician(name_)
VALUES 
	('AC/DC'),
	('Queen'),
	('Led Zeppelin'),
	('Metallica'),
	('Blind Guardian'),
	('System of a Down'),
	('Nightwish'),
	('Каспийский груз')
	
INSERT INTO Album(name_, year_)
VALUES 
	('T.N.T', 1975),
	('A Kind of Magic', 1986),
	('Led Zeppelin IV', 1971),
	('ReLoad', 1997),
	('Somewhere Far Beyond', 1992),
	('Steal This Album!', 2002),
	('Oceanborn', 1998),
	('"Шляпный" рэп', 2010)
	
INSERT INTO Track(name_, duration, album_id)
VALUES 
	('T.N.T', 2.53, 1),
	('It’s a Long Way to the Top (If You Wanna Rock ’n’ Roll)', 5.15, 1),
	('A Kind of Magic', 4.24, 2),
	('Friends Will Be Friends', 4.07, 2),
	('Stairway to Heaven', 8.02, 3),
	('When the Levee Breaks', 7.07, 3),
	('Fuel', 4.30, 4),
	('The Memory Remains', 4.39, 4),
	('The Bard’s Song: In the Forest', 3.09, 5),
	('The Bard’s Song: The Hobbit', 3.52, 5),
	('Innervision', 2.33, 6),
	('I-E-A-I-A-I-O', 3.08, 6),
	('Sleeping Sun', 4.05, 7),
	('Stargazers', 4.28, 7),
	('Блевантье', 3.15, 8)
	
INSERT INTO Collection (collection_name, year_)
VALUES 
	('Избранное 2010', 2010),
	('Избранное 2011', 2011),
	('Избранное 2012', 2012),
	('Избранное 2013', 2013),
	('Избранное 2014', 2014),
	('Избранное 2015', 2015),
	('Избранное 2016', 2016),
	('Ни в коем случае!', 2017)
	
INSERT INTO genre_musician
VALUES 
	(1, 2),
	(1, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(3, 7),
	(5, 8)

INSERT INTO album_musician
VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8)
	
INSERT INTO track_coll
VALUES 
	(3, 1),
	(4, 1),
	(5, 2),
	(6, 2),
	(7, 3),
	(8, 3),
	(9, 4),
	(10, 4),
	(11, 5),
	(12, 5),
	(13, 6),
	(14, 6),
	(15, 7),
	(16, 7),
	(17, 8)
	
	