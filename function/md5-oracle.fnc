create or replace function sfy.md5(passwd in varchar2)
 return varchar2
 is
 retval varchar2(32);
begin
 retval := utl_raw.cast_to_raw(DBMS_OBFUSCATION_TOOLKIT.MD5(INPUT_STRING => passwd)) ;
 return retval;
end;
/
