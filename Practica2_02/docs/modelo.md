<!--En docs/modelo.md incluye el diagrama del grafo y las justificaciones de diseño-->

## 2.Diseñar el grafo de nodos y relaciones

Entrega un diagrama visual claro del modelo (utilizando Mermaid) y define la estructura de los datos:

**1- Las etiquetas de nodos (Labels, por ejemplo: :Usuario, :Cancion, :Artista) y las propiedades de cada una, indicando cuáles son obligatorias.**

:Usuario: id, nombre, email, tipo

![alt usuario](images/usuario.png)

:Senderista: id, nombre, email, actividad

![alt usuario](images/senderista.png)

:Corredor: id, nombre, email, actividad

![alt usuario](images/corredor.png)

:Montañista: id, nombre, email, actividad

![alt usuario](images/montañista.png)

:Guia: id, nombre, email, actividad

![alt usuario](images/guia.png)

:Admin: id, nombre, email

![alt admin](images/admin.png)

**2- Los tipos de relación (por ejemplo: [:INTERPRETA], [:SIGUE_A], [:ESCUCHA]), su dirección y las propiedades que guardan las propias relaciones (como fechas, número de reproducciones o el orden dentro de una lista).**

[:CREA]

![alt crea](images/ruta_crear.png)

[:GUARDA]

![alt guarda](images/ruta_guardar.png)

[:REALIZA]

![alt realiza](images/ruta_realizar.png)

[:VALORA]

![alt valora](images/ruta_valorar.png)

**3- La justificación de por qué cada elemento se modela como nodo o como simple propiedad (por ejemplo: por qué el Género o el Artista deben ser nodos propios y no simples textos dentro de la canción).**


**4- La estrategia para identificadores únicos y tipos de datos compatibles con Cypher.**

La propia del id es distinta en cada nodo

**5- Los límites y riesgos del modelo: cómo evitar los supernodos (nodos con miles de relaciones directas que ralentizan las búsquedas) y qué operaciones no son recomendables en un grafo.**

![alt diagrama](images/diagrama_rutas.png)