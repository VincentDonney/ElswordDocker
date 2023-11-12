-- Create Elsword database
CREATE DATABASE IF NOT EXISTS Elsword;

-- Use Elsword database
USE Elsword;



-- Create table for Eve's classes
CREATE TABLE IF NOT EXISTS EveClasses (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

-- Insert data into EveClasses
INSERT INTO EveClasses (class_id, class_name) VALUES
(0, 'Eve'),
(1, 'Code: Exotic'),
(2, 'Code: Nemesis'),
(3, 'Code: Ultimate'),
(4, 'Code: Architecture'),
(5, 'Code: Empress'),
(6, 'Code: Esencia'),
(7, 'Code: Electra'),
(8, 'Code: Battle Seraph'),
(9, 'Code: Sariel'),
(10, 'Code: Unknown'),
(11, 'Code: Failess'),
(12, 'Code: Antithese');

-- Create table for Eve's skills
CREATE TABLE IF NOT EXISTS EveSkills (
    skill_id INT PRIMARY KEY,
    skill_name VARCHAR(50) NOT NULL,
    class_id INT,
    CONSTRAINT fk_class_skill FOREIGN KEY (class_id) REFERENCES EveClasses(class_id)
);

-- Insert data into EveSkills
INSERT INTO EveSkills (skill_id, skill_name, class_id) VALUES
-- Add skills for Code: Empress
(1, 'Photon Flash', 1),
(2, 'Plasma Cutter', 1),
-- Add skills for Code: Nemesis
(3, 'Energy Needler', 2),
(4, 'Tesla Shock', 2),
-- Add skills for Code: Battle Seraph
(5, 'Particle Cannon', 3),
(6, 'Abyss Drop', 3),
-- Add skills for Code: Electra
(7, 'New Skill 1', 4),
(8, 'New Skill 2', 4);
-- Add more skills as needed
