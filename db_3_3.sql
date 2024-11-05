-- 1 Количество исполнителей в каждом жанре.
SELECT genre, COUNT(*) AS artist_count
FROM Artists
GROUP BY genre;

-- 2 Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

-- 3 Средняя продолжительность треков по каждому альбому.
SELECT album_id, AVG(duration) AS average_duration
FROM Tracks
GROUP BY album_id;

-- 4 Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT ArtistID, ArtistName
FROM Artists
WHERE ArtistID NOT IN (
    SELECT DISTINCT ArtistID
    FROM Albums
    WHERE ReleaseYear = 2020
   );


-- 5 Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.title
FROM Compilations c
JOIN Compilation_Track ct ON c.id = ct.compilation_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Artist_Album aa ON t.album_id = aa.album_id
JOIN Artists a ON aa.artist_id = a.id
WHERE a.name = 'Some_Artist_Name'; 
