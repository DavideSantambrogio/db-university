-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(`enrolment_date`), COUNT(*) AS `num_students`
FROM `students`
GROUP BY YEAR(`enrolment_date`);

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT  `office_address` ,COUNT(*) AS `total_teachers`
FROM `teachers`
GROUP BY `office_address`;