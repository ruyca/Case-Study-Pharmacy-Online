-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: validacion del trigger s-11-ofertas.sql

connect cn_proy_admin/pf_admin;

PROMPT CARGANDO S-11-OFERTAS
@s-11-tr-ofertas.sql

PROMPT ---
PROMPT Si un nuevo precio esta en descuento se muestra en una nueva tabla
PROMPT ---

select * from medicamento_presentacion
  where medicamento_id = 201;

PROMPT ---
PROMPT Para el med_pres_id = 3, bajamos el precio a 350 
PROMPT ---

update medicamento_presentacion
  set costo_unitario = 350
where med_pres_id = 3;


PROMPT ---
PROMPT Para el med_pres_id = 4, aumentamos el precio a 490 
PROMPT ---

update medicamento_presentacion
  set costo_unitario = 490
where med_pres_id = 4;

select * from ofertas; 



PROMPT - Regresando a valores originales - 

update medicamento_presentacion
  set costo_unitario = 486
where med_pres_id = 3;


update medicamento_presentacion
  set costo_unitario = 477
where med_pres_id = 4;


