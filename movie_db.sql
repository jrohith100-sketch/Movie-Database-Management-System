CREATE DATABASE movie_db;
USE movie_db;

CREATE TABLE genres (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE directors (
    director_id INT PRIMARY KEY AUTO_INCREMENT,
    director_name VARCHAR(100) NOT NULL
);

CREATE TABLE actors (
    actor_id INT PRIMARY KEY AUTO_INCREMENT,
    actor_name VARCHAR(100) NOT NULL
);

CREATE TABLE movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    release_year INT,
    genre_id INT,
    director_id INT,
    imdb_rating DECIMAL(3,1),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
    FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

CREATE TABLE movie_actors (
    movie_id INT,
    actor_id INT,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id),
    PRIMARY KEY (movie_id, actor_id)
);

INSERT INTO genres (genre_name) VALUES
('Action'), ('Comedy'), ('Drama'), ('Sci-Fi'), ('Thriller');

INSERT INTO directors (director_name) VALUES
('Christopher Nolan'),
('Quentin Tarantino'),
('Steven Spielberg'),
('Martin Scorsese'),
('James Cameron');

INSERT INTO actors (actor_name) VALUES
('Tom Hanks'),
('Leonardo DiCaprio'),
('Brad Pitt'),
('Emma Stone'),
('Scarlett Johansson');

INSERT INTO movies (title, release_year, genre_id, director_id, imdb_rating) VALUES
('Inception', 2010, 4, 1, 8.8),
('The Dark Knight', 2008, 1, 1, 9.0),
('Pulp Fiction', 1994, 2, 2, 8.9),
('Saving Private Ryan', 1998, 3, 3, 8.6),
('Avatar', 2009, 4, 4, 7.8);

INSERT INTO movie_actors (movie_id, actor_id) VALUES
(2, 1), -- Tom Hanks in The Dark Knight
(4, 1), -- Tom Hanks in Saving Private Ryan
(1, 2), -- Leo in Inception
(5, 2), -- Leo in Avatar
(3, 3), -- Brad Pitt in Pulp Fiction
(1, 5); -- Scarlett Johansson in Inception
