-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: creacion del procedimiento que  

set serveroutput on
create or replace procedure crearPedido2(
  p_cliente_id in number,
  p_med_pres_id1 in number,
  p_cantidad1 in number, 
  p_med_pres_id2 in number default null, 
  p_cantidad2 in number default 1, 
  p_med_pres_id3 in number default null, 
  p_cantidad3 in number default 1)
is
  v_importe_total pedido.importe_total%type;
  
  v_costo_unitario1 medicamento_presentacion.costo_unitario%type;
  v_costo_unitario2 medicamento_presentacion.costo_unitario%type;
  v_costo_unitario3 medicamento_presentacion.costo_unitario%type;
  
  -- ids de detalles_pedido
  v_detalle_id1 detalles_pedido.detalle_id%type;
  v_detalle_id2 detalles_pedido.detalle_id%type;
  v_detalle_id3 detalles_pedido.detalle_id%type;
  
  -- id de pedido generado
  v_pedido_id pedido.pedido_id%type;
  
  -- folio generado aleatoriamente
  v_folio pedido.folio%type;

  -- veces que insertaremos en detalles_pedido
  v_contador number(1,0);
  
  -- que farmacia entregara el med_pres_id
  v_f1 farmacia.farmacia_id%type;
  v_f2 farmacia.farmacia_id%type;
  v_f3 farmacia.farmacia_id%type;
  
begin 
  v_importe_total := 0; 
  v_costo_unitario1 := 0; 
  v_costo_unitario2 := 0;
  v_costo_unitario3 := 0;
  v_contador := 1;
  
  -- seleccionamos el id del pedido y detalle_pedido
  select pedido_seq.nextval into v_pedido_id from dual;  
  select detalle_pedido_seq.nextval into v_detalle_id1 from dual;
  
  -- primer costo unitario
  select costo_unitario into v_costo_unitario1
  from medicamento_presentacion
  where med_pres_id = p_med_pres_id1;
  
  if p_med_pres_id2 is not null then
    select costo_unitario into v_costo_unitario2
    from medicamento_presentacion
    where med_pres_id = p_med_pres_id2;
    v_contador := 2; 
    select detalle_pedido_seq.nextval into v_detalle_id2 from dual;
  end if;
  
  if p_med_pres_id3 is not null then
    select costo_unitario into v_costo_unitario3
    from medicamento_presentacion
    where med_pres_id  = p_med_pres_id3;
    v_contador := 3;
    select detalle_pedido_seq.nextval into v_detalle_id3 from dual;
  end if;
  
  v_importe_total := (p_cantidad1*v_costo_unitario1) + (p_cantidad2*v_costo_unitario2) + (p_cantidad3*v_costo_unitario3);
  dbms_output.put_line('COSTO TOTAL: ' || v_importe_total); 
  
  -- codigo para el folio
  v_folio := generar_folio;
  dbms_output.put_line('FOLIO GENERADO: ' || v_folio);
  
  insert into pedido(pedido_id, fecha_status_actual, folio, fecha_pedido, importe_total, cliente_id, empleado_id, status_id)
    values(v_pedido_id, sysdate, v_folio, sysdate, v_importe_total, p_cliente_id, 510, 1);
    
  for i in 1..v_contador loop
    if i = 1 then
      v_f1 := get_farmacia(p_med_pres_id1);
      insert into detalles_pedido values(v_detalle_id1, v_pedido_id, p_cantidad1, p_med_pres_id1, v_f1);
    end if;
    if i = 2 then
      v_f2 := get_farmacia(p_med_pres_id2);
      insert into detalles_pedido values(v_detalle_id2, v_pedido_id, p_cantidad2, p_med_pres_id2, v_f2);
    end if;
    if i = 3 then
      v_f3 := get_farmacia(p_med_pres_id3);
      insert into detalles_pedido values(v_detalle_id3, v_pedido_id, p_cantidad3, p_med_pres_id3, v_f3);
    end if;
  end loop;
  
  
end crearPedido2;
/
show errors