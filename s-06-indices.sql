-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: codigo para creacion de indices

connect cn_proy_admin/pf_admin;

-- NON UNIQUE
create index cliente_correo_ix on cliente(correo);

-- FKs
create index medicamento_nombre_med_id_ix
  on medicamento_nombre(medicamento_id);
create index medicamento_presentacion_med_pres_ix
  on medicamento_presentacion(medicamento_id);
create index inventario_farmacia_id_ix
  on inventario(farmacia_id);
create index ubicacion_pedido_pedido_id_ix
  on ubicacion_pedido(pedido_id);
create index medicamento_sus_act_ix
  on medicamento(sustancia_activa_id);
create index empleado_centro_id_ix
  on empleado(centro_id);

--UNIQUE
create unique index detalle_pedido_iuk on 
  detalles_pedido(pedido_id, detalle_id); 

-- FUNCIONES
-- Buscar a los empleados fundadores (iniciaron a trabajar
-- el 09/12/2023)
create index empleado_fecha_ingreso_ifx
  on empleado(to_char(fecha_ingreso, 'dd-mm-yyyy'));
-- Buscar clientes por su nombre
create index cliente_nombre_ifx
  on cliente(upper(nombre));
create index cliente_ap_pat_ifx
  on cliente(upper(apellido_paterno));
create index cliente_ap_mat_ifx
  on cliente(upper(apellido_materno));