## 1

**¿Quién utilizará estos datos?**

Los datos los usará el sistema para generar alertas y planificar medidas de movilidad

**¿Qué decisiones se pueden tomar con ellos?**

Tras analiazar esos datos hay que identificar los posibles problemas y encontrar una solución para corregirlos.

**¿Qué diferencia hay entre una alerta inmediata y un informe histórico?**

La alerta inmediata es un aviso que se emite cuando un peligro o emergencia está ocurriendo en el momento o es inminente mientras que el informe histórico es un registro completo de antecedentes que le han ocurrido a algo o alguien.
En resumen, la alerta inmediata te avisa de un peligro y el informe histórico lo recoge

## 2


| Criterio                      | Batch         | Streaming    |
| ------------------------------|:-------------:|:------------:|
| Rapidez para generar alertas  |    Lento      | Rápido       |
| Coste y complejidad           |    Bajo       | Alto         |
| Informes históricos           |    Adecuado   | Inadecuado   |
|Picos de datos                 |  Datos se procesan por lotes |  Infraestructura adicional            |

## 3

**Identifica dos problemas de calidad y explica sus consecuencias.**

Los valores de PM10 obtenidos son negativos y eso es imposible porque sus valores son siempre positivos, si salen negativos es debido a la gran contaminación que hay en el sector dónde se obtuvieron dichos valores producto de las actividades que se desarrollan en ese sector


**Indica qué distrito necesita mayor atención y justifica tu respuesta.**

Hay que prestarle especial atención al distrito D4 Sur residencial debido a que presenta tráfico, población y actividad industrial, aquí los valores de los sensores podrían dispararse

**Elige una anomalía y explica si la corregirías, la marcarías como dudosa o la excluirías.**

E

## Recomendación

Al Ilmo Alcalde de Cáceres

Mi nombres es David García y soy estudiante del Ágora.

Me comunico con usted porque, tras observar el dossier de resultados de los análisis de sensores de calidad, he notado ciertos problemas con riesgos importantes.

Hay sensores que devuelven los mismos datos continuamente lo que podría sugerir que el sensor está averiado o congelado, hay otros que devuelven valores extremos que no tienen sentido y que podrían llevar a conclusiones falsas y hay otros que están un lapso de tiempo sin devolver información lo que podría impedir detectar un problema real.

Para solucionar estos problemas convendría revisar los sensores que estén fallando y arreglarlos o reiniciarlos y si no tiene solución hay que sustituirlos (depende del problema habrá que tomar una decisión u otra), en cuanto a los datos sospechosos lo más conveniente es marcarlos como inválidos en vez de eliminarlos (todo dependerá del caso).