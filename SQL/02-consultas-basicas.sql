-- Me explico, asumí que renombrar era cambiar el nombre de forma fija en la tabla, es decir usando rename column
-- Se que se puede imprimir de forma temporal con AS, pero al decirme renombrar, asumí que el cambio sería fijo
-- Básicamente la he cagado una barbaridad JAJAJA
-- Lo voy a dejar así, volvere a cargar la BD para los próximos ejercicios, pero que conste que ya se el error! 

-- Ejercicio 1: Seleccionar todos los campos de la tabla `customers` y renombrar la columna `CustomerId` a `ID`.
select * from "Customer";
alter table "Customer" rename column "CustomerId" to "ID"; 

-- Ejercicio 2: Seleccionar los nombres de los clientes (`FirstName`, `LastName`) y renombrar las columnas a `First_Name` y `Last_Name`.
select "FirstName" , "LastName" from "Customer";
alter table "Customer" rename column "FirstName" to "First_Name";
alter table "Customer" rename column "LastName"  to "Last_Name";

-- Ejercicio 3: Seleccionar los títulos de las pistas (`Name`) que duran más de 300,000 milisegundos y renombrar la columna a `Track_Title`.
select "Name" from "Track" where "Milliseconds" > 300000;

-- Ejercicio 4: Seleccionar el nombre y el correo electrónico de los clientes que viven en Brasil y renombrar las columnas a `Name` y `Email_Address`.
select "First_Name","Email" from "Customer" where "Country" = 'Brazil';
alter table "Customer" rename column "First_Name" to "Name";
alter table "Customer" rename column "Email" to "Email_Address"

-- Ejercicio 5: Seleccionar los nombres de las playlists (`Name`) que contienen la palabra 'Music' y renombrar la columna a `Playlist_Name`.
select "Name" from "Track" where "Name" like '%Music%';
alter table "Track" rename column "Name" to "Playlist_Name"

-- Ejercicio 6: Seleccionar los nombres de los empleados (`FirstName`, `LastName`) que trabajan como 'Sales Support Agent' y renombrar las columnas a `First_Name` y `Last_Name`.
select "FirstName", "LastName" from "Employee" where "Title" = 'Sales Support Agent';
alter table "Employee" rename column "FirstName" to "First_Name";
alter table "Employee" rename column "LastName" to "Last_Name";

-- Ejercicio 7: Seleccionar los nombres de los géneros (`Name`) y renombrar la columna a `Genre_Name`.
select "Name" from "Genre";
alter table "Genre" rename column "Name" to "Genre_Name";

-- Ejercicio 8: Seleccionar los nombres de los empleados (`FirstName`, `LastName`) que reportan al empleado con `EmployeeId` = 1 y renombrar las columnas a `First_Name` y `Last_Name`.
select "First_Name", "Last_Name" from "Employee" where "ReportsTo" = 1;
	-- No puedo modificar algo que ya hice en el ejercicio 6.

-- Ejercicio 9: Seleccionar los nombres de las pistas (`Name`) y su duración en minutos (convertido de milisegundos) que duran más de 5 minutos y renombrar las columnas a `Track_Name` y `Duration_Minutes`.
select "Track_Name", ("Milliseconds"/60000) as "Duration_Minutes" from "Track" where ("Milliseconds"/60000) > 5;
alter table "Track" rename column "Playlist_Name" to "Track_Name";


-- Ejercicio 10: Encuentra las pistas que tienen un precio mayor a 1.00 y una duración menor a 300,000 milisegundos. Muestra el nombre de la pista y su duración.
select "Track_Name","Milliseconds" from "Track" where "UnitPrice" > 1 and "Milliseconds" < 300000;

-- Ejercicio 11: Lista los empleados que trabajan en la ciudad 'Seattle' y cuyo estado es 'WA'. Muestra el nombre y el apellido del empleado.
select "First_Name","Last_Name" from "Employee" where "City" = 'Seattle' and "State" = 'WA';

-- Ejercicio 12: Encuentra los clientes que están en el país 'USA' y tienen asignado un representante de soporte con un ID mayor o igual a 5. Muestra el nombre del cliente y su ID de soporte.
select "Name","ID" from "Customer" where "Country" = 'USA' and "SupportRepId" >= 5;

-- Ejercicio 13: Selecciona las facturas que tienen un total mayor a 10.00 y pertenecen a clientes con ID menor a 50. Muestra el ID de la factura y el total.
select "InvoiceId", "Total" from "Invoice" where "Total" > 10 and "CustomerId" < 50;

-- Ejercicio 14: Lista las pistas que tienen una duración mayor a 250,000 milisegundos y pertenecen a un tipo de medio con ID 1 o 2. Muestra el nombre de la pista y el tipo de medio.
select "Track_Name", "MediaTypeId" from "Track" where "Milliseconds" > 250000 and "MediaTypeId" = 1 or "MediaTypeId" = 2;


