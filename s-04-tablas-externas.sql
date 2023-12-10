-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: codigo para lectura de tablas externas


prompt conectado sys
connect sys as sysdba;

prompt creando directorio emp_ext
create or replace directory emp_ext 
  as '/unam-bd/proyecto-final/Case-Study-Pharmacy-Online/tablas_externas';
  
--grant read, write on directory emp_ext to cs_proy_admin;
grant read, write on directory emp_ext to proy_final_prueba; -- PRUEBAS

prompt Conectando con usuario cs_proy_admin para crear la tabla externa
--connect cs_proy_admin/pf_admin
connect proy_final_prueba/ruy; -- PARA PRUEBAS

prompt creando tabla externa
create table emp_inicial_ext(
  fecha_inicio date,
  rfc varchar2(13),
  nombre varchar2(50),
  apellido_paterno varchar2(50),
  apellido_materno varchar2(50)
)organization external (
  type oracle_loader
  default directory emp_ext
  access parameters(
    records delimited by newline
    badfile emp_ext: 'empleado_ext_bad.log'
    logfile emp_ext: 'empleado_ext.log'
    fields terminated by ','
    lrtrim
    missing field values are null
    (
      fecha_inicio date mask "dd/mm/yyyy", rfc, nombre, 
      apellido_paterno, apellido_materno
    )
  )
  location ('empleados_externos.csv')
)reject limit unlimited;















