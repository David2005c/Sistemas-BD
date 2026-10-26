
/* ==========================================
   DATASET DE PRUEBA - RUTAS DEPORTIVAS
   17 nodos y más de 25 relaciones
   ========================================== */

// 1. USUARIOS
MERGE (u1:Usuario:Senderista {id: 1})
SET u1.nombre = 'Carlos',
    u1.email = 'carlos@email.com';

MERGE (u2:Usuario:Senderista {id: 2})
SET u2.nombre = 'Laura',
    u2.email = 'laura@email.com';

MERGE (u3:Usuario:Corredor {id: 3})
SET u3.nombre = 'Miguel',
    u3.email = 'miguel@email.com';

MERGE (u4:Usuario:Corredor {id: 4})
SET u4.nombre = 'Ana',
    u4.email = 'ana@email.com';

MERGE (u5:Usuario:Guia {id: 5})
SET u5.nombre = 'Pedro',
    u5.email = 'pedro@email.com';

MERGE (u6:Usuario:Admin {id: 6})
SET u6.nombre = 'Sofia',
    u6.email = 'sofia@email.com';

// 2. RUTAS
MERGE (r1:Ruta {id: 101})
SET r1.nombre = 'Ruta de la Montaña',
    r1.distancia_km = 12.5;

MERGE (r2:Ruta {id: 102})
SET r2.nombre = 'Sendero del Bosque',
    r2.distancia_km = 8.2;

MERGE (r3:Ruta {id: 103})
SET r3.nombre = 'Ruta del Rio',
    r3.distancia_km = 15.0;

MERGE (r4:Ruta {id: 104})
SET r4.nombre = 'Circuito Urbano',
    r4.distancia_km = 5.0;

MERGE (r5:Ruta {id: 105})
SET r5.nombre = 'Ascenso al Mirador',
    r5.distancia_km = 10.0;

// 3. ACTIVIDADES
MERGE (a1:Actividad {id: 201})
SET a1.nombre = 'Senderismo';

MERGE (a2:Actividad {id: 202})
SET a2.nombre = 'Trail Running';

MERGE (a3:Actividad {id: 203})
SET a3.nombre = 'Running';

// 4. LUGARES
MERGE (l1:Lugar {id: 301})
SET l1.nombre = 'Sierra de Gata';

MERGE (l2:Lugar {id: 302})
SET l2.nombre = 'Valle del Jerte';

MERGE (l3:Lugar {id: 303})
SET l3.nombre = 'Caceres';

// 5. RELACIONES: CREACION DE RUTAS
MATCH (u:Usuario {id: 1}), (r:Ruta {id: 101})
MERGE (u)-[:CREA]->(r);

MATCH (u:Usuario {id: 2}), (r:Ruta {id: 102})
MERGE (u)-[:CREA]->(r);

MATCH (u:Usuario {id: 3}), (r:Ruta {id: 103})
MERGE (u)-[:CREA]->(r);

MATCH (u:Usuario {id: 5}), (r:Ruta {id: 105})
MERGE (u)-[:CREA]->(r);

// 6. RELACIONES: REALIZACION DE RUTAS
MATCH (u:Usuario {id: 1}), (r:Ruta {id: 101})
MERGE (u)-[:REALIZA]->(r);

MATCH (u:Usuario {id: 2}), (r:Ruta {id: 101})
MERGE (u)-[:REALIZA]->(r);

MATCH (u:Usuario {id: 3}), (r:Ruta {id: 103})
MERGE (u)-[:REALIZA]->(r);

MATCH (u:Usuario {id: 4}), (r:Ruta {id: 103})
MERGE (u)-[:REALIZA]->(r);

MATCH (u:Usuario {id: 1}), (r:Ruta {id: 102})
MERGE (u)-[:REALIZA]->(r);

MATCH (u:Usuario {id: 5}), (r:Ruta {id: 105})
MERGE (u)-[:REALIZA]->(r);

// 7. RELACIONES: FAVORITOS
MATCH (u:Usuario {id: 1}), (r:Ruta {id: 103})
MERGE (u)-[:GUARDA]->(r);

MATCH (u:Usuario {id: 2}), (r:Ruta {id: 101})
MERGE (u)-[:GUARDA]->(r);

MATCH (u:Usuario {id: 3}), (r:Ruta {id: 105})
MERGE (u)-[:GUARDA]->(r);

MATCH (u:Usuario {id: 4}), (r:Ruta {id: 101})
MERGE (u)-[:GUARDA]->(r);

MATCH (u:Usuario {id: 5}), (r:Ruta {id: 103})
MERGE (u)-[:GUARDA]->(r);

// 8. RELACIONES: VALORACIONES
MATCH (u:Usuario {id: 1}), (r:Ruta {id: 101})
MERGE (u)-[v:VALORA]->(r)
SET v.puntuacion = 5;

MATCH (u:Usuario {id: 2}), (r:Ruta {id: 102})
MERGE (u)-[v:VALORA]->(r)
SET v.puntuacion = 4;

MATCH (u:Usuario {id: 3}), (r:Ruta {id: 103})
MERGE (u)-[v:VALORA]->(r)
SET v.puntuacion = 5;

MATCH (u:Usuario {id: 4}), (r:Ruta {id: 104})
MERGE (u)-[v:VALORA]->(r)
SET v.puntuacion = 3;

MATCH (u:Usuario {id: 5}), (r:Ruta {id: 105})
MERGE (u)-[v:VALORA]->(r)
SET v.puntuacion = 5;

// 9. RELACIONES: ACTIVIDAD DE CADA RUTA
MATCH (r:Ruta {id: 101}), (a:Actividad {id: 201})
MERGE (r)-[:ES_DE_TIPO]->(a);

MATCH (r:Ruta {id: 102}), (a:Actividad {id: 201})
MERGE (r)-[:ES_DE_TIPO]->(a);

MATCH (r:Ruta {id: 103}), (a:Actividad {id: 202})
MERGE (r)-[:ES_DE_TIPO]->(a);

MATCH (r:Ruta {id: 104}), (a:Actividad {id: 203})
MERGE (r)-[:ES_DE_TIPO]->(a);

MATCH (r:Ruta {id: 105}), (a:Actividad {id: 202})
MERGE (r)-[:ES_DE_TIPO]->(a);

// 10. RELACIONES: LUGARES POR LOS QUE PASAN
MATCH (r:Ruta {id: 101}), (l:Lugar {id: 301})
MERGE (r)-[:PASA_POR]->(l);

MATCH (r:Ruta {id: 102}), (l:Lugar {id: 302})
MERGE (r)-[:PASA_POR]->(l);

MATCH (r:Ruta {id: 103}), (l:Lugar {id: 302})
MERGE (r)-[:PASA_POR]->(l);

MATCH (r:Ruta {id: 104}), (l:Lugar {id: 303})
MERGE (r)-[:PASA_POR]->(l);

MATCH (r:Ruta {id: 105}), (l:Lugar {id: 301})
MERGE (r)-[:PASA_POR]->(l);

// 11. COMPROBAR EL DATASET
MATCH (n)
WITH count(n) AS total_nodos
MATCH ()-[rel]->()
RETURN total_nodos, count(rel) AS total_relaciones;
