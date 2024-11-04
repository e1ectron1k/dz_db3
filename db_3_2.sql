-- 1 Название и продолжительность самого длительного трека.
SELECT title, duration
FROM Tracks
ORDER BY duration DESC
LIMIT 1;

-- 2 Название треков, продолжительность которых не менее 3,5 минут.
SELECT title
FROM Tracks
WHERE duration >= 210;

-- 3 Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title
FROM Compilations
WHERE release_year BETWEEN 2018 AND 2020;

-- 4 Исполнители, чьё имя состоит из одного слова.
SELECT name
FROM Artists
WHERE name NOT LIKE '% %';

--  5 Название треков, которые содержат слово «мой» или «my».
SELECT title
FROM Tracks
WHERE title LIKE '%мой%' OR title LIKE '%my%';