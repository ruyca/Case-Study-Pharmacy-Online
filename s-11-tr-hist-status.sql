-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: creacion de un trigger que inserte en historico_status_pedido
--               cada que se modifique el status de un pedido

create or replace trigger hist_status_trigger
  after insert or update of status_id on pedido
  for each row
  declare
  v_status_id number(10,0);
  v_fecha date;
  v_hist_id number(10,0);
  v_pedido_id number(10,0);
  begin
    -- obtiene el consecutivo de la secuencia
    select historico_status_pedido_seq.nextval into v_hist_id from dual;
    
    --asigna valores a las variables con el nuevo status y fecha
    v_status_id := :new.status_id;
    v_fecha := :new.fecha_status_actual;
    v_pedido_id := :new.pedido_id;
    dbms_output.put_line('status anterior: '|| :old.status_id);
    dbms_output.put_line('status nuevo: '|| :new.status_id);
    dbms_output.put_line('insertando en historico, pedido_id: '
    || v_pedido_id ||', status_id: ' || v_status_id
    ||', fecha: '|| v_fecha||', hist_id: '||v_hist_id);
    -- inserta en el histórico
    insert into historico_status_pedido
    (historico_status_pedido_id,fecha,status_id,pedido_id)
    values(v_hist_id,sysdate,v_status_id,v_pedido_id);
    
  end;
  /
show error

