-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: valida el procedimiento s-13-p-crear-pedido2

set serveroutput on
declare
  v_cliente number := 1006;
  
  v_med1 number := 11; 
  v_cant1 number := 5;
  
  v_med2 number := 3; 
  v_cant2 number := 1; 
  
  v_med3 number := 16;
  v_cant3 number := 5; 
  
begin
  
  crearPedido2(v_cliente, v_med1, v_cant1, v_med2, v_cant2, v_med3, v_cant3);

---commit al final de las operaciones, todo se ejecutó correctamente.
commit;
exception
when others then
--algo salio mal, se aplica rollback
rollback;
end;
/