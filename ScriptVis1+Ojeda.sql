-- 1. Ordenar peliculas segun duración
create view vw_duracion as
select  Nombre, Duracion
from pelicula
order by Duracion desc;

-- 2. Agrupar  y sumar peliculas por ID_pais
create view vw_pelicula_pais as
select ID_pais , count(*) as total
from pelicula
group by ID_pais;

-- 3. Vista con el nombre del pais a la suma de peliculas por pais
create view vw_nombres_pais as
select  T1.total, T2.pais from vw_pelicula_pais T1
join pais T2
on T1.ID_pais = T2.ID_pais;

-- 4  Vista con Nombre y apellido de Jurado y la competencia
create view vw_jurados_competencia as
select T1.competencia, T2.nombre_apellido
from competencias T1
join jurados T2
on T1.ID_competencias = T2.ID_competencias;

-- 5 Cantidad de pelicula por competencia
create view vw_competencia_count as
select T1.ID_competencias, count(*) as total_competencia, T2.competencia
from pelicula T1
join competencias T2
on T1.ID_competencias = T2.ID_competencias
group by ID_competencias;