-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fecha creacion: 09/12/2023
-- @Descripcion: Creacion de las entidades, sus atributos y restricciones


PROMPT conectano usuario admin
connect cn_proy_admin/pf_admin;

/*
'CENTRO_OPERACION'
COMENTARIOS: 
- Se puede tener una farmacia y un almacen
- Una oficina no puede vender.
RESTRICCIONES: 
  - CLAVE: formado por xx####, donde xx corresponde al caso: 
    - FM -> si es farmacia y almacen
    - FF -> si solo es farmacia
    - AA -> si es solo es almacen
    - OO -> si solo es oficina
    - #### -> 4 caracteres aleatorios
    - UNIQUE. 
  - CENTRO_ID: PK 
*/
create table centro_operacion(
  centro_id number(10,0) constraint centro_operacion_id
    primary key,
  es_farmacia number(1,0) not null, 
  es_almacen number(1,0) not null, 
  es_oficina number(1,0) not null, 
  clave varchar2(6) not null, 
  latitud number(15,6) not null, 
  longitud number(15,6) not null, 
  telefono varchar2(12) not null,
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
  )
);


/*
'EMPLEADO'
COMENTARIOS: 
- un empleado puede ser normal o supervisor
- uso de default on null sysdate
RESTRICCIONES: 
  -RFC: formado por PPMNaammdd###, donde:
    -PP -> iniciales apellido paterno
    -M -> inicial apellido materno
    -N -> inicial nombre
    - UNIQUE
*/
-- insert into	empleado(empleado_id, fecha_ingreso, rfc, nombre, apellido_paterno, apellido_materno, empleado_supervisor_id,centro_id)	values(empleado_seq.nextval, to_date('09/12/2023','dd/mm/yyyy'), 'OLJJ50098301', 'JESSICA', 'OLIVARES', 'JARA', NULL, 5000);
create table empleado(
  empleado_id number(10,0) constraint empleado_pk primary key,
  fecha_ingreso date default on null sysdate, 
  rfc varchar2(13) not null, 
  nombre varchar2(20) not null, 
  apellido_paterno varchar2(20) not null, 
  apellido_materno varchar2(20) not null, 
  empleado_supervisor_id number(10,0),
  centro_id number(10,0),
  constraint empleado_rfc_chk check(
    (substr(rfc,1,2) = substr(apellido_paterno,1,2)) and
    (substr(rfc,3,1) = substr(apellido_materno,1,1)) and
    (substr(rfc,4,1) = substr(nombre,1,1))
  ),
  constraint empleado_centro_id_fk foreign key(centro_id)
    references centro_operacion(centro_id),
  constraint empleado_supervisor_empleado_id_fk 
    foreign key(empleado_supervisor_id) references empleado(empleado_id),
  constraint empleado_rfc_uk unique(rfc)
);


/*
'FARMACIA'
COMENTARIOS: 
  - El empleado_id debe corresponder a un gerente
  - Un gerente no puede administrar mas de una farmacia
RESTRICCIONES:
  - RFC_FISCAL: PHOddmmyy###, donde:
    -dd -> dia de apertura
    -mm -> mes de apertura
    -yy -> anio de apertura
    -### -> caracteres aleatorios
    - suponemos que se fundo el 9/12/2023
    -UNIQUE
  - PAGINA_WEB: debe iniciar con https://www.pharmacyonline.com
    - UNIQUE
  
*/
create table farmacia(
  farmacia_id number(10,0) constraint farmacia_centro_operacion_fk
    references centro_operacion(centro_id),
  pagina_web varchar2(100) not null,
  rfc_fiscal varchar2(12) not null, 
  empleado_gerente_id number(10,0) not null,
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
);


