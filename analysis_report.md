# Informe de Auditoría — EduTrack

## 1. Inscripciones en 'Intro to Python'
Resultado: 5
- Emily Watson (emily.watson@student.edutrack.com): 85%
- Klaus Weber (klaus.weber@student.edutrack.com): 92%
- Marco Rossi (marco.rossi@student.edutrack.com): 88%
- James Miller (james.miller@test.com): 30%
- Priya Sharma (priya.sharma@student.edutrack.com): 55%



## 2. Posibles abandonos (completado < 10%)

| student_name    | student_email                        | completion_percentage |
| --------------- | ------------------------------------ | --------------------- |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 5                     |
| Lucia Fernandes | lucia.fernandes@student.edutrack.com | 3                     |
| Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 0                     |
| Pierre Dubois   | pierre.dubois@student.edutrack.com   | 0                     |

## 3. Inscripciones sin instructor, Resultado: 2

| student_name  | course_title       | instructor |
| ------------- | ------------------ | ---------- |
| Yuki Nakamura | UI/UX Fundamentals | null       |
| Pierre Dubois | UI/UX Fundamentals | null       |

## 4. Top 5 con mayor completado sin aprobar
| student_name  | course_title           | completion_percentage | passed |
| ------------- | ---------------------- | --------------------- | ------ |
| Emily Watson  | Web Design Basics      | 60                    | false  |
| Priya Sharma  | Intro to Python        | 55                    | false  |
| Yuki Nakamura | Data Analysis with SQL | 45                    | false  |
| Emily Watson  | Advanced Python        | 40                    | false  |
| James Miller  | Intro to Python        | 30                    | false  |

## 5. Inscripciones del último año
Resultado: 0
Consulta ejecutada el 17/10/2026. No hay inscripciones posteriores al 17/10/2025:
la más reciente es del 05/03/2025 (Emily Watson, Advanced Python).
Dato relevante para operaciones: la plataforma no registra nuevas inscripciones
desde hace más de un año y medio.


## 6. Inscripción faltante añadida
Resultado: 1 fila insertada (id 18)
Inscripción confirmada por email pero no registrada en el sistema anterior:
Lucia Fernandes, Advanced Python (Programming), fecha 01/04/2025,
completado 0%, no aprobado, cuota 69.99, instructor Carlos Vega.


## 7. Instructores pendientes corregidos
Resultado: 2 filas actualizadas
Las inscripciones llegadas sin instructor (curso UI/UX Fundamentals)
tienen ahora el valor 'Pending assignment'.


## 8. Cuentas de prueba eliminadas
Resultado: 2 filas eliminadas
- James Miller (james.miller@test.com), Intro to Python (id 13)
- Alex Chen (alex.chen@test.com), Web Design Basics (id 14)
Comprobación posterior: 0 inscripciones con @test.com.


## 9. Inscripciones por categoría
Resultado (16 inscripciones tras la limpieza):
- Programming: 7
- Design: 4
- Data: 3
- Marketing: 2


## 10. Promedio de completado por curso (menor a mayor)
Resultado:
| course_title           | promedio_completado |
| ---------------------- | ------------------- |
| UI/UX Fundamentals     | 0.00                |
| Web Design Basics      | 32.50               |
| Digital Marketing 101  | 36.50               |
| Advanced Python        | 45.00               |
| Data Analysis with SQL | 47.67               |
| Intro to Python        | 80.00               |


## 11. Cursos con más de 3 inscripciones
Resultado: 1
- Intro to Python: 4 inscripciones
Advanced Python y Data Analysis with SQL se quedan en 3; el resto tiene 2 o menos.


## 12. Ingresos totales por categoría
Resultado:
- Programming: 409.93
- Data: 179.97
- Design: 169.96
- Marketing: 59.98
Total: 819.84

## Conclusiones
- Limpieza realizada: 1 inscripción añadida, 2 instructores completados con
  'Pending assignment' y 2 inscripciones de cuentas de prueba eliminadas.
  La tabla queda con 16 inscripciones reales.
- Programming es la categoría líder: la mitad de los ingresos y el mejor
  completado medio (65%).
- Categorías con peor rendimiento:
  - Design: completado medio del 16.25%, arrastrado por UI/UX Fundamentals
    (0%, sin instructor asignado).
  - Marketing: los ingresos más bajos (59.98) y un completado medio del 36.5%.
- Posibles abandonos: 4 inscripciones con menos del 10% de completado.
- No hay inscripciones nuevas en el último año: la más reciente es del 01/04/2025.