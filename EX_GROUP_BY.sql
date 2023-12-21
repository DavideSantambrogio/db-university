-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(`enrolment_date`), COUNT(*) AS `num_students`
FROM `students`
GROUP BY YEAR(`enrolment_date`);