## 2. Entrega un diagrama o esquema y define el modelo físico. Debes incluir: 

1.Las colecciones y el propósito de cada una.

2.Documentos de ejemplo en JSON o BSON para todas las colecciones principales.

3.Al menos una decisión de incrustación y una de referencia, justificando tamaño, frecuencia de lectura, cardinalidad y posibilidad de actualización.

4.La estrategia para identificadores, fechas, estados y campos opcionales.

5.Los límites del modelo: tamaño máximo del documento, crecimiento de arrays, duplicación, consistencia y operaciones que resultarían incómodas.

```mermaid
erDiagram
    USUARIO ||--o{ VALORACION : escribe
    CONTENIDO ||--o{ VALORACION : recibe
    CONTENIDO ||--o{ EPISODIO : contiene_si_es_serie
    CONTENIDO }o--o{ GENERO : clasifica

    USUARIO {
        objectId _id PK
        string email UK
        string nombre
        string estado
        date creadoEn
        date actualizadoEn
    }
    CONTENIDO {
        objectId _id PK
        string tipo
        string titulo
        int anio
        int duracionMin
        string estado
        date creadoEn
        date actualizadoEn
    }
    EPISODIO {
        objectId _id PK
        objectId serieId FK
        int temporada
        int numero
        string titulo
        int duracionMin
        date creadoEn
    }
    GENERO {
        objectId _id PK
        string nombre UK
        string estado
    }
    VALORACION {
        objectId _id PK
        objectId usuarioId FK
        objectId contenidoId FK
        int puntuacion
        string comentario
        date creadoEn
        date actualizadoEn
    }
```


## 3. Implementar validación e índices

**Incluye scripts reproducibles para crear las colecciones con validación mediante $jsonSchema. La validación debe comprobar, como mínimo, tipos, campos obligatorios, enumeraciones y una restricción de rango o formato.**

![alt text](image.png)

**Define índices justificados a partir de las preguntas de negocio:**

1.Al menos tres índices, incluyendo uno compuesto.

![alt text](image-1.png)

![alt text](image-3.png)

![alt text](image-2.png)


**2.Si el escenario lo necesita, un índice de texto o geoespacial.**

![alt text](image-4.png)

Para este escenario no necesitamos un índice geoespacial porque no trabajamos con coordenadas

**3.Para cada índice, explica qué consulta acelera, el orden de sus campos y su coste en escrituras y almacenamiento.**

El primer índice sirve para cuando un usuario busque una película le muestren las películas ordenadas de manera descendente por el id, el segundo es para mostrar las peliculas que tienen el género que se ha buscado y el último es para que se registren cuantas valoraciones hace cada usuario

**4.Evidencia el plan de una consulta con explain("executionStats") antes y después, o explica por qué no es posible comparar ambos casos.**

| Métrica      | Antes  | Después |
|--------------|:------:|:-------:|
| nReturned    |   1    |    1    |
| executionTimeMillis| O ms | 1 ms |
| totalKeysExamined | 0 | 1 |
| totalDocsExamined | 1 | 1 |
|  Plan | Collscan | Ixscan |

## 4. Resolver consultas y una agregación compleja (90 minutos)

### Implementa consultas que cubran las preguntas de negocio. Debes incluir:

**1.Inserción, actualización parcial y eliminación o desactivación lógica.**

## Inserción

![alt text](image-6.png)

![alt text](image-5.png)

## Actualización parcial



## Desactivación lógica

**2.Filtros combinados, ordenación y paginación estable con limit y un criterio de ordenación.**

**3.Una consulta que use una referencia mediante $lookup, si el diseño contiene referencias.**

**4.Una agregación compleja de al menos cuatro etapas, que incluya dos de estas operaciones: $group, $lookup, $unwind, $facet, $bucket, $setWindowFields o una operación geoespacial.**

**5.Una explicación del resultado y de cómo cambiaría el coste al aumentar los datos.**

## 5. Copias de seguridad, seguridad y límites (60 minutos)

**Documenta**:

1.Un procedimiento de copia y restauración con mongodump/mongorestore o la alternativa equivalente de Atlas.

2.Usuarios, roles y permisos mínimos para la aplicación y para administración.

3.Qué datos deben cifrarse, anonimizarse o excluirse de los entornos de prueba.

4.Dos situaciones en las que MongoDB no sería la mejor opción o exigiría complementarse con otro sistema.

5.Qué datos históricos conservarías, archivarías o eliminarías y con qué criterio.