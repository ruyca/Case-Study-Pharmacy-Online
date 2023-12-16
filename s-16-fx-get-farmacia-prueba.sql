-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 12/12/2023
-- @Descripcion: codigo de prueba para s-fx-get-farmacia

set serveroutput on
declare
  v_med_pres_id number := 16;
  v_resultado number;
begin
 
  v_resultado := get_farmacia(v_med_pres_id);
  dbms_output.put_line('RESULTADO -> ' || v_resultado);


---commit al final de las operaciones, todo se ejecutó correctamente.
commit;
exception
when others then
--algo salio mal, se aplica rollback
rollback;
end;
/