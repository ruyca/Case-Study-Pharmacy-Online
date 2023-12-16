-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: creacion del procedimiento para mostrar las presentaciones
--              asociadas de hasta 3 medicamentos, para la creacion
--              de un pedido


set serveroutput on
create or replace procedure crearPedido(
  p_medicamento_nombre1 in varchar,  
  p_medicamento_nombre2 in varchar default null, 
  p_medicamento_nombre3 in varchar default null) 
is
  v_medicamento_id1 medicamento.medicamento_id%type;
  v_medicamento_id2 medicamento.medicamento_id%type;
  v_medicamento_id3 medicamento.medicamento_id%type;
  
  -- cursor que almacena todas las presentaciones disponibles
  cursor cur_med_pres is
  select mp.med_pres_id, mp.medicamento_id, mp.presentacion_id, 
    p.descripcion, mp.costo_unitario
  from  medicamento_presentacion mp
  join presentacion p
    on mp.presentacion_id = p.presentacion_id;
  
begin
  -- seleccionamos el medicamento_id asociado con el nombre
  select medicamento_id into v_medicamento_id1
  from medicamento_nombre 
  where upper(nombre) = upper(p_medicamento_nombre1);
  
  -- si queremos consultar otros medicamentos_ids
  if p_medicamento_nombre2 is not null then
    select medicamento_id into v_medicamento_id2
    from medicamento_nombre 
    where upper(nombre) = upper(p_medicamento_nombre2);
  end if; 
  
  if p_medicamento_nombre3 is not null then
    select medicamento_id into v_medicamento_id3
    from medicamento_nombre 
    where upper(nombre) = upper(p_medicamento_nombre3);
  end if; 
  
  dbms_output.put_line('-');
  dbms_output.put_line('Presentaciones disponibles para ' || p_medicamento_nombre1);
  dbms_output.put_line('ID_PRESENTACION' || '  -  ' || 'DESCRIPCION' || '    -    ' || 'PRECIO');
  for p in cur_med_pres loop 
    if p.medicamento_id = v_medicamento_id1 then 
      dbms_output.put_line(p.med_pres_id || '         ' || p.descripcion || '      ' || p.costo_unitario);
    end if;
  end loop;

  if p_medicamento_nombre2 is not null then
    dbms_output.put_line('-');
    dbms_output.put_line('Presentaciones disponibles para ' || p_medicamento_nombre2);
    dbms_output.put_line('ID_PRESENTACION' || '  -  ' || 'DESCRIPCION' || '    -    ' || 'PRECIO');
    for p in cur_med_pres loop 
      if p.medicamento_id = v_medicamento_id2 then 
        dbms_output.put_line(p.med_pres_id || '         ' || p.descripcion || '      ' || p.costo_unitario);
      end if;
    end loop;
  end if; 

  if p_medicamento_nombre3 is not null then
    dbms_output.put_line('-');
    dbms_output.put_line('Presentaciones disponibles para ' || p_medicamento_nombre3);
    dbms_output.put_line('ID_PRESENTACION' || '  -  ' || 'DESCRIPCION' || '    -    ' || 'PRECIO');
    for p in cur_med_pres loop 
      if p.medicamento_id = v_medicamento_id3 then 
        dbms_output.put_line(p.med_pres_id || '         ' || p.descripcion || '      ' || p.costo_unitario);
      end if;
    end loop;
  end if; 
  
end; 
/ 
show errors
  
  
  