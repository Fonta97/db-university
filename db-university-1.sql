-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT *
FROM students
WHERE YEAR(date_of_birth)=1990;
-- 2. Selezionare tutti i referenti per ogni dipartimento

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

-- 6. Selezionare tutti i corsi di laurea magistrale (38)

-- 7. Da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(*)
FROM departments;
-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT COUNT(*) as "deparments number"
FROM departments;