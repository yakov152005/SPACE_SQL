/*CREATE DATABASE space_sql;*/
-- 1. שלוף את הדאטות של כל החייזרים בעלי שתי רגליים
SELECT *
FROM aliens
WHERE num_of_legs = 2;

-- 2. שלוף את השמות ממספר מקומות הישיבה של כל החלליות שהמהירות המרבית שלהן מעל 60 יח
-- מהירות גלקטיות ויש בהן לפחות 5 מקומות ישיבה
SELECT ship_name, num_of_seats
FROM ships
WHERE max_speed > 60
  AND num_of_seats >= 5;

-- 3. שלוף עבור כל מסע את תאריך המסע שם כוכב הלכת ושם ספינת החלל
SELECT date_time, plant_name, ship_name
FROM trips,
     planets,
     ships
WHERE trips.p_id = planets.p_id
  AND trips.s_id = ships.s_id;
/*
SELECT trips.date_time, planets.plant_name, ships.ship_name
FROM trips
         JOIN planets ON trips.p_id = planets.p_id
         JOIN ships ON trips.s_id = ships.s_id;
 */

-- 4. שלוף את שמות החייזרים שהשתתפו במסע לפני שנת 2000
SELECT DISTINCT alien_name
FROM aliens, aliens_in_trips, trips
WHERE trips.t_id = aliens_in_trips.t_id
  AND aliens.id_num = aliens_in_trips.id_num
  AND trips.date_time < '2000-01-01';
/*
 SELECT DISTINCT aliens.alien_name  הערה distinct מונע כפילויות
FROM aliens
JOIN aliens_in_trips ON aliens.id_num = aliens_in_trips.id_num
JOIN trips ON aliens_in_trips.t_id = trips.t_id
WHERE trips.date_time < '2000-01-01';
 */

-- 5. מצא את המהירות המירבית של כלל חלליות הצי הגלקסי
SELECT MAX(max_speed) AS higher_max_speed
FROM ships;

-- 6. מצא את האוכלוסיה הממוצעת בכוכבי הלכת של כל מערכת השמש
SELECT constellation, AVG(population) AS avg_population
FROM planets
GROUP BY constellation;


-- 7. מצא עבור כל חייזר כמה פעמים ביקר בכל כוכב לכת
SELECT
    aliens.alien_name,
    planets.plant_name,
    COUNT(*) AS num_of_visits
FROM
    aliens, aliens_in_trips, trips, planets
WHERE
    aliens.id_num = aliens_in_trips.id_num
  AND aliens_in_trips.t_id = trips.t_id
  AND trips.p_id = planets.p_id
GROUP BY
    aliens.alien_name, planets.plant_name;
/*
 SELECT
    aliens.alien_name,
    planets.plant_name AS planet_name,
    COUNT(*) AS num_of_visits
FROM
    aliens
JOIN
    aliens_in_trips ON aliens.id_num = aliens_in_trips.id_num
JOIN
    trips ON aliens_in_trips.t_id = trips.t_id
JOIN
    planets ON trips.p_id = planets.p_id
GROUP BY
    aliens.alien_name, planets.plant_name;

 */

-- 8. מצא את שמות כל החייזרים שהשתתפו ביותר משני מסעות
SELECT
   aliens.alien_name,
       COUNT(*) AS name_of_alien_up_2_trips
FROM
    aliens
JOIN
    aliens_in_trips ON aliens.id_num = aliens_in_trips.id_num
JOIN
    trips ON trips.t_id = aliens_in_trips.t_id
GROUP BY
    aliens.alien_name
HAVING
    COUNT(*) > 2;

-- 9. מצא עבור כל כוכב לכת את מספר הרגליים שדרכו עליו במידה והיו יותר מ - 15
SELECT
    planets.plant_name,
    SUM(aliens.num_of_legs) AS total_legs
FROM
    aliens
JOIN
    aliens_in_trips ON aliens.id_num = aliens_in_trips.id_num
JOIN
    trips ON trips.t_id = aliens_in_trips.t_id
JOIN
    planets ON planets.p_id = trips.p_id
GROUP BY
    planets.plant_name
HAVING
    SUM(aliens.num_of_legs) > 15;







