SELECT name_, year_ FROM ALBUM
WHERE year_ = 2018

SELECT name_, duration
FROM Track
ORDER BY duration DESC  
LIMIT 1

SELECT name_ 
FROM Track 
WHERE DURATION > 3.5

SELECT collection_name 
FROM Collection 
WHERE 2018 <= year_ AND year_ <= 2020

SELECT name_ 
FROM Musician
WHERE name_ NOT LIKE '% %'

SELECT name_ 
FROM Track
WHERE name_ LIKE '%мой%' OR name_ LIKE '%my%'

