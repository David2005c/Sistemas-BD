## 1. Definir el problema y los accesos

**1.El escenario elegido y sus usuarios.**

He legido el escenario de películas y los usuarios son _usuario registrado_ y _admin_

**2.Al menos seis preguntas de negocio que la base de datos debe responder.**

1.¿Cuáles son las películas mejor valoradas por los usuarios?

2.¿Qué géneros tienen una mayor cantidad de películas y series?

3.¿Qué usuarios han realizado más valoraciones?

4.¿Cuál es la puntuación media de cada película?

5.¿Qué series tienen más episodios?

6.¿Qué géneros tienen las películas y series con mejores valoraciones?


**3.Los datos que se leen y escriben con mayor frecuencia.**

Nombre de la película o género de la misma

**4.Una tabla que relacione cada pregunta con las colecciones, filtros, ordenación y paginación necesarios.**

|      Pregunta de negocio                         |Colecciones    |    Filtro    |  Ordenación  |  Paginación |  
|--------------------------------------------------|:-------------:|:------------:|:------------:|:-----------:|
|¿Cuáles son las películas mejor valoradas por los usuarios?| peliculas y valoraciones | Ninguno| Puntuación de media descendente| 10 resultados |
| Qué géneros tienen una mayor cantidad de películas y series? | generos, peliculas y series | Ninguno | Cantidad de contenidos descendente | 10 resultados |
| ¿Qué usuarios han realizado más valoraciones? | usuarios y valoraciones | Ninguno | Número de valoraciones descendente | 10 resultados |
| ¿Cuál es la puntuación media de cada película? | peliculas y valoraciones | Ninguno | Puntuación de media  descendente | 10 resultados |
| ¿Qué series tienen más episodios? | series y episodios | Ninguno | Número de episodios descendente | 10 resultados |
| ¿Qué géneros tienen las películas y series con mejores valoraciones? | generos, peliculas, series y valoraciones | Puntuación mínima >= 8 | Puntuación de media descendente | 10 resultados |


**5.Los requisitos de seguridad, privacidad, disponibilidad y crecimiento.**

Privacidad: Nombres, correos y contraseñas se consideran datos sensibles

Seguridad: MongoDB permite autenticación, autorización mediante roles, cifrado de datos y conexiones seguras.

Disponibilidad: MongoDB ofrece réplicas (replica sets) para mantener los datos disponibles si falla un servidor. Para sistemas que necesitan disponibilidad prácticamente continua, habría que configurar correctamente la replicación, copias de seguridad y recuperación ante desastres.


Crecimiento: Hay que tener cuidado con el máximo de 16MB por documento en MongoDB que no ha que superar.



