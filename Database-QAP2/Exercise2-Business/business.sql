-- Create Database for Mount Pearl Blades
CREATE DATABASE MountPearlBlades;

-- Create Players Table
CREATE TABLE Players (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    name character varying(100) NOT NULL,
    age INT NOT NULL,
    contact_details character varying(255),
    team_id INT,
    FOREIGN KEY (team_id) REFERENCES Teams(team_id)
);

-- Create Teams Table
CREATE TABLE Teams (
    team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_name character varying(100) NOT NULL,
    team_location character varying(100) NOT NULL
);

-- Create Matches Table
CREATE TABLE Matches (
    match_id INT AUTO_INCREMENT PRIMARY KEY,
    team1_id INT,
    team2_id INT,
    match_date DATE,
    match_time TIME,
    arena_id INT,
    team1_score INT,
    team2_score INT,
    FOREIGN KEY (team1_id) REFERENCES Teams(team_id),
    FOREIGN KEY (team2_id) REFERENCES Teams(team_id),
    FOREIGN KEY (arena_id) REFERENCES Arenas(arena_id)
);

-- Create Arenas Table
CREATE TABLE Arenas (
    arena_id INT AUTO_INCREMENT PRIMARY KEY,
    arena_name character varying(100) NOT NULL,
    arena_location character varying(100) NOT NULL,
    arena_availability character varying(255) -- This could be expanded for more detailed scheduling
);
-- For example, you could do a completely different table called ArenaSchedule
-- and have values like day_of_week, open, closed with a foreign key referencing
-- the arena id, to have it a bit more complex.

-- Create PlayerStats Table
CREATE TABLE PlayerStats (
    stat_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    match_id INT,
    goals INT,
    assists INT,
    points INT,
    hits INT,
    penalty_minutes INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (match_id) REFERENCES Matches(match_id)
);
