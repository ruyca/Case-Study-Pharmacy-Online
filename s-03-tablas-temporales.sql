-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: Creacion de tablas temporales para facilitar la consulta
--               de datos.

connect cn_proy_admin/pf_admin;

/*
'CENTRO-FARMACIA'

COMENTARIOS: 
- no especificamos farmacia_id, esto lo ligamos
con centro_id
*/
create global temporary table centro_farmacia(
  centro_id number(10,0) not null, 
  clave varchar2(6) not null, 
  latitud number(15,4) not null, 
  longitud number(15,4) not null, 
  telefono number(12,0) not null, 
  pagina_web varchar2(100) null,
  rfc_fiscal varchar2(12) not null, 
  empleado_gerente_id number(10,0) not null
)on commit preserve rows;

/*
'CENTRO-ALMACEN'
*/
create global temporary table centro_almacen(
  centro_id number(10,0) not null, 
  clave varchar2(6) not null, 
  latitud number(15,4) not null, 
  longitud number(15,4) not null, 
  telefono_centro number(12,0) not null,
  archivo blob null,
  almacen_contigencia_id number(10,0),
  tipo_almacen varchar2(1) not null
)on commit preserve rows;


/*
CENTRO-OFICINA
*/
create global temporary table centro_oficina(
  centro_id number(10,0) not null, 
  clave varchar2(6) not null, 
  latitud number(15,4) not null, 
  longitud number(15,4) not null, 
  telefono_centro number(12,0) not null,
  nombre_oficina varchar2(50) not null, 
  telefono_oficina number(12) not null
) on commit preserve rows;










