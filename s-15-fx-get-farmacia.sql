-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 12/12/2023
-- @Descripcion: funcion que retorna el farmacia_id
--               que tenga la mayor disponibilidad en el inventario
--               para surtir un medicamento_presentacion


create or replace function get_farmacia(p_med_pres_id number)
return number is
  v_existencias1 number; 
  v_existencias2 number;
begin

  -- cuantos medicamentos hay en la farmacia 1
  select existencias into v_existencias1
  from inventario
  where farmacia_id = 5000 and 
    med_pres_id = p_med_pres_id;

  -- cuantos medicamentos hay en la farmacia 2
  select existencias into v_existencias2
  from inventario
  where farmacia_id = 5005 and 
    med_pres_id = p_med_pres_id;
  
  if v_existencias1 > v_existencias2 then 
    return 5000;
  else 
    return 5005;
  end if;
  
exception
  when no_data_found then
    dbms_output.put_line('No se encontraron datos para el medicamento y presentación especificados.');
    return null;
  when others then
    raise;
end get_farmacia;
/
show errors;