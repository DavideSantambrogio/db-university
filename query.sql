-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT
    *
FROM
    students
WHERE
    YEAR(date_of_birth) = 1990;

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

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

SELECT
    *
FROM
    courses
WHERE
    period = "I semestre" AND year = 1;

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

SELECT
    *
FROM
    exams
WHERE
    DATE = '2020-06-20' AND EXTRACT(HOUR
FROM
    HOUR) >= 14;
