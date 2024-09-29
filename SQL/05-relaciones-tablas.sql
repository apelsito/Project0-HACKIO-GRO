
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select t."Name" as "Nombre Pista", a."Title" as "Título del Albúm" from "Track" t join "Album" a on t."AlbumId" = a."AlbumId" ;

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select a."Name" as "Nombre Artista", al."Title" as "Título del Albúm" from "Artist" a join "Album" al on a."ArtistId" = al."ArtistId" order by a."Name";

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select c."FirstName" as "Nombre Cliente", sum(i."Total") as "Total Facturado" from "Customer" c join "Invoice" i ON c."CustomerId" = i."CustomerId" group by c."FirstName" order by "Total Facturado" desc limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select e."FirstName" as "Nombre Empleado", c."FirstName" as "Cliente" from "Employee" e join "Customer" c on e."EmployeeId" = c."SupportRepId";

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select i."InvoiceId" as "ID Factura", t."Name" as "Nombre pista" from "Invoice" i join "InvoiceLine" il ON i."InvoiceId" = il."InvoiceId" join "Track" t on il."TrackId" = t."TrackId";

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select ar."Name" as "Artista",g."Name" as "Género" from "Artist" ar join "Album" al on ar."ArtistId" = al."ArtistId" join "Track" t on al."AlbumId" = t."AlbumId" join "Genre" g on t."GenreId" = g."GenreId" ;

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select t."Name" as "Pista", mt."Name" as "Medio Disponible" from "Track" t join "MediaType" mt ON t."MediaTypeId" = mt."MediaTypeId";

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
select t."Name" as "Pista", g."Name" as "Género" from "Track" t left join "Genre" g on t."GenreId" = g."GenreId";

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
select c."FirstName" as "Cliente", i."InvoiceId" as "ID Factura", i."Total" as "Total Factura" from "Customer" c left join "Invoice" i ON c."CustomerId" = i."CustomerId";

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
SELECT al."Title" AS "Álbum", ar."Name" AS "Artista" FROM  "Album" al LEFT JOIN "Artist" ar ON al."ArtistId" = ar."ArtistId";


-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
SELECT g."Name" AS "Género", COUNT(t."TrackId") AS "Número de Pistas" FROM "Track" t JOIN "Genre" g ON t."GenreId" = g."GenreId" GROUP BY g."Name" ORDER BY "Número de Pistas" DESC;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
SELECT al."Title" AS "Álbum", SUM(t."Milliseconds") AS "Duración" FROM "Album" al JOIN "Track" t ON al."AlbumId" = t."AlbumId" GROUP BY al."Title";

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
SELECT c."FirstName" || ' ' || c."LastName" AS "Nombre", SUM(i."Total") AS "Total Gastado" FROM "Customer" c JOIN "Invoice" i ON c."CustomerId" = i."CustomerId" GROUP BY c."FirstName", c."LastName";

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
SELECT e."FirstName" || ' ' || e."LastName" AS "Empleado", c."FirstName" || ' ' || c."LastName" AS "Cliente" FROM "Employee" e LEFT JOIN "Customer" c ON e."EmployeeId" = c."SupportRepId";