/*
'ALMACEN'
COMENTARIOS:
- Tres tipos: Convencional (C), Compacto (M), Dinamico (D)
- almacen de contigencia es otro almacen que puede auxiliar
RESTRICCIONES
  - tipo_almacen: 'C' o 'M' o 'D'
*/
create table almacen(
  almacen_id number(10,0) constraint almacen_centro_operacion_fk 
    references centro_operacion(centro_id),
  archivo blob null,
  almacen_contigencia_id number(10,0),
  tipo_almacen varchar2(1) not null,
  constraint almacen_id_pk primary key(almacen_id),
  constraint almacen_contigencia_almacen_id_fk foreign key
    (almacen_contigencia_id) references almacen(almacen_id),
  constraint almacen_tipo_almacen_chk check(
    (tipo_almacen = 'C' or tipo_almacen = 'M' or tipo_almacen='D'))
);


/*
'OFICINA'
COMENTARIOS:
- Clave se construye con una columna virtual:
  - CL-10 caracteres del nombre + 4 caracteres de oficina_id:
    - CL-COYOACANLB0001
RESTRICCIONES
  - Clave es unique
*/
create table oficina(
  oficina_id number(10,0) constraint oficina_centro_operacion_fk
    references centro_operacion(centro_id),
  nombre varchar2(50) not null, 
  clave generated always as(
    'CL-' ||
    substr(nombre,1,10) ||
    to_char(oficina_id, 'fm0000')
  ) virtual, 
  telefono varchar2(12) not null,
  constraint oficina_id_pk primary key(oficina_id)
);


/*
'SUSTANCIA_ACTIVA'
COMENTARIOS:
- catalogo de sustancias activas
*/
create table sustancia_activa(
  sustancia_activa_id number(10,0) constraint sustancia_activa_pk
    primary key,
  nombre_sustancia varchar2(50) not null
);

/*
'MEDICAMENTO'
COMENTARIOS:
- Un medicamento tiene una sustancia activa (fk)
*/
create table medicamento(
  medicamento_id number(10,0) constraint medicamento_pk primary key,
  descripcion varchar2(500) not null, 
  sustancia_activa_id number(10,0) not null,
  constraint medicamento_sustancia_activa_fk 
    foreign key (sustancia_activa_id) 
    references sustancia_activa(sustancia_activa_id)
);


/*
'MEDICAMENTO_NOMBRE'
COMENTARIOS:
- Un medicamento puede tener varios nombres. 
  - med_id 1: nomb_id 1, 2, ...
*/
create table medicamento_nombre(
  nombre_id number(10,0) constraint medicamento_nombre_pk 
    primary key,
  nombre varchar2(50) not null, 
  medicamento_id number(10,0) not null, 
  constraint medicamento_nombre_medicamento_fk foreign key
    (medicamento_id) references medicamento(medicamento_id)
);


/*
'PRESENTACION'
COMENTARIOS:
- CATALOGO.Un medicamento puede tener varias presentaciones. 
  Cada presentacion se especifica por medio de una desc,
  por ej: 10 pastillas de 5g, 250 ml
*/
create table presentacion(
  presentacion_id number(10,0) constraint presentacion_pk
    primary key, 
  descripcion varchar2(100) not null
);


/*
'MEDICAMENTO_PRESENTACION'
COMENTARIOS: 
- indica todas las presentaciones para un medicamento dado.
CONSTRAINTS:
  - costo unitario entre 1 y 50,000
*/
create table medicamento_presentacion(
  med_pres_id number(10,0) 
    constraint medicamento_presentacion_pk
    primary key,
  medicamento_id number(10,0) not null,
  presentacion_id number(10,0) not null, 
  costo_unitario number(10,0) not null,
  constraint medicamento_presentacion_medicamento_fk
    foreign key(medicamento_id) references medicamento(medicamento_id),
  constraint medicamento_presentacion_presentacion_fk
    foreign key(presentacion_id) references presentacion(presentacion_id),
  constraint medicamento_presentacion_costo_unitario_chk check(
    costo_unitario between 1 and 50000
  )
);

