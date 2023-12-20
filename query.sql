-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT
    `name`,
    `surname`,
    `date_of_birth`
FROM
    `students`
WHERE
    YEAR(`date_of_birth`) = 1990;

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti (479)

SELECT
    *
FROM
    courses
WHERE
    cfu > 10;

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni

SELECT
    *
FROM
    students
WHERE
    DATEDIFF(CURDATE(), date_of_birth) / 365 > 30;