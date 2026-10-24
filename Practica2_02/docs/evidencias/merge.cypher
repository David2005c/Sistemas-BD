MERGE (u:Montañista {id: "M-002"}) SET u.nombre = "Nacho", u.email='nacho@gmail.com', u.actividad='Montañismo'

MERGE (u:Senderista {id: "S-002"}) SET u.nombre = "Jorge", u.email='jorge@gmail.com', u.actividad='Senderismo'

MERGE (u:Corredor {id: "C-002"}) SET u.nombre = "Antonio", u.email='antonio@gmail.com', u.actividad='Running'

MERGE (u:Guia {id: "G-002"}) SET u.nombre = "Lucia", u.email='lucia@gmail.com', u.actividad=['Montañismo','Senderismo']

MERGE (r:Ruta {id: "R-2"}) SET r.nombre='Ruta 2', r.distancia_km=7, r.duracion_estimada=150