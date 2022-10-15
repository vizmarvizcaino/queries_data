-- con estas 3 query nos mostrara toda la informacion de las tablas
select * from flights f;

select * from airports_data ad ;

select * from ticket_flights;




-- con esta query nos mostrara los 3 aeropuerto con mas vuelos
SELECT ad.airport_name, ad.city, f.departure_airport, COUNT( f.departure_airport )  as numero_vuelos
from flights f
inner join airports_data ad  on ad.airport_code = f.departure_airport 
group by f.departure_airport, ad.airport_name, ad.city  
order by numero_vuelos desc limit 3

-- con esta query nos mostrara el aeropuerto con menos vuelos
SELECT ad.airport_name, ad.city, f.departure_airport, COUNT( f.departure_airport )  as numero_vuelos
from flights f
inner join airports_data ad  on ad.airport_code = f.departure_airport 
group by f.departure_airport, ad.airport_name, ad.city  
order by numero_vuelos asc limit 1

-- con esta query nos mostrara el promedio del valor de los  vuelos
select  AVG ( amount ) from ticket_flights;

-- con esta query nos mostrara el los tickets con menor precio de acuerdo la columna fare_conditions
select fare_conditions, min(amount) as min_price from ticket_flights group by fare_conditions ;

-- con esta query nos mostrara el los tickets con mayor precio de acuerdo la columna fare_conditions
select fare_conditions, max(amount) as min_price from ticket_flights group by fare_conditions;

-- con esta query nos mostrara el los tickets con menor y mayor precio de acuerdo la columna fare_conditions
select fare_conditions, max(amount) as max_price, min(amount) as min_price  from ticket_flights group by fare_conditions;

-- con esta query nos mostrara los valores distintos de acuerdo a la columna passenger_name
select distinct passenger_name from tickets t ;
