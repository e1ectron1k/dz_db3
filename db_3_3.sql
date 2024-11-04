-- 1 Количество исполнителей в каждом жанре.
SELECT genre, COUNT(*) AS artist_count
FROM Artists
GROUP BY genre;

-- 2 Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(*) AS track_count
FROM Tracks
WHERE album_id IN (
    SELECT id
    FROM Albums
    WHERE release_year BETWEEN 2019 AND 2020
);

-- 3 Средняя продолжительность треков по каждому альбому.
SELECT album_id, AVG(duration) AS average_duration
FROM Tracks
GROUP BY album_id;

-- 4 Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT a.name
FROM Artists a
LEFT JOIN Albums al ON a.id = al.artist_id AND al.release_year = 2020
WHERE al.id IS NULL;

-- 5 Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT c.title
FROM Compilations c
JOIN Compilation_Artists ca ON c.id = ca.compilation_id
JOIN Artists a ON ca.artist_id = a.id
WHERE a.name = 'Artist A';
