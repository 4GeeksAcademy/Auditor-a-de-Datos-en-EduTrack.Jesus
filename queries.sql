-- 1. Inscripciones en 'Intro to Python' (nombre, email, % completado)
SELECT student_name, student_email, completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';

-- 2. Posibles abandonos (completado < 10%).
| student_name    | student_email                        | completion_percentage |
| --------------- | ------------------------------------ | --------------------- |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 3                     |
| Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 0                     |
| Pierre Dubois   | pierre.dubois@student.edutrack.com   | 0                     |

-- 3. Inscripciones sin instructor (instructor NULL).

| student_name  | course_title       | instructor |
| ------------- | ------------------ | ---------- |
| Yuki Nakamura | UI/UX Fundamentals | null       |
| Pierre Dubois | UI/UX Fundamentals | null       |

-- 4. Top 5 con mayor completado sin aprobar
| student_name  | course_title           | completion_percentage | passed |
| ------------- | ---------------------- | --------------------- | ------ |
| Emily Watson  | Web Design Basics      | 60                    | false  |
| Priya Sharma  | Intro to Python        | 55                    | false  |
| Yuki Nakamura | Data Analysis with SQL | 45                    | false  |
| Emily Watson  | Advanced Python        | 40                    | false  |
| James Miller  | Intro to Python        | 30                    | false  |


-- 5. Inscripciones del último año
Resultado: 0
Consulta ejecutada el 17/10/2026. No hay inscripciones posteriores al 17/10/2025:
la más reciente es del 05/03/2025 (Emily Watson, Advanced Python).
Dato relevante para operaciones: la plataforma no registra nuevas inscripciones
desde hace más de un año y medio.

-- 6. INSERT de la inscripción faltante (Lucia Fernandes, Advanced Python, id 18)
INSERT INTO enrollments (id, student_id, student_name, student_email, course_id, course_title, category, enrollment_date, completion_percentage, passed, monthly_fee_paid, instructor) VALUES
(18, 3, 'Lucia Fernandes', 'lucia.fernandes@student.edutrack.com', 5, 'Advanced Python', 'Programming', '2025-04-01', 0, FALSE, 69.99, 'Carlos Vega');

-- Comprobación
SELECT * FROM enrollments WHERE id = 18;


-- 7. UPDATE instructores NULL -> 'Pending assignment'
-- Comprobación previa (2 filas)
SELECT student_name, course_title, instructor
FROM enrollments
WHERE instructor IS NULL;

UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

-- Comprobación posterior (2 filas con el nuevo valor)
SELECT student_name, course_title, instructor FROM enrollments WHERE instructor = 'Pending assignment';


-- 8. DELETE de inscripciones de cuentas de prueba (@test.com)
-- Comprobación previa (2 filas)
SELECT id, student_name, student_email
FROM enrollments
WHERE student_email LIKE '%@test.com';

DELETE FROM enrollments
WHERE student_email LIKE '%@test.com';

-- Comprobación posterior: debe devolver 0 filas
SELECT id, student_name, student_email
FROM enrollments
WHERE student_email LIKE '%@test.com';


-- 9. Número de inscripciones por categoría
SELECT category, COUNT(*) AS total_inscripciones
FROM enrollments
GROUP BY category
ORDER BY total_inscripciones DESC;


-- 10. Promedio de completado por curso (de menor a mayor)
SELECT course_title, ROUND(AVG(completion_percentage), 2) AS promedio_completado
FROM enrollments
GROUP BY course_title
ORDER BY promedio_completado ASC;


-- 11. Cursos con más de 3 inscripciones (HAVING)
SELECT course_title, COUNT(*) AS total_inscripciones
FROM enrollments
GROUP BY course_title
HAVING COUNT(*) > 3;


-- 12. Ingresos totales por categoría (de mayor a menor)
SELECT category, SUM(monthly_fee_paid) AS ingresos_totales
FROM enrollments
GROUP BY category
ORDER BY ingresos_totales DESC;