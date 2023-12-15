-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: validacion del trigger s-11-hist-status.sql

connect cn_proy_admin/pf_admin;

PROMPT probando el script s-11-tr-ofertas 
@s-11-tr-hist-status.sql

select * from pedido where pedido_id = 5001;
select * from historico_status_pedido where pedido_id = 5001;

PROMPT UPDATE DEL PEDIDO CON ID = 5001
update pedido set status_id = 2, fecha_status_actual = sysdate where pedido_id = 5001;


PROMPT MOSTRANDO RESULTADOS
select * from pedido where pedido_id = 5001;
select * from historico_status_pedido where pedido_id = 5001;


delete from historico_status_pedido 
  where pedido_id = 5001 and
    status_id = 2;
    
    
PROMPT REGRESANDO A LOS VALORES ORIGINALES...   
update pedido 
  set status_id = 1, 
  fecha_status_actual = to_date('11-12-2023', 'dd-mm-yyyy')
where pedido_id = 5001;

delete from historico_status_pedido
  where historico_status_pedido_id = (
    select historico_status_pedido_id 
    from historico_status_pedido
    where historico_status_pedido_id = (
      select max(historico_status_pedido_id) from 
        historico_status_pedido
    )
  );