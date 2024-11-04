CREATE TABLE Artists (
       id INT PRIMARY KEY,
       name VARCHAR(100),
       country VARCHAR(100)
   );

   INSERT INTO Artists (id, name, country) VALUES
        (1, 'Тейлор Свифт', 'США'),
        (2, 'Битлз', 'Великобритания'),
        (3, 'Эминем', 'США'),
        (4, 'Давид Гетта', 'Франция');

CREATE TABLE Genres (
   id INT PRIMARY KEY,
   genre_name VARCHAR(100)
   );

    INSERT INTO Genres (id, genre_name) VALUES
        (1, 'Поп'),
        (2, 'Рок'),
        (3, 'Хип-хоп'),
        (4, 'Электронная музыка');

CREATE TABLE Albums (
   id INT PRIMARY KEY,
   title VARCHAR(100),
   release_year INT
   );

   INSERT INTO Albums (id, title, release_year) VALUES
        (1, 'Lover', 2019),
        (2, 'Abbey Road', 1969),
        (3, 'Music to Be Murdered By', 2020);

CREATE TABLE Tracks (
   id INT PRIMARY KEY,
   title VARCHAR(100),
    duration INT
   );

   INSERT INTO Tracks (id, title, duration) VALUES
        (1, 'You Belong with Me', 230),
        (2, 'Come Together', 260),
        (3, 'Lose Yourself', 320),
        (4, 'Titanium', 240),
        (5, 'Shape of You', 235),
        (6, 'Without Me', 250);

CREATE TABLE Compilations (
   id INT PRIMARY KEY,
   title VARCHAR(100),
   release_year INT
   );

   INSERT INTO Compilations (id, title, release_year) VALUES
        (1, 'Best of 2023', 2023),
        (2, 'Top Hits 2022', 2022),
        (3, 'Greatest Hits of the 60s and 70s', 2021),
        (4, 'Dance Party 2020', 2020);

CREATE TABLE Artist_Genre (
   artist_id INT,
   genre_id INT,
   PRIMARY KEY (artist_id, genre_id),
   FOREIGN KEY (artist_id) REFERENCES Artists(id),
   FOREIGN KEY (genre_id) REFERENCES Genres(id)
   );

   INSERT INTO Artist_Genre (artist_id, genre_id) VALUES
       (1, 1),
       (2, 2),
       (3, 3),
       (4, 1),
       (1, 3);

CREATE TABLE Artist_Album (
   artist_id INT,
   album_id INT,
   PRIMARY KEY (artist_id, album_id),
   FOREIGN KEY (artist_id) REFERENCES Artists(id),
   FOREIGN KEY (album_id) REFERENCES Albums(id)
   );

   INSERT INTO Artist_Album (artist_id, album_id) VALUES
       (1, 1),
       (2, 2),
       (3, 3),
       (4, 1),
       (1, 2);

CREATE TABLE Compilation_Track (
   compilation_id INT,
   track_id INT,
   PRIMARY KEY (compilation_id, track_id),
   FOREIGN KEY (compilation_id) REFERENCES Compilations(id),
    FOREIGN KEY (track_id) REFERENCES Tracks(id)
   );

   INSERT INTO Compilation_Track (compilation_id, track_id) VALUES
       (1, 1),
       (1, 2),
       (2, 3),
       (2, 4),
       (3, 5),
       (4, 6);
