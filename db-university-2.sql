#### Group by
-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(students.enrolment_date), COUNT(*) as 'Iscritti per anno'
FROM students
GROUP BY YEAR(enrolment_date);

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT office_address as 'building address', COUNT(*) as 'same building'
FROM teachers
GROUP BY office_address;

-- 3. Calcolare la media dei voti di ogni appello d'esame (dell'esame vogliamo solo l'`id`)
SELECT exam_id, AVG(vote) as "voto medio esame"
FROM exam_student
GROUP BY exam_id;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT department_id, COUNT(*) as "numero corsi di laurea"
FROM degrees
GROUP BY department_id;

#### Join
-- 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT surname as "cognome studente", students.id as "matricola partecipante ad economia"
FROM degrees
JOIN students ON degrees.id=students.degree_id;

-- 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze


-- 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)


-- 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome

-- 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti


-- 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)

##### Bonus
-- 7. Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente, filtrare i tentativi con voto minimo 18.