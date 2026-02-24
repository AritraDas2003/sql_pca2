-- SET SERVEROUTPUT ON;
-- SET VERIFY OFF;

-- ACCEPT rows NUMBER PROMPT 'ENTER the number of rows for the triangle...  ';
-- DECLARE
-- n NUMBER := &rows;
-- BEGIN
--   FOR i IN 1..n LOOP
--     FOR j IN 1..(n-i-1) LOOP
--       DBMS_OUTPUT.PUT(' ');
--     END LOOP;
--     FOR j IN 1..(2*i+1) LOOP
--       DBMS_OUTPUT.PUT('1');

--     END LOOP;
--     DBMS_OUTPUT.NEW_LINE;
--   END LOOP;
-- END;
-- /
SET SERVEROUTPUT ON;

DECLARE
   n NUMBER := 5;
BEGIN
   FOR i IN 1..n LOOP
      DBMS_OUTPUT.PUT_LINE(
         LPAD('*', n + i - 1, ' ')
         || RPAD('*', i - 1, '*')
      );
   END LOOP;
END;
/