<!--El archivo README.md debe indicar el escenario elegido, la versión de Neo4j empleada y las instrucciones para ejecutar las consultas. En docs/modelo.md incluye el diagrama del grafo y las justificaciones de diseño. En docs/evidencias/ añade capturas o trazas de texto de la creación de restricciones, carga de datos, salidas de PROFILE y resultados de las consultas.-->

## 1. Definir el problema y los actores

Antes de crear nodos o escribir sentencias Cypher, documenta:

**1- El escenario elegido, su contexto y los actores o usuarios que interactúan con el grafo (por ejemplo: el oyente que reproduce música, el cantante o artista que sube canciones y álbumes, el analista que examina tendencias y el motor de recomendación que genera sugerencias automáticas).**

He elegido el modelo de rutas deportivas y de senderismo y los usuarios que interactúan con el grafo serían los senderistas, corredores, guías de montaña y el administrador.


**2- Al menos seis preguntas de negocio concretas que la base de datos de grafos deba resolver (por ejemplo: colaboraciones entre cantantes, recomendaciones por amigos o caminos más cortos).**

1.¿Cuáles son las rutas más populares?

2.¿Cuáles son las rutas mejor valoradas?

3.¿Qué usuarios crean más rutas?

4.¿Qué actividad deportiva tiene más rutas?

5.¿Qué lugares concentran más rutas?

6.¿Qué rutas se guardan más veces, pero se realizan menos?

**3- Los datos y recorridos que se consultarán con mayor frecuencia en tiempo real (lecturas masivas) frente a los que se registran puntualmente (escrituras).**

Lecturas masivas: la consulta de rutas disponibles en la plataforma será la operación de lectura más habitual. Los usuarios podrán buscar y consultar recorridos según el tipo de actividad, la ubicación, la popularidad o las valoraciones, así como visualizar sus características.

Escrituras: consistirán principalmente en la creación y publicación de nuevas rutas, el registro de rutas realizadas y la valoración de recorridos. También se incluirán las modificaciones de rutas existentes y las operaciones de administración y moderación.


**4- Los requisitos de seguridad, disponibilidad, privacidad de los datos (RGPD) y previsión de crecimiento de la red.**