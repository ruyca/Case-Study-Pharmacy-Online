


/*
Crea la tabla cliente-foto
*/

connect cn_proy_admin/pf_admin;

drop table cliente_foto; 
drop sequence foto_seq;

create table cliente_foto(
  foto_id number(10,0) constraint cliente_foto_pk primary key, 
  foto CLOB
);
create sequence foto_seq
  start with 100
  increment by 1
  nocycle; 


connect sys as sysdba;
create or replace directory foto_cli 
  as '/unam-bd/proyecto-final/Case-Study-Pharmacy-Online/tablas_externas';
  
grant read on directory foto_cli to cn_proy_admin;

connect cn_proy_admin/pf_admin;

create or replace procedure crea_foto_cliente(
  p_foto_id out number,
  p_nombre_archivo in varchar2) 
is
  v_bfile bfile;
  v_src_offset number := 1;
  v_dest_offset number:= 1;
  v_dest_clob clob;
  v_src_length number;
  v_dest_length number;
  v_lang_context number := dbms_lob.default_lang_ctx;
  v_warning number;
begin
  v_bfile := bfilename('foto_cli',p_nombre_archivo);
  if dbms_lob.fileexists(v_bfile) = 1 and not
    dbms_lob.isopen(v_bfile) = 1 then
    dbms_lob.open(v_bfile,dbms_lob.lob_readonly);
  else
    raise_application_error(-20001,'El archivo '
    ||p_nombre_archivo
    ||' no existe en el directorio foto_cli'
    ||' o el archivo esta abierto');
  end if;
  
  select foto_seq.nextval into p_foto_id
  from dual;
  
  insert into cliente_foto(foto_id,foto)
  values(p_foto_id,empty_clob() );

  select foto into v_dest_clob
  from cliente_foto
  where foto_id = p_foto_id;  

  dbms_lob.loadclobfromfile(
    dest_lob => v_dest_clob,
    src_bfile => v_bfile,
    amount => dbms_lob.getlength(v_bfile),
    dest_offset => v_dest_offset,
    src_offset => v_src_offset,
    bfile_csid => dbms_lob.default_csid,
    lang_context => v_lang_context,
    warning => v_warning
  );
  dbms_lob.close(v_bfile);

  v_src_length := dbms_lob.getlength(v_bfile);
  v_dest_length := dbms_lob.getlength(v_dest_clob);

  if v_src_length = v_dest_length then
    dbms_output.put_line('Escritura correcta, bytes escritos: '
    || v_src_length);
  else
    raise_application_error(-20002,'Error al escribir datos.\n'
    ||' Se esperaba escribir '||v_src_length
    ||' Pero solo se escribio '||v_dest_length);
  end if;
end;
/
show errors

