/*
'MOVIMIENTO'
COMENTARIOS:
- Indica cuando ingresa o salen medicamentos de un almacen
RESTRICCIONES
  - tipo_movimiento = 'E' o 'S'
  - almacen_id (fk)
  - empleado_responsable -> empleado(id) fk
*/
create table movimiento(
  movimiento_id number(10,0) constraint movimiento_pk
    primary key,
  fecha_movimiento date not null, 
  tipo_movimiento varchar2(1) not null, 
  almacen_id number(10,0) not null, 
  empleado_responsable_id number(10,0) not null,
  constraint movimiento_tipo_movimiento_chk check(
    (tipo_movimiento = 'E' or tipo_movimiento = 'S')
    ),
  constraint movimiento_almacen_fk foreign key(almacen_id)
    references almacen(almacen_id),
  constraint movimiento_empleado_fk 
    foreign key(empleado_responsable_id) 
    references empleado(empleado_id)
);


/*
'DETALLE_MOVIMIENTO'
COMENTARIOS:
- especifica que y cuanto se movio (medicamentos y sus pres.)
RESTRICCIONES:
- 2 fks
-
*/
create table detalle_movimiento(
  detalle_movimiento_id number(10,0) constraint 
    detalle_movimiento_pk primary key, 
  cantidad number(10,0) not null,
  movimiento_id number(10,0) not null, 
  med_pres_id number(10,0) not null, 
  constraint detalle_movimiento_movimiento_fk 
    foreign key(movimiento_id) 
    references movimiento(movimiento_id),
  constraint detalle_movimiento_medicamento_presentacion_fk
    foreign key(med_pres_id)
    references medicamento_presentacion(med_pres_id)
);


/*
'INVENTARIO'
COMENTARIOS:
- indica el medicamento_presentacion y su cantidad existente
- se especifica en que farmacia se tiene
RESTRICCIONES:
- 2fks
*/
create table inventario(
  inventario_id number(10,0) constraint inventario_pk
    primary key,
  existencias number(10,0) not null, 
  farmacia_id number(10,0) not null,
  med_pres_id number(10,0) not null,
  constraint inventario_farmacia_fk foreign key(farmacia_id)
    references farmacia(farmacia_id), 
  constraint inventario_medicamento_presentacion_fk
    foreign key(med_pres_id)
    references medicamento_presentacion(med_pres_id)
);


/*
'CLIENTE'
COMENTARIOS: 
RESTRICCIONES:
- CURP: tiene el formato NNPM##############
  - NN -> Dos iniciales de nombree
  - P -> primer inicial de ap pat
  - M -> primer incial de ap mat
  - # -> caracteres que no importan para el estudio de caso
  - UNIQUE
-RFC: formado por PPMNaammdd###, donde:
  -PP -> iniciales apellido paterno
  -M -> inicial apellido materno
  -N -> inicial nombre
  - UNIQUE
*/
--insert into cliente values(cliente_seq.nextval, '553168088', 'PECS730218920', NULL, 'Calle Pasta 19, Colonia Viena', 'SALMA', 'PEREZ', 'CUEVA', 'FERNANDA450@yahoo.com');
create table cliente(
  cliente_id number(10,0) constraint cliente_pk primary key,
  telefono varchar2(12) not null, 
  rfc varchar2(13) not null, 
  curp varchar(18), 
  direccion varchar2(150) not null, 
  nombre varchar2(20) not null, 
  apellido_paterno varchar2(20) not null,
  apellido_materno varchar2(20) not null,
  correo varchar2(40) not null, 
  constraint cliente_rfc_chk check(
    (substr(rfc,1,2) = substr(apellido_paterno,1,2)) and
    (substr(rfc,3,1) = substr(apellido_materno,1,1)) and
    (substr(rfc,4,1) = substr(nombre,1,1))
  ),
  constraint cliente_rfc_uk unique(rfc),
  constraint cliente_curp_uk unique(curp),
  constraint cliente_curp_chk check(
    (substr(curp,1,2) = substr(nombre, 1,2)) and
    (substr(curp,3,1) = substr(apellido_paterno,1,1)) and
    (substr(curp,4,1) = substr(apellido_materno,1,1))
  )
);

