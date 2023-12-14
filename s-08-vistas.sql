-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: creacion de distintos tipos de vistas

connect cn_proy_admin/pf_admin;

/*
Creacion de una vista para que el usuario pueda consultar
sus datos, asi como unicamente el numero de su tarjeta registrada
(en caso de tener).
*/
create or replace view v_cliente(
  telefono, rfc, curp, nombre, apellido_paterno, num_tarjeta
) as select telefono, rfc, curp, nombre, apellido_paterno, num_tarjeta
from cliente c
left join datos_tarjeta d
  on c.cliente_id = d.cliente_id;

/*
Creacion de una vista par amostrar el pedido y sus detalles
sin necesidad de realizar un join
*/
create or replace view v_pedido(
  pedido_id, folio, fecha_pedido, importe_total, cliente_id,
  cantidad, med_pres_id, medicamento_id, descripcion
) as select p.pedido_id, p.folio, p.fecha_pedido, p.importe_total,
  p.cliente_id, d.cantidad, mp.med_pres_id, m.medicamento_id, 
  m.descripcion
from pedido p
join detalle_pedido d
  on p.pedido_id = d.pedido_id 
join medicamento_presentacion mp
  on mp.med_pres_id = d.med_pres_id
join medicamento m
  on m.medicamento_id = mp.medicamento_id;


/*
Creacion de vista para mostrar un medicamento con su sustancia
activa
*/
create or replace view v_medicamento(
  medicamento_id, descripcion, nombre_sustancia_activa
) as select m.medicamento_id, m.descripcion, s.nombre_sustancia
from medicamento m 
join sustancia_activa s
  on m.sustancia_activa_id = s.sustancia_activa_id;

/*
Creacion de una vista para mostrar los datos del empleado
que es gerente de una farmacia
*/
create or replace view v_farmacia_gerente(
  empleado_id, fecha_ingreso, nombre, apellido_paterno, apellido_materno,
  pagina_web, rfc_fiscal
) as select e.empleado_id, e.fecha_ingreso, e.nombre, e.apellido_paterno,
  e.apellido_materno, f.pagina_web, f.rfc_fiscal
from empleado e
join farmacia f
  on e.empleado_id = f.empleado_gerente_id;




































