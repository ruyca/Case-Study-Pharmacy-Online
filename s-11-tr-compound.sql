-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: creacion de trigger que lanza un error en caso de que
--               se aumente el salario de un empleado por mas del 10% del 
--               salario promedio de los empleados. 

set serveroutput on
create or replace trigger aumento_salario_trigger
  for update of salario on empleado
compound trigger
  porcentaje constant number := 0.1;
  salario_prom empleado.salario%type;
  
before statement is
begin 
  select avg(salario) into salario_prom
  from empleado 
  where empleado.empleado_supervisor_id is not null;
end before statement;

after each row is
begin 
  if (:new.salario - :old.salario) > 0 then 
    if (:new.salario - :old.salario) > (salario_prom*porcentaje) then
      Raise_Application_Error(-20000, 'Aumento por encima del 10%');
    else
      dbms_output.put_line('Aumento exitoso');
    end if;
  end if;
end after each row;
end aumento_salario_trigger;
/
show error