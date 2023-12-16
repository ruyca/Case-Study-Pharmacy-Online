

connect sys as sysdba;

create or replace directory TEST_DIR 
  as '/unam-bd/proyecto-final/Case-Study-Pharmacy-Online/tablas_externas';

GRANT READ,WRITE ON DIRECTORY TEST_DIR TO cn_proy_admin;

connect cn_proy_admin/pf_admin;
drop table test_blob;
CREATE TABLE test_blob (id INTEGER,blob_col BLOB);

set serveroutput on
DECLARE
  file_handle UTL_FILE.file_type;
  v_fname     VARCHAR2(20) := 'prueba.txt';
  buffer      VARCHAR2(32767);
  BEGIN
  file_handle := UTL_FILE.fopen('TEST_DIR', v_fname, 'W');
  buffer      := 'Hola profeeee';
  UTL_FILE.put_line(file_handle, buffer, TRUE);
  buffer := 'Ponganos 10 xfa';
 UTL_FILE.put_line(file_handle, buffer, TRUE);
 buffer := 'Saludos desde Ecatepec, EDOMEX';
 UTL_FILE.put_line(file_handle, buffer, TRUE);
UTL_FILE.fclose(file_handle);
END;
/

DECLARE
  v_src_loc BFILE := BFILENAME('TEST_DIR', 'prueba.txt');
  v_amount  INTEGER;
  v_b       BLOB;
  BEGIN
  DBMS_LOB.OPEN(v_src_loc, DBMS_LOB.LOB_READONLY);
  v_amount := DBMS_LOB.GETLENGTH(v_src_loc);
  INSERT INTO test_blob
  VALUES
 (1, EMPTY_BLOB())
 RETURNING blob_col INTO v_b;
 DBMS_LOB.LOADFROMFILE(v_b, v_src_loc, v_amount);
 DBMS_LOB.CLOSE(v_src_loc);
 END;
 /
 
commit;

DECLARE
  v_lob_loc BLOB;
  CURSOR cur IS
  SELECT id, blob_col FROM test_blob;
  v_rec test_blob%ROWTYPE;
  BEGIN
  OPEN cur;
  LOOP
  FETCH cur
  INTO v_rec;
 v_lob_loc := v_rec.blob_col;
  DBMS_OUTPUT.PUT_LINE('The length is: ' ||
                     DBMS_LOB.GETLENGTH(v_lob_loc));
  DBMS_OUTPUT.PUT_LINE('The ID is: ' || v_rec.id);
  DBMS_OUTPUT.PUT_LINE('The blob is read: ' ||
                            UTL_RAW.CAST_TO_VARCHAR2(DBMS_LOB.SUBSTR(v_lob_loc,
                                                                       200,
                                                                      1)));
         EXIT WHEN cur%NOTFOUND;
        END LOOP;
        CLOSE cur;
    END;
  /