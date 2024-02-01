-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
SELECT * FROM usuarios_lenguajes;

-- Ejercicio 2: Contar cuántos usuarios hay en total.
SELECT COUNT(*) FROM usuarios_lenguajes;

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
SELECT * FROM usuarios_lenguajes WHERE edad > 30;

-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'JavaScript';

-- Ejercicio 5: Seleccionar los usuarios que tienen al menos 2 lenguajes asociados.
SELECT * FROM usuarios_lenguajes GROUP BY id_usuario HAVING COUNT(lenguaje) >= 2;

-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
SELECT * FROM usuarios_lenguajes WHERE email = 'juan.gomez@example.com';

-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;

-- Ejercicio 8: Contar cuántos lenguajes diferentes saben los usuarios llamados 'Maria'.
SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE nombre = 'Maria';

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
SELECT * FROM usuarios_lenguajes WHERE id_usuario NOT IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 10: Encontrar el usuario más joven que sabe al menos un lenguaje.
SELECT * FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM usuarios_lenguajes));

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC;

-- Ejercicio 12: Contar cuántos usuarios saben al menos un lenguaje y tienen más de 28 años.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad > 28 AND id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
SELECT lenguaje, COUNT(lenguaje) AS cantidad FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY cantidad DESC LIMIT 1;

-- Ejercicio 15: Seleccionar los usuarios que saben al menos 3 lenguajes.
SELECT * FROM usuarios_lenguajes GROUP BY id_usuario HAVING COUNT(lenguaje) >= 3;

-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY nombre;

-- Ejercicio 18: Encontrar el usuario con el email que contiene la palabra 'example'.
SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
SELECT * FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
SELECT nombre, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes GROUP BY id_usuario HAVING COUNT(lenguaje) >= 1;

-- Ejercicio 22: Encontrar el lenguaje más antiguo que conocen los usuarios mayores de 30 años.
SELECT lenguaje, MIN(id_usuario) FROM usuarios_lenguajes WHERE edad > 30 GROUP BY lenguaje;

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo
-- Ejercicio 1: Seleccionar todos los usuarios y sus lenguajes asociados.
SELECT * FROM usuarios_lenguajes;

-- Ejercicio 2: Contar cuántos usuarios hay en total.
SELECT COUNT(*) FROM usuarios_lenguajes;

-- Ejercicio 3: Seleccionar los usuarios mayores de 30 años.
SELECT * FROM usuarios_lenguajes WHERE edad > 30;

-- Ejercicio 4: Contar cuántos usuarios saben JavaScript.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'JavaScript';

-- Ejercicio 5: Seleccionar los usuarios que tienen al menos 2 lenguajes asociados.
SELECT * FROM usuarios_lenguajes GROUP BY id_usuario HAVING COUNT(lenguaje) >= 2;

-- Ejercicio 6: Encontrar el usuario con el email 'juan.gomez@example.com'.
SELECT * FROM usuarios_lenguajes WHERE email = 'juan.gomez@example.com';

-- Ejercicio 7: Seleccionar los usuarios que saben Java y tienen menos de 25 años.
SELECT * FROM usuarios_lenguajes WHERE lenguaje = 'Java' AND edad < 25;

-- Ejercicio 8: Contar cuántos lenguajes diferentes saben los usuarios llamados 'Maria'.
SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE nombre = 'Maria';

-- Ejercicio 9: Seleccionar los usuarios que no saben ningún lenguaje.
SELECT * FROM usuarios_lenguajes WHERE id_usuario NOT IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 10: Encontrar el usuario más joven que sabe al menos un lenguaje.
SELECT * FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes WHERE edad = (SELECT MIN(edad) FROM usuarios_lenguajes));

-- Ejercicio 11: Seleccionar los usuarios y sus edades ordenados por edad de forma descendente.
SELECT nombre, edad FROM usuarios_lenguajes ORDER BY edad DESC;

-- Ejercicio 12: Contar cuántos usuarios saben al menos un lenguaje y tienen más de 28 años.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad > 28 AND id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 13: Seleccionar los usuarios cuyo apellido contiene la letra 'a'.
SELECT * FROM usuarios_lenguajes WHERE apellido LIKE '%a%';

-- Ejercicio 14: Encontrar el lenguaje más popular entre los usuarios menores de 30 años.
SELECT lenguaje, COUNT(lenguaje) AS cantidad FROM usuarios_lenguajes WHERE edad < 30 GROUP BY lenguaje ORDER BY cantidad DESC LIMIT 1;

-- Ejercicio 15: Seleccionar los usuarios que saben al menos 3 lenguajes.
SELECT * FROM usuarios_lenguajes GROUP BY id_usuario HAVING COUNT(lenguaje) >= 3;

-- Ejercicio 16: Contar cuántos usuarios tienen un lenguaje asociado llamado 'Python'.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'Python';

-- Ejercicio 17: Seleccionar los usuarios y sus lenguajes asociados, si tienen alguno, ordenados por nombre de usuario.
SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY nombre;

