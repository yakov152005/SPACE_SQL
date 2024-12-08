CREATE TABLE IF NOT EXISTS PLANETS
(
    p_id          INT AUTO_INCREMENT PRIMARY KEY,
    plant_name    VARCHAR(255) NOT NULL,
    constellation ENUM ('Uraion','Milkyway','Klingonia'),
    population    BIGINT       NOT NULL
);

INSERT INTO PLANETS(plant_name, constellation, population)
VALUES ('Naren', 'Uraion', 10000000),
       ('Alpha Centaury', 'Uraion', 31000000),
       ('Pluto', 'Milkyway', 200000000),
       ('K-PAX', 'Klingonia', 6000000),
       ('London', 'Milkyway', 12000000)
;

SELECT * FROM PLANETS;

