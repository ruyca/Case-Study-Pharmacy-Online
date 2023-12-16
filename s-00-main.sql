-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 14/12/2023
-- @Descripcion: codigo que ejecuta todos los scripts generados

PROMPT Borrando entidades generadas anteriormente
connect cn_proy_admin/pf_admin; 
@drop-tables.sql

connect sys as sysdba;  
PROMPT Borrando usuarios generados anteriormente
drop user cn_proy_admin cascade;
drop user cn_proy_invitado cascade;
drop role rol_admin;
drop role rol_invitado; 

PROMPT creando usuarios nuevamente
@s-01-usuarios.sql

PROMPT creando entidades
@s-02-entidades.sql

PROMPT creando tablas temporales
@s-03-tablas-temporales.sql

PROMPT creando tablas externas
@s-04-tablas-externas.sql

PROMPT creando secuencias
@s-05-secuencias.sql

PROMPT creando indices
@s-06-indices.sql

PROMPT creando sinonimos
@s-07-sinonimos.sql

PROMPT creando vistas
@s-08-vistas.sql

PROMPT iniciando carga de datos ... 
@s-09-carga-inicial.sql

PROMPT consultas
@s-10-consultas.sql