/*
'DATOS_TARJETA'
COMENTARIOS:
- Un cliente solo puede registrar una tarjeta
RESTRICCIONES:
- 
*/
create table datos_tarjeta(
  tarjeta_id number(10,0) constraint datos_tarjeta primary key, 
  num_tarjeta varchar2(16) not null, 
  mes_expiracion varchar2(2) not null, 
  anio_expiracion varchar2(4) not null, 
  cliente_id number(10,0) constraint datos_tarjeta_cliente_fk
    references cliente(cliente_id)
);

/*
'STATUS_PEDIDO'
COMENTARIOS:
- se tiene alguno de los siguientes status:
  - CAPTURADO
  - EN TRANSITO
  - ENTREGADO
  - DEVUELTO
  - CANCELADO
*/
create table status_pedido(
  status_id number(10,0) constraint status_pedido_pk primary key,
  descripcion varchar2(500) not null, 
  clave varchar2(25) not null
);


/*
'PEDIDO'
COMENTARIOS:
- Un mismo pedido puede ser surtido por varias farmacias
RESTRICCIONES:
  - FOLIO: debe de ser unique
  - IMPORTE_TOTAL: entre 50 y 100000 pesos
*/
create table pedido(
  pedido_id number(10,0) constraint pedido_pk primary key,
  fecha_status_actual date not null,
  folio varchar2(13) not null, 
  fecha_pedido date not null,
  importe_total number(10,0) not null, 
  cliente_id number(10,0) not null, 
  empleado_id number(10,0) not null, 
  status_id number(10,0) not null,
  constraint pedido_folio_uk unique(folio),
  constraint pedido_cliente_fk foreign key(cliente_id)
    references cliente(cliente_id),
  constraint pedido_empleado_fk foreign key(empleado_id)
    references empleado(empleado_id),
  constraint pedido_status_pedido_fk foreign key(status_id)
    references status_pedido(status_id),
  constraint pedido_importe_total_chk check(
    importe_total between 50 and 100000
  )
);


/*
'DETALLES_PEDIDO'
COMENTARIOS:
- Indica el medicamento_presentacion y su cantidad
  que se pidieron 
- uso de default on null
RESTRICCIONES:
  - CANTIDAD: entre 1 y 20
*/
create table detalles_pedido(
  detalle_id number(10,0), 
  pedido_id number(10,0),
  cantidad number(3,0) default on null 1, 
  med_pres_id number(10,0) not null, 
  farmacia_id number(10,0) not null, 
  constraint detalles_pedido_pedido_fk 
    foreign key(pedido_id) 
    references pedido(pedido_id),
  constraint detalles_pedido_cantidad check(
    cantidad between 1 and 20
  ),
  constraint detalles_pedido_medicamento_presentacion_fk
    foreign key(med_pres_id) 
    references medicamento_presentacion(med_pres_id),
  constraint detalles_pedido_farmacia_fk
    foreign key(farmacia_id) 
    references farmacia(farmacia_id),
  constraint detalles_pedido_pk 
    primary key(detalle_id, pedido_id)
);


/*
'HISTORICO_STATUS_PEDIDO'
COMENTARIOS:
- Registra todos los cambios de status
*/
create table historico_status_pedido(
  historico_status_pedido_id number(10,0),
  fecha date not null, 
  status_id number(10,0) not null, 
  pedido_id number(10,0) not null, 
  constraint historico_status_pedido_pk 
    primary key(historico_status_pedido_id),
  constraint hist_status_status_pedido_fk
    foreign key(status_id)
    references status_pedido(status_id),
  constraint hist_status_pedido_fk
    foreign key(pedido_id) 
    references pedido(pedido_id)
);


/*
'UBICACION_PEDIDO'
COMENTARIOS:
- Registra la ubicacion de un pedido en tiempo real
*/
create table ubicacion_pedido(
  ubicacion_pedido_id number(10,0),
  fecha_ubicacion date not null, 
  latitud number(18,14) not null, 
  longitud number(18,14) not null,
  pedido_id number(10,0) not null,
  constraint ubicacion_pedido_pk primary key(ubicacion_pedido_id),
  constraint ubicacion_pedido_pedido_fk 
    foreign key(pedido_id)
    references pedido(pedido_id)
);