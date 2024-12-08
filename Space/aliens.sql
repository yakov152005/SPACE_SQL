CREATE TABLE IF NOT EXISTS ALIENS(
    id_num INT AUTO_INCREMENT PRIMARY KEY,
    alien_name VARCHAR(255) NOT NULL,
    num_of_legs INT NOT NULL,
    planet VARCHAR(255) NOT NULL
);

INSERT INTO ALIENS (alien_name, num_of_legs, planet)
VALUES ('E.T.', 2,'Vegetarian'),
       ('Bin-Laden',2,'Jews'),
       ('B.A.',2,'Bad Guys'),
       ('Buck Rogers',12,'Humans'),
       ('Bill Gates',13,'Weird mushrooms'),
       ('Snop dog',4,'Logic riddles'),
       ('Cher',2,'Vegetarian')
;

SELECT * FROM ALIENS;



