  -- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 09/12/2023
-- @Descripcion: Creacion de los usuarios cn_proy_invitado, cn_proy_admin
--               y de los roles rol_admin, rol_invitado

PROMPT Ingresando como usuario SYS
connect sys as sysdba

PROMPT Creando rol_admin
create role rol_admin;
grant create session, create table, create view, create sequence,
  create procedure, create any directory, create synonym, 
  create trigger
  to rol_admin;
  
PROMPT Creando rol_invitado
create role rol_invitado;
grant create session to rol_invitado;

PROMPT Creando usuario cn_proy_invitado
create user cn_proy_invitado identified by pf_usuario quota unlimited
  on users;
grant rol_invitado to cn_proy_invitado; 

PROMPT Creando usuario cn_proy_admin
create user cn_proy_admin identified by pf_admin quota unlimited
  on users;
grant rol_admin to cn_proy_admin; 