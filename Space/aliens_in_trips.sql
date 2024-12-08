CREATE TABLE IF NOT EXISTS ALIENS_IN_TRIPS(
    t_id   INT,
    id_num INT,
    FOREIGN KEY (t_id) REFERENCES trips(t_id),
    FOREIGN KEY (id_num) REFERENCES aliens(id_num)
);

INSERT INTO ALIENS_IN_TRIPS(T_ID, ID_NUM)
VALUES
    (1,1),
    (1,4),
    (2,2),
    (2,3),
    (3,2),
    (3,4),
    (3,5),
    (4,2),
    (4,4),
    (5,5),
    (5,1),
    (6,2),
    (6,3),
    (6,6),
    (7,6),
    (7,7)
;

SELECT * FROM ALIENS_IN_TRIPS;

