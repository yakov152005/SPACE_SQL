CREATE TABLE IF NOT EXISTS SHIPS(
    s_id INT AUTO_INCREMENT PRIMARY KEY,
    ship_name VARCHAR(40) NOT NULL,
    num_of_seats INT NOT NULL,
    max_speed INT NOT NULL
);

INSERT INTO SHIPS (ship_name, num_of_seats, max_speed)
VALUES
    ('Enterprise',4,120),
    ('Titanic',8,150),
    ('Altalena',12,70),
    ('X-sodus',20,60),
    ('Cartesian-product',35,50)
;

SELECT * FROM SHIPS;



