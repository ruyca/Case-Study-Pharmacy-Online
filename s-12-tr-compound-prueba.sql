-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 11/12/2023
-- @Descripcion: validacion del trigger s-11-tr-compound.sql

connect cn_proy_admin/pf_admin;

PROMPT --
PROMPT Si un aumento de salario es por encima del 10% para empleados
PROMPT no-gerentes, se levanta un error. 
PROMPT --

@s-11-tr-compound.sql

PROMPT -- Datos de los empleados NO supervisores y su salario promedio 
select empleado_id, nombre, apellido_paterno, apellido_materno, rfc, 
  salario, (
    select avg(salario) from empleado 
      where empleado_supervisor_id is not null) as salario_promedio
  from empleado 
  where empleado_supervisor_id is not null; 
  
PROMPT --
PROMPT Aumentamos el salario de Keyla a 15000 (menos de 10%)
update empleado 
  set salario = 15000
  where empleado_id = 506;

select empleado_id, nombre, apellido_paterno, apellido_materno, rfc, 
  salario
  from empleado
  where empleado_id = 506;

  
PROMPT --
PROMPT Aumentamos el salario de Karina a 25000 (Mas de 10%)
update empleado 
  set salario = 25000
  where empleado_id = 507;

select empleado_id, nombre, apellido_paterno, apellido_materno, rfc, 
  salario
  from empleado
  where empleado_id = 507;


PROMPT Regresando a valores originales
update empleado 
  set salario = 14000
  where empleado_id = 506;
  


  
  
  
  
  
  
  
  
  
  
  