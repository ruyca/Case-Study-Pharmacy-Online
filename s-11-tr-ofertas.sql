-- @Autores: Ruy Cabello @ruyca, Carolina Sotelo @carolinanolso
-- @Fehca creacion: 10/12/2023
-- @Descripcion: creacion de un trigger que verifica si medicamento_pres esta 
--               en descuento 

connect cn_proy_admin/pf_admin;

PROMPT creando una tabla de ofertas y su secuencia
drop table ofertas cascade constraints;
drop sequence ofertas_seq;

create sequence ofertas_seq
  start with 1
  increment by 1
  maxvalue 100
  nominvalue
  nocycle;

create table ofertas(
  oferta_id number(10,0), 
  med_pres_id number(10,0) not null,
  descuento number(4,1) not null, 
  precio_actual number(10,0) not null,
  precio_anterior number(10,0) not null,
  constraint oferta_pk primary key(oferta_id),
  constraint oferta_medicamento_presentacion_fk foreign key(med_pres_id)
    references medicamento_presentacion(med_pres_id)
);

------
create or replace trigger oferta_trigger
  after update
  of costo_unitario on medicamento_presentacion
  for each row
  declare
    v_descuento number(5,2);
    v_oferta_id ofertas.oferta_id%type;
  begin 
    select ofertas_seq.nextval into v_oferta_id from dual;
    if (:new.costo_unitario < :old.costo_unitario) then
      v_descuento := round(((:old.costo_unitario - :new.costo_unitario)*100)/(:old.costo_unitario),2);
      insert into ofertas values(v_oferta_id, :new.med_pres_id, v_descuento, :new.costo_unitario, :old.costo_unitario);
    end if;
end oferta_trigger;
/
show errors
  












