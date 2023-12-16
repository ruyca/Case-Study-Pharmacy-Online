-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: funcion que genera un folio aleatorio para pedido

create or replace function generar_folio 
return varchar2 is
v_folio varchar2(13);
v_existe number;
begin
  loop 
    v_folio := dbms_random.string('U', 13);
    
    select count(*)
    into v_existe
    from pedido
    where folio = v_folio;
    
    exit when v_existe = 0;
  end loop;
  
  return v_folio;
end generar_folio;
/
show errors