-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: codigo para creacion sinonimos 

PROMPT CONECTANDO USUARIO ADMINISTRADOR
connect cn_proy_admin/pf_admin;

PROMPT CREANDO SINONIMOS PUBLICOS
create or replace public synonym medicamento for cn_proy_admin.medicamento;
create or replace public synonym medicamento_nombre
  for cn_proy_admin.medicamento_nombre;
create or replace public synonym medicamento_presentacion
  for cn_proy_admin.medicamento_presentacion;
create or replace public synonym centro_operacion 
  for cn_proy_admin.centro_operacion;

PROMPT CREANDO PERMISO PARA USAR SELECT EN TABLAS
grant select on pedido to cn_proy_invitado;
grant select on historico_status_pedido to cn_proy_invitado;
grant select on detalles_pedido to cn_proy_invitado;
grant select on ubicacion_pedido to cn_proy_invitado;
grant select on cliente to cn_proy_invitado;

PROMPT CREANDO SINONIMOS DE USUARIO
grant create synonym to cn_proy_invitado;

Prompt conectando como invitado
connect cn_proy_invitado/pf_usuario;

create or replace synonym pedido for cn_proy_admin.pedido;
create or replace synonym historico_status_pedido 
  for cn_proy_admin.historico_status_pedido;
create or replace synonym detalles_pedido 
  for cn_proy_admin.detalles_pedido;
create or replace synonym ubicacion_pedido 
  for cn_proy_admin.ubicacion_pedido;
create or replace synonym cliente
  for cn_proy_admin.cliente;

PROMPT conectando usuario administrador
connect cn_proy_admin/pf_admin;
create or replace synonym cn_ubicacion_pedido for ubicacion_pedido;
create or replace synonym cn_status_pedido for status_pedido;
create or replace synonym cn_pedido for pedido;
create or replace synonym cn_historico_status_pedido 
  for historico_status_pedido;
create or replace synonym cn_datos_tarjeta 
  for datos_tarjeta;
create or replace synonym cn_cliente
  for cliente;
create or replace synonym cn_centro_operacion
  for centro_operacion;
create or replace synonym cn_detalles_pedido
  for detalles_pedido;
create or replace synonym cn_farmacia for farmacia;
create or replace synonym cn_almacen for almacen;
create or replace synonym cn_oficina for oficina;
create or replace synonym cn_medicamento_nombre 
  for medicamento_nombre;
create or replace synonym cn_medicamento_presentacion
  for medicamento_presentacion;
create or replace synonym cn_medicamento
  for medicamento;
create or replace synonym cn_detalle_movimiento
  for detalle_movimiento;
create or replace synonym cn_presentacion for presentacion;
create or replace synonym cn_empleado for empleado;
create or replace synonym cn_sustancia_activa for sustancia_activa;
create or replace synonym cn_movimiento for movimiento;
create or replace synonym cn_inventario for inventario;






 
  
  
  
  

























