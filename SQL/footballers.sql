CREATE DATABASE IF NOT EXISTS footballers;
USE footballers;
CREATE TABLE IF NOT EXISTS players (
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
year_of_birth YEAR
);
INSERT INTO players ( id, first_name, last_name) VALUES ( null, 'Artem', 'Dzyuba');
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Igor',
'Akinfeev', 1986);
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null,
'Denis', 'Cheryshev', 1990);
INSERT INTO players ( id, first_name, last_name, year_of_birth) VALUES ( null, 'Igor',
'Smolnikov', 1988);
USE footballers;
UPDATE players
SET year_of_birth=1988
WHERE id=1;
CREATE TABLE IF NOT EXISTS teams (
id INT UNSIGNED NOT NULL AUTO_INCREMENT primary key,
team_name VARCHAR(20)
);
INSERT INTO teams (id, team_name) VALUES (null, 'Zenit');
INSERT INTO teams (id, team_name) VALUES (null, 'CSKA');
INSERT INTO teams (id, team_name) VALUES (null, 'Villarreal');
ALTER TABLE players ADD team_id INTEGER NOT NULL;
UPDATE players SET team_id=1 WHERE id IN (1,4);
UPDATE players SET team_id=2 WHERE id=2;
UPDATE players SET team_id=3 WHERE id=3;