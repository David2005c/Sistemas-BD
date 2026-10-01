use(peliculas)

// ==========================
// USUARIOS
// ==========================

db.createCollection("usuarios", {
validator: {
    $jsonSchema: {bsonType: "object",
    required: ["id", "nombre", "email", "rol"],
properties: {
    id: {
        bsonType: "int",
        description: "Debe ser un entero"
    },
    nombre: {
        bsonType: "string",
        description: "Debe ser una cadena"
    },
    email: {
        bsonType: "string",
        description: "Debe ser una cadena"
    },
    rol: {
        bsonType: "string",
        enum: ["usuario", "administrador"],
        description: "Debe ser usuario o administrador"
    }
    }
    }
},
validationLevel: "strict",
validationAction: "error"
})


// ==========================
// GÉNEROS
// ==========================

db.createCollection("generos", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["id", "nombre"],
      properties: {
        id: {
          bsonType: "int"
        },
        nombre: {
          bsonType: "string"
        }
      }
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})


// ==========================
// PELÍCULAS
// ==========================

db.createCollection("peliculas", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: [
        "id",
        "titulo",
        "anio",
        "duracion",
        "generos",
        "descripcion"
      ],
      properties: {
        id: {
          bsonType: "int"
        },
        titulo: {
          bsonType: "string"
        },
        anio: {
          bsonType: "int",
          minimum: 1888
        },
        duracion: {
          bsonType: "int",
          minimum: 1
        },
        generos: {
          bsonType: "array",
          items: {
            bsonType: "int"
          }
        },
        descripcion: {
          bsonType: "string"
        }
      }
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})


// ==========================
// SERIES
// ==========================

db.createCollection("series", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: [
        "id",
        "titulo",
        "anio_inicio",
        "generos",
        "descripcion"
      ],
      properties: {
        id: {
          bsonType: "int"
        },
        titulo: {
          bsonType: "string"
        },
        anio_inicio: {
          bsonType: "int",
          minimum: 1888
        },
        generos: {
          bsonType: "array",
          items: {
            bsonType: "int"
          }
        },
        descripcion: {
          bsonType: "string"
        }
      }
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})


// ==========================
// EPISODIOS
// ==========================

db.createCollection("episodios", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: [
        "id",
        "serie_id",
        "temporada",
        "numero",
        "titulo",
        "duracion"
      ],
      properties: {
        id: {
          bsonType: "int"
        },
        serie_id: {
          bsonType: "int"
        },
        temporada: {
          bsonType: "int",
          minimum: 1
        },
        numero: {
          bsonType: "int",
          minimum: 1
        },
        titulo: {
          bsonType: "string"
        },
        duracion: {
          bsonType: "int",
          minimum: 1
        }
      }
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})


// ==========================
// VALORACIONES
// ==========================

db.createCollection("valoraciones", {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: [
        "id",
        "usuario_id",
        "puntuacion",
        "comentario"
      ],
      properties: {
        id: {
          bsonType: "int"
        },
        usuario_id: {
          bsonType: "int"
        },
        pelicula_id: {
          bsonType: "int"
        },
        serie_id: {
          bsonType: "int"
        },
        puntuacion: {
          bsonType: "int",
          minimum: 1,
          maximum: 10
        },
        comentario: {
          bsonType: "string"
        }
      }
    }
  },
  validationLevel: "strict",
  validationAction: "error"
})