-- Ejercicio 18: Encontrar el usuario con el email que contiene la palabra 'example'.
SELECT * FROM usuarios_lenguajes WHERE email LIKE '%example%';

-- Ejercicio 19: Seleccionar los usuarios que saben al menos un lenguaje y tienen una edad entre 25 y 35 años.
SELECT * FROM usuarios_lenguajes WHERE edad BETWEEN 25 AND 35 AND id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 20: Contar cuántos usuarios tienen un lenguaje asociado llamado 'CSS' y tienen menos de 30 años.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje = 'CSS' AND edad < 30;

-- Ejercicio 21: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la cantidad de lenguajes que tienen.
SELECT nombre, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes GROUP BY id_usuario HAVING COUNT(lenguaje) >= 1;

-- Ejercicio 22: Encontrar el lenguaje más antiguo que conocen los usuarios mayores de 30 años.
SELECT lenguaje, MIN(id_usuario) FROM usuarios_lenguajes WHERE edad > 30 GROUP BY lenguaje;

-- Ejercicio 23: Seleccionar los usuarios y mostrar la concatenación de su nombre y apellido.
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM usuarios_lenguajes;

-- Ejercicio 24: Contar cuántos lenguajes diferentes conocen los usuarios mayores de 25 años.
SELECT COUNT(DISTINCT lenguaje) FROM usuarios_lenguajes WHERE edad > 25;

-- Ejercicio 25: Seleccionar los usuarios que tienen exactamente dos lenguajes asociados.
SELECT * FROM usuarios_lenguajes GROUP BY id_usuario HAVING COUNT(lenguaje) = 2;

-- Ejercicio 26: Encontrar el usuario con el mayor número de lenguajes asociados.
SELECT id_usuario, COUNT(lenguaje) AS cantidad_lenguajes FROM usuarios_lenguajes GROUP BY id_usuario ORDER BY cantidad_lenguajes DESC LIMIT 1;

-- Ejercicio 27: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar sus emails.
SELECT nombre, email FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 28: Contar cuántos usuarios tienen un apellido que comienza con la letra 'G'.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE apellido LIKE 'G%';

-- Ejercicio 29: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar el lenguaje más reciente que conocen.
SELECT nombre, MAX(id_usuario) AS id_usuario FROM usuarios_lenguajes GROUP BY nombre;

-- Ejercicio 30: Encontrar el usuario con la edad más alta que sabe al menos un lenguaje.
SELECT * FROM usuarios_lenguajes WHERE edad = (SELECT MAX(edad) FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes));

-- Ejercicio 31: Seleccionar los usuarios que saben al menos un lenguaje y ordenarlos por nombre de lenguaje.
SELECT nombre, lenguaje FROM usuarios_lenguajes ORDER BY lenguaje;

-- Ejercicio 32: Contar cuántos usuarios tienen una edad entre 20 y 25 años y saben al menos un lenguaje.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE edad BETWEEN 20 AND 25 AND id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 33: Seleccionar los usuarios que no tienen un lenguaje asociado llamado 'SQL'.
SELECT * FROM usuarios_lenguajes WHERE id_usuario NOT IN (SELECT id_usuario FROM usuarios_lenguajes WHERE lenguaje = 'SQL');

-- Ejercicio 34: Encontrar el lenguaje más popular entre los usuarios que tienen al menos 30 años.
SELECT lenguaje, COUNT(lenguaje) AS cantidad FROM usuarios_lenguajes WHERE edad >= 30 GROUP BY lenguaje ORDER BY cantidad DESC LIMIT 1;

-- Ejercicio 35: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la diferencia entre su edad y la edad promedio de todos los usuarios.
SELECT nombre, edad, (edad - (SELECT AVG(edad) FROM usuarios_lenguajes)) AS diferencia_edad FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 36: Contar cuántos usuarios tienen un lenguaje asociado que contiene la letra 'Script'.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE '%Script%';

-- Ejercicio 37: Seleccionar los usuarios que tienen al menos un lenguaje asociado y mostrar la longitud de su nombre.
SELECT nombre, LENGTH(nombre) AS longitud_nombre FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 38: Encontrar el lenguaje más antiguo entre los usuarios que tienen exactamente un lenguaje asociado.
SELECT lenguaje, MIN(id_usuario) FROM usuarios_lenguajes GROUP BY lenguaje HAVING COUNT(lenguaje) = 1;

-- Ejercicio 39: Seleccionar los usuarios que saben al menos un lenguaje y mostrar la suma de sus edades.
SELECT nombre, SUM(edad) AS suma_edades FROM usuarios_lenguajes WHERE id_usuario IN (SELECT id_usuario FROM usuarios_lenguajes);

-- Ejercicio 40: Contar cuántos usuarios tienen un lenguaje asociado que comienza con la letra 'P' y tienen menos de 28 años.
SELECT COUNT(*) FROM usuarios_lenguajes WHERE lenguaje LIKE 'P%' AND edad < 28;
