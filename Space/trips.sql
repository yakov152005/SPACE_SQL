CREATE TABLE IF NOT EXISTS TRIPS(
    t_id      INT AUTO_INCREMENT PRIMARY KEY,
    s_id      INT,
    p_id      INT,
    date_time DATETIME NOT NULL,
    result    VARCHAR(255),
    FOREIGN KEY (s_id) REFERENCES ships (s_id),
    FOREIGN KEY (p_id) REFERENCES planets (p_id)
);

INSERT INTO TRIPS(s_id, p_id, date_time, result)
VALUES
    (1,3,'2002-01-05 15:30','All clear'),
    (2,1,'2002-02-22 02:22','Dont ask'),
    (3,2,'2004-04-14 14:44','Great sea-food'),
    (4,4,'2004-04-14 14:46','Need more madasim'),
    (1,5,'1800-06-06 18:06','Raining'),
    (5,5,'1800-06-06 21:09','Still raining'),
    (2,2,'2002-06-06 15:35','Too dark to see')
;

SELECT * FROM TRIPS;




