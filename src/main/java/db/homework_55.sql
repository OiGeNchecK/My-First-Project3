
CREATE TABLE games_m2m
(
    id   SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE users
(
    id   SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE user_game
(
    user_id INT NOT NULL,
    game_id INT NOT NULL,
    PRIMARY KEY (user_id, game_id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (game_id) REFERENCES games_m2m (id)
);

INSERT INTO games_m2m (name)
VALUES ('Dota 2'),
       ('World of Warcraft'),
       ('CS2'),
       ('Baldur''s Gate 3');

INSERT INTO users (name)
VALUES ('Vadym'),
       ('Oigen'),
       ('Nikita'),
       ('Mykola');

INSERT INTO user_game (user_id, game_id)
VALUES (1, 1),  -- Vadym -> Dota 2
       (1, 2),  -- Vadym -> WoW
       (2, 2),  -- Oigen -> WoW
       (3, 3);  -- Nikita -> CS2

SELECT u.name AS user_name, g.name AS game
FROM users u
         INNER JOIN user_game ug ON u.id = ug.user_id
         INNER JOIN games_m2m g ON g.id = ug.game_id;

SELECT u.name AS user_name, g.name AS game
FROM users u
         LEFT JOIN user_game ug ON u.id = ug.user_id
         LEFT JOIN games_m2m g ON g.id = ug.game_id;

SELECT u.name AS user_name, g.name AS game
FROM users u
         RIGHT JOIN user_game ug ON u.id = ug.user_id
         RIGHT JOIN games_m2m g ON g.id = ug.game_id;

SELECT u.name AS user_name, g.name AS game
FROM users u
         FULL JOIN user_game ug ON u.id = ug.user_id
         FULL JOIN games_m2m g ON g.id = ug.game_id;