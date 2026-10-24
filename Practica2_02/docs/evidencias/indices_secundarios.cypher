CREATE INDEX ruta_nombre IF NOT EXISTS
FOR (r:Ruta)
ON (r.nombre);


CREATE INDEX ruta_distancia IF NOT EXISTS
FOR (r:Ruta)
ON (r.distancia_km);