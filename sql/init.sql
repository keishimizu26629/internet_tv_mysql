CREATE DATABASE internet_tv;

USE internet_tv;

CREATE TABLE Users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nickname VARCHAR(255) NOT NULL,
    Plan VARCHAR(255) NOT NULL
);

CREATE TABLE Channel (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE Programs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    genre VARCHAR(255)
);

CREATE TABLE Seasons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    program_id INT NOT NULL,
    season_number INT NOT NULL,
    season_title VARCHAR(255),
    year INT,
    FOREIGN KEY (program_id) REFERENCES Programs(id)
);

CREATE TABLE Episodes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    season_id INT NOT NULL,
    episode_number INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    duration INT,
    FOREIGN KEY (season_id) REFERENCES Seasons(id)
);

CREATE TABLE Broadcasts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    channel_id INT,
    episode_id INT,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (channel_id) REFERENCES Channel(id),
    FOREIGN KEY (episode_id) REFERENCES Episodes(id)
);

CREATE TABLE Views (
    id INT AUTO_INCREMENT PRIMARY KEY,
    episode_id INT,
    user_id INT,
    watched_time DATETIME NOT NULL,
    FOREIGN KEY (episode_id) REFERENCES Episodes(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);
