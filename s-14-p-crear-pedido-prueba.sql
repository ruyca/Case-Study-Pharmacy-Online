-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: valida el procedimiento s-13-p-crear-pedido

set serveroutput on
declare
  v_med_nombre1 varchar2(15):= 'Tempra';
  v_med_nombre2 varchar2(15) := 'Brufen';
  v_med_nombre3 varchar2(15) := 'Capsidol';
begin
  -- Queremos generar un pedido con 3 medicamentos.
  -- Buscamos consultar las presentaciones disponibles para 
  -- dichos medicamentos, asi como su costo.
  dbms_output.put_line('Buscando presentaciones para: ' || v_med_nombre1 
    || ', ' || v_med_nombre2 || ', ' || v_med_nombre3);
  crearPedido(v_med_nombre1, v_med_nombre2, v_med_nombre3);

---commit al final de las operaciones, todo se ejecutó correctamente.
commit;
exception
when others then
--algo salio mal, se aplica rollback
rollback;
end;
/