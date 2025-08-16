Movie Database Management System
📌 Introduction

The Movie Database Management System is a mini-project developed using SQL. It is designed to store, manage, and retrieve information related to movies, their genres, directors, and actors. This project demonstrates the implementation of database concepts such as normalization, primary and foreign keys, and relationships (one-to-many & many-to-many).

The project simulates a real-world scenario like an IMDb/Netflix movie catalog system, where users can search movies, list actors, and analyze ratings.

🎯 Objectives

To design and implement a relational database for managing movie details.

To apply SQL concepts such as JOIN, GROUP BY, AGGREGATE FUNCTIONS, and SUBQUERIES.

To understand how many-to-many relationships are handled through a junction table.

To provide sample queries that extract meaningful information from the database.

🛠️ Software Requirements

RDBMS: MySQL / MariaDB / Oracle / SQLite

OS: Windows / Linux

Editor: MySQL Workbench / Command-line / DBeaver

📂 Database Design
Entities & Tables

Genres – Stores genre names

Directors – Stores director details

Actors – Stores actor details

Movies – Stores movie details (linked with genre_id & director_id)

Movie_Actors – Junction table connecting movies and actors

Relationships

One Genre → Many Movies

One Director → Many Movies

Many Actors ↔ Many Movies
