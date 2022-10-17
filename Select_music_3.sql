-- сколько исполнителей в каждом жанре.

SELECT genre_name, COUNT(*) FROM genre_musician gm
LEFT JOIN genre g ON g.genre_id = gm.genre_id
GROUP BY genre_name

-- количество треков в альбомах 2019 и 2020 годов. Отдельно для каждого альбома.
	
SELECT album_name, COUNT(*) FROM album a 
LEFT JOIN track t ON t.album_id  = a.album_id 
WHERE a.album_year > 2018
GROUP BY album_name

-- средняя продолжительность треков по каждому альбому.

SELECT album_name, AVG(duration) AS sec_duration FROM album a 
LEFT JOIN track t ON t.album_id  = a.album_id 
GROUP BY album_name  

-- все исполнители, которые не выпустили альбомы в 2020 году. Скорректировано.

SELECT musician_name, album_year FROM album_musician am
LEFT JOIN musician m ON m.musician_id = am.musician_id 
LEFT JOIN album a ON a.album_id = am.album_id 
WHERE m.musician_name NOT IN (SELECT DISTINCT musician_name FROM musician m 
						LEFT JOIN album_musician am2 ON m.musician_id = am2.musician_id 
						LEFT JOIN album a ON a.album_id = am2.album_id 
						WHERE album_year = 2020)
ORDER BY m.musician_name 


-- названия сборников, в которых присутствует Queen.

SELECT collection_name FROM track_coll tc
JOIN collection c ON c.collection_id = tc.collection_id 
JOIN track t ON t.track_id = tc.track_id 
JOIN album a ON t.album_id = a.album_id
JOIN album_musician am ON a.album_id = am.album_id 
JOIN musician m ON m.musician_id = am.musician_id 
WHERE m.musician_name = 'Queen'


-- название альбомов, в которых присутствуют исполнители более 1 жанра;

SELECT album_name, count(g.genre_name) FROM album a 
JOIN album_musician am ON a.album_id = am.album_id 
JOIN musician m ON m.musician_id = am.musician_id 
JOIN genre_musician gm ON m.musician_id = gm.musician_id
JOIN genre g ON g.genre_id = gm.genre_id
GROUP BY album_name
HAVING count(g.genre_name) > 1

-- наименование треков, которые не входят в сборники;

SELECT track_name, COUNT(collection_id) FROM track t 
LEFT JOIN track_coll tc ON t.track_id = tc.track_id 
GROUP BY t.track_name 
HAVING COUNT(tc.collection_id) = 0


-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько); Скорректировано.

SELECT musician_name, t.duration FROM musician m 
JOIN album_musician am ON m.musician_id = am.musician_id 
JOIN album a ON a.album_id = am.album_id 
JOIN track t ON t.album_id = a.album_id 
WHERE duration = (SELECT MIN(duration) FROM track)



-- название альбомов, содержащих наименьшее количество треков.

SELECT a.album_name, count(track_id) FROM track t 
JOIN album a ON a.album_id = t.album_id  
GROUP BY a.album_name, a.album_id 
HAVING COUNT(*) = (SELECT count(track_id) 
					FROM track t 
					JOIN album a ON a.album_id = t.album_id  
					GROUP BY a.album_name
					ORDER BY COUNT(*) asc 
					LIMIT 1)







