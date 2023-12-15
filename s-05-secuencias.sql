-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: codigo para creacion de todas las secuencias del caso 
--               de estudio

connect cn_proy_admin/pf_admin;


-- DATOS_TARJETA
create sequence datos_tarjeta_seq
  start with 1000
  increment by 1
  maxvalue 5000
  nominvalue
  nocycle
  cache 5;
  
-- CLIENTE
create sequence cliente_seq
  start with 1000
  increment by 1
  maxvalue 5000
  nominvalue
  nocycle
  cache 5;
  
-- PEDIDO
create sequence pedido_seq
  start with 5000
  increment by 1
  maxvalue 10000
  nominvalue
  nocycle
  cache 5;

-- STATUS_PEDIDO
create sequence status_pedido_seq
  start with 1
  increment by 1
  maxvalue 20
  nominvalue
  nocycle;
  
-- HISTORICO_STATUS_PEDIDO
create sequence historico_status_pedido_seq
  start with 1
  increment by 1
  maxvalue 5000
  nominvalue
  nocycle
  cache 5;
  
-- DETALLE_PEDIDO
create sequence detalle_pedido_seq
  start with 1
  increment by 1
  maxvalue 5000
  nominvalue
  nocycle
  cache 5;


-- UBICACION_PEDIDO
create sequence ubicacion_pedido_seq
  start with 1
  increment by 1
  maxvalue 100000
  minvalue 1
  cycle
  cache 50;
  
-- CENTRO_OPERACION
create sequence centro_operacion_seq
  start with 5000
  increment by 5
  maxvalue 10000
  nominvalue
  nocycle
  cache 5;
  
-- MEDICAMENTO
create sequence medicamento_seq
  start with 200
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;
  
  
-- MEDICAMENTO_NOMBRE
create sequence medicamento_nombre_seq
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  cache 5;
  
  
-- DETALLE_MOVIMIENTO
create sequence detalle_movimiento_seq
  start with 1
  increment by 1
  maxvalue 10000
  nominvalue
  nocycle
  cache 5;
  
-- MOVIMIENTO
create sequence movimiento_seq
  start with 1
  increment by 1
  maxvalue 5000
  nominvalue
  nocycle;
  
-- SUSTANCIA_ACTIVA
create sequence sustancia_activa_seq
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;
  
-- MEDICAMENTO_PRESENTACION
create sequence medicamento_presentacion_seq
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;

-- PRESENTACION
create sequence presentacion_seq
  start with 100
  increment by 1
  nomaxvalue
  nominvalue
  nocycle;
  
-- EMPLEADO
create sequence empleado_seq
  start with 500
  increment by 1
  maxvalue 15000
  nominvalue 
  nocycle
  cache 10;
  
-- INVENTARIO
create sequence inventario_seq
  start with 1
  increment by 1
  nomaxvalue
  nominvalue
  nocycle
  cache 10;
  
  








  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  






































