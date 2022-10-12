INSERT INTO genre(genre_name)
VALUES 
	('Rock'),
	('Metall'),
	('Power metall'),
	('Alternative'),
	('Some shit')
	
INSERT INTO musician(musician_name)
VALUES 
	('AC/DC'),
	('Queen'),
	('Led Zeppelin'),
	('Metallica'),
	('Blind Guardian'),
	('System of a Down'),
	('Nightwish'),
	('Каспийский груз')
	
INSERT INTO Album(album_name, album_year)
VALUES 
	('T.N.T', 1975),
	('A Kind of Magic', 1986),
	('Led Zeppelin IV', 1971),
	('ReLoad', 1997),
	('Somewhere Far Beyond', 1992),
	('Steal This Album!', 2018),
	('Oceanborn', 2019),
	('"Шляпный" рэп', 2020)
	
INSERT INTO Track(track_name, duration, album_id)
VALUES 
	('T.N.T', 173, 1),
	('It’s a Long Way to the Top (If You Wanna Rock ’n’ Roll)', 315, 1),
	('A Kind of Magic', 264, 2),
	('Friends Will Be Friends', 247, 2),
	('Stairway to Heaven', 422, 3),
	('When the Levee Breaks', 427, 3),
	('Fuel', 270, 4),
	('The Memory Remains', 279, 4),
	('The Bard’s Song: In the Forest', 189, 5),
	('The Bard’s Song: The Hobbit', 232, 5),
	('Innervision', 153, 6),
	('I-E-A-I-A-I-O', 188, 6),
	('Sleeping Sun', 245, 7),
	('Stargazers', 288, 7),
	('Мой блевантье', 195, 8),
	('Порожняк', 153, 8),
	('Еще шляпа', 200, 8),
	('Я родился в один день с Гитлером', 143, 8)

	
INSERT INTO collection (collection_name, collection_year)
VALUES 
	('Избранное 2011', 2013),
	('Избранное 2012', 2014),
	('Избранное 2013', 2015),
	('Избранное 2014', 2016),
	('Ни в коем случае!', 2017),
	('Избранное 2018', 2018),
	('Избранное 2019', 2019),
	('Коллекция 2020', 2020)
	
INSERT INTO genre_musician
VALUES 
	(1, 2),
	(1, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(3, 7),
	(5, 8),
	(3, 1)
	
INSERT INTO album_musician
VALUES 
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(2, 1),
	(1, 2)

INSERT INTO track_coll
VALUES 
	(1, 1),
	(2, 1),
	(3, 2),
	(4, 2),
	(5, 3),
	(6, 3),
	(7, 4),
	(8, 4),
	(9, 8),
	(10, 8),
	(11, 6),
	(12, 6),
	(13, 7),
	(14, 7),
	(15, 5)
	

	
	