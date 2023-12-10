-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: Creacion de tablas temporales para facilitar la consulta
--               de datos.

/*
'CENTRO-FARMACIA'

COMENTARIOS: 
- no especificamos farmacia_id, esto lo ligamos
con centro_id
*/
create global temporary table centro_farmacia(
  centro_id number(10,0) not null, 
  es_farmacia as(1),
  es_almacen as(0),
  es_oficina as(0),
  clave varchar2(6) not null, 
  latitud number(15,4) not null, 
  longitud number(15,4) not null, 
  telefono number(12,0) not null, 
  pagina_web varchar2(100) null,
  rfc_fiscal varchar2(12) not null, 
  empleado_gerente_id number(10,0) not null, 
  constraint centro_operacion_clave_uk unique(clave),
  constraint centro_operacion_clave_chk check (
    (es_farmacia = 1 and es_almacen = 1 and es_oficina = 0 and 
      substr(clave,1,2)='FM') or
    (es_farmacia = 1 and es_almacen = 0 and es_oficina = 0 and
      substr(clave,1,2)='FF') or
    (es_farmacia = 0 and es_almacen = 1 and es_oficina = 0 and
      substr(clave,1,2) = 'AA') or
    (es_farmacia = 0 and es_almacen = 0 and es_oficina = 1 and
      substr(clave,1,2) = 'OO')
  ),
  constraint farmacia_pagina_web_chk check (
    substr(pagina_web,1,30) = 'https://www.pharmacyonline.com'
    ),
  constraint farmacia_rfc_fiscal_chk check(
    substr(rfc_fiscal,1,3) = 'PHO' and
    (to_date(substr(rfc_fiscal,4,6),'ddmmyyyy') >= 
    to_date('091223', 'ddmmyyyy'))
    ),
  constraint farmacia_pk primary key(farmacia_id),
  constraint farmacia_empleado_fk foreign key(empleado_gerente_id)
    references empleado(empleado_id)
)on commit preserve rows;

/*
'CENTRO-ALMACEN'
*/
create global temporary table centro_farmacia(
  centro_id number(10,0) not null, 
  es_farmacia as(0),
  es_almacen as(1),
  es_oficina as(0),
  clave varchar2(6) not null, 
  latitud number(15,4) not null, 
  longitud number(15,4) not null, 
  telefono_centro number(12,0) not null,
  archivo blob null,
  almacen_contigencia_id number(10,0),
  tipo_almacen varchar2(1) not null,
  constraint almacen_contigencia_almacen_id_fk foreign key
    (almacen_contigencia_id) references centro_farmacia(centro_id),
  constraint almacen_tipo_almacen_chk check(
    (tipo_almacen = 'C' or tipo_almacen = 'M' or tipo_almacen='D'))
  
)on commit preserve rows;


/*
CENTRO-OFICINA
*/
create global temporary table centro_farmacia(
  centro_id number(10,0) not null, 
  es_farmacia as(0),
  es_almacen as(1),
  es_oficina as(0),
  clave varchar2(6) not null, 
  latitud number(15,4) not null, 
  longitud number(15,4) not null, 
  telefono_centro number(12,0) not null,
  nombre_oficina varchar2(50) not null, 
  clave generated always as(
    'CL-' ||
    substr(nombre_oficina,1,10) ||
    to_char(centro_id, 'fm0000')
  ) virtual, 
  telefono_oficina number(12) not null
) on commit preserve rows;










