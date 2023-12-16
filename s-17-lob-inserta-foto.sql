


/*
Crea la tabla cliente-foto
*/

CREATE OR REPLACE PROCEDURE ReadTxtFileAndInsertBlob(
  p_filename IN VARCHAR2,
  p_blob_column OUT NOCOPY BLOB
)
IS
  v_bfile BFILE;
  v_dest_offset NUMBER := 1;
  v_src_offset NUMBER := 1;
  v_lang_context NUMBER := DBMS_LOB.DEFAULT_LANG_CTX;
  v_warning NUMBER;
BEGIN
  -- Create a BFILE pointing to the text file in the directory
  v_bfile := BFILENAME('txt_files', p_filename);

  -- Check if the file exists and is not open
  IF DBMS_LOB.FILEEXISTS(v_bfile) = 1 AND NOT DBMS_LOB.ISOPEN(v_bfile) = 1 THEN
    DBMS_LOB.OPEN(v_bfile, DBMS_LOB.LOB_READONLY);
  ELSE
    RAISE_APPLICATION_ERROR(-20001, 'File ' || p_filename || ' does not exist or is open.');
  END IF;

  -- Initialize the BLOB
  DBMS_LOB.CREATETEMPORARY(p_blob_column, TRUE);

  -- Load data from BFILE to BLOB
  DBMS_LOB.LOADBLOBFROMFILE(
    dest_lob      => p_blob_column,
    src_bfile     => v_bfile,
    amount        => DBMS_LOB.GETLENGTH(v_bfile),
    dest_offset   => v_dest_offset,
    src_offset    => v_src_offset,
    bfile_csid    => DBMS_LOB.DEFAULT_CSID,
    lang_context  => v_lang_context,
    warning       => v_warning
  );

  -- Close the BFILE
  DBMS_LOB.CLOSE(v_bfile);
END ReadTxtFileAndInsertBlob;
/


