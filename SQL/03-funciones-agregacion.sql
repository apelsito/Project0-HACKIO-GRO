
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
SELECT MIN("Milliseconds") FROM "Track";

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
SELECT MAX("Milliseconds") FROM "Track";

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
SELECT MIN("UnitPrice") FROM "Track";   

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
SELECT MAX("UnitPrice") FROM "Track";      

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
select MIN ("InvoiceDate") from "Invoice";   

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
select MAX ("InvoiceDate") from "Invoice";   

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
select count("TrackId") from "Track";   

-- Ejercicio 8: Contar el número de clientes en Brasil.
select count("CustomerId") from "Customer";   

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
select sum("Milliseconds") from "Track";  

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
select sum("EmployeeId") from "Employee" where "Title" = 'Sales Support Agent'    

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
select sum("Total") from "Invoice"    

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
select AVG("Milliseconds") from "Track" 

-- Ejercicio 13: Calcular el precio medio de las pistas.
select AVG("UnitPrice") from "Track"     

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
select STDDEV("Milliseconds") from "Track";    

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
select variance("Milliseconds") from "Track";  

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
select stddev("UnitPrice") from "Track";  

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
SELECT CONCAT("FirstName", ' ', "LastName") from "Customer";

