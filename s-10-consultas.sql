-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fecha creacion: 12/12/2023
-- @Descripcion: creacion script para realizar 5 o más consultas


connect cn_proy_admin/pf_admin;

--CONSULTA1
--medicamento_id y descripcion del medicamento que tiene mas nombres diferentes
select medicamento_id, descripcion, count(*) as numero_nombres
from medicamento 
natural join medicamento_nombre
group by medicamento_id,descripcion
having count(*) = (select max(num_nombres_dif)
                   from (
                         select medicamento_id, count(*) as num_nombres_dif
                         from medicamento
                         natural join medicamento_nombre
                         group by medicamento_id
                         )
                  );

--CONSULTA2
--almacenes que cuentan con su almacen de contingencia
select a.almacen_id, a.tipo_almacen, ac.almacen_id almacen_contingencia_id, ac.tipo_almacen tipo_almacen_contingencia
  from almacen a
  inner join almacen ac
    on ac.almacen_id = a.almacen_contigencia_id;

--CONSULTA3
--promedio del costo de los medicamentos por presentacion
select m.medicamento_id, avg(mp.costo_unitario) as promedio_presentacion
  from medicamento m
  join medicamento_presentacion mp
    on m.medicamento_id = mp.medicamento_id
  join presentacion p
    on mp.presentacion_id = p.presentacion_id
group by m.medicamento_id;

--CONSULTA4
--clientes y los posibles pedidos que han hecho
select c.cliente_id, c.nombre as nombre_cliente, c.apellido_paterno, c.apellido_materno, p.pedido_id
  from cliente c
  left join pedido p
    on p.cliente_id = c.cliente_id;

--CONSULTA5
--empleados y sus posibles pedidos asociados 
select e.empleado_id, e.nombre as nombre_empleado, e.apellido_paterno, e.apellido_materno, p.pedido_id
  from pedido p
  right join empleado e
    on p.empleado_id = e.empleado_id;

--CONSULTA6
--todas las presentaciones del ibuprofeno
select sa.nombre_sustancia, mp.presentacion_id, p.descripcion
  from medicamento m
  join sustancia_activa sa
   on sa.sustancia_activa_id = m.sustancia_activa_id
  join medicamento_presentacion mp
    on mp.medicamento_id = m.medicamento_id
  join presentacion p
    on p.presentacion_id = mp.presentacion_id
where sa.nombre_sustancia = upper('ibuprofeno');

--CONSULTA7
--todos los medicamentos y sus posibles presentaciones
select m.medicamento_id, sa.nombre_sustancia, mp.presentacion_id, p.descripcion
  from medicamento m
  join sustancia_activa sa
    on sa.sustancia_activa_id = m.sustancia_activa_id
  left join medicamento_presentacion mp
    on mp.medicamento_id = m.medicamento_id
  left join presentacion p
    on p.presentacion_id = mp.presentacion_id
order by medicamento_id;

--CONSULTA8
--cantidad de presentaciones por medicamento y mostrar solo aquellos con mas de 2 presentaciones
select medicamento_id, count(*) as numero_presentaciones
  from medicamento_presentacion
  group by medicamento_id
  having count(*) > 2;

--CONSULTA9
--obtener todos los medicamentos de la farmacia con id = 5000 o de la farmacia con id = 5005
select m.medicamento_id, sa.nombre_sustancia, i.farmacia_id
  from inventario i
  join medicamento_presentacion mp
    on mp.med_pres_id = i.med_pres_id
  join medicamento m
    on m.medicamento_id = mp.medicamento_id
  join sustancia_activa sa
    on sa.sustancia_activa_id = m.sustancia_activa_id
where i.farmacia_id = 5000
union
select m.medicamento_id, sa.nombre_sustancia, i.farmacia_id
  from inventario i
  join medicamento_presentacion mp
    on mp.med_pres_id = i.med_pres_id
  join medicamento m
    on m.medicamento_id = mp.medicamento_id
  join sustancia_activa sa
    on sa.sustancia_activa_id = m.sustancia_activa_id
where i.farmacia_id = 5005;

--CONSULTA10
--empleados que han realizado ventas
select empleado_id, nombre
  from empleado
  where empleado_id in (
    select empleado_id from pedido
    intersect
    select empleado_id from empleado);
                      
--CONSULTA11
--todos los empleados que no han realizado ventas
select empleado_id, nombre
  from empleado
where empleado_id in (
    select empleado_id from empleado
    minus
    select empleado_id from pedido);

--CONSULTA12
--consulta que muestras los empleados que son gerentes y supervisores
select empleado_id, nombre, apellido_paterno, apellido_materno
from v_farmacia_gerente
intersect 
select empleado_id, nombre, apellido_paterno, apellido_materno
from empleado
where empleado_supervisor_id is null;

--CONSULTA13
--informacion de cada tipo de centro de operacion
--inserciones en las tablas temporales
insert into centro_farmacia values (1, 'FM001', 12.3456, -78.9012, 1234567890, 'https://www.pharmacyonline.com', 'PHO123456789', 101);
insert into centro_almacen values (2, 'AA001', 12.3456, -78.9012, 9876543210, null, null, 'C');
insert into centro_oficina values (3, 'OF001', 12.3456, -78.9012, 5555555555, 'Oficina Central', 9876543210);

select 'Farmacia' as tipo_centro, cf.centro_id, cf.clave, cf.latitud, cf.longitud, cf.telefono
from centro_farmacia cf
union
select 'Almacén' as tipo_centro, ca.centro_id, ca.clave, ca.latitud, ca.longitud, ca.telefono_centro
from centro_almacen ca
union
select 'Oficina' as tipo_centro, co.centro_id, co.clave, co.latitud, co.longitud, co.telefono_centro
from centro_oficina co;

--CONSULTA14
--consulta en la tabla externa emp_inicial_ext
select nombre, apellido_paterno, apellido_materno, fecha_inicio
from emp_inicial_ext;

--CONSULTA15
--consulta del detalle del pedido_id = 5000 empleando sinonimos
connect cn_proy_invitado/pf_usuario;

select * from detalles_pedido 
where pedido_id = 5000;




