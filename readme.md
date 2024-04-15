![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Laboratorio | Consultas SQL 8

En esta práctica de laboratorio, utilizará la base de datos de alquiler de películas [Sakila](https://dev.mysql.com/doc/sakila/en/). Ya ha estado utilizando esta base de datos en un par de laboratorios, pero si necesita obtener los datos nuevamente, consulte el [enlace de instalación] oficial (https://dev.mysql.com/doc/sakila/en/sakila-installation .html).

La base de datos está estructurada de la siguiente manera:
![Esquema de base de datos](https://education-team-2020.s3-eu-west-1.amazonaws.com/data-analytics/database-sakila-schema.png)

### Instrucciones

1. Clasifique las películas por duración (filtre las filas con nulos o ceros en la columna de duración). Seleccione solo el título, la longitud y la clasificación de las columnas en su salida.
2. Clasifique las películas por duración dentro de la categoría "calificación" (filtre las filas con nulos o ceros en la columna de duración). En su salida, seleccione solo el título, la longitud, la calificación y la clasificación de las columnas.  
3. ¿Cuántas películas hay para cada una de las categorías en la tabla de categorías? **Sugerencia**: utilice una combinación adecuada entre las tablas "categoría" y "categoría_película".
4. ¿Qué actor ha aparecido en más películas? **Sugerencia**: Puedes crear una combinación entre las tablas "actor" y "actor de cine" y contar el número de veces que aparece un actor.
5. ¿Cuál es el cliente más activo (el cliente que ha alquilado más películas)? **Sugerencia**: utilice una combinación adecuada entre las tablas "cliente" y "alquiler" y cuente el `rental_id` para cada cliente.

**Bonificación**: ¿Cuál es la película más alquilada? (La respuesta es La Hermandad del Balde).

Esta consulta puede requerir el uso de más de una declaración de unión. Darle una oportunidad. Hablaremos sobre consultas con múltiples declaraciones de unión más adelante en las lecciones.

**Sugerencia**: Puede utilizar la unión entre tres tablas: "Película", "Inventario" y "Alquiler" y contar los *identificadores de alquiler* de cada película.