SET SERVEROUTPUT ON;
SET VERIFY OFF;



DECLARE
    lines NUMBER := &lines;
BEGIN
    FOR i IN 1..lines LOOP
        FOR j IN 1..i LOOP
            DBMS_OUTPUT.PUT(j || ' ');
        END LOOP;
        DBMS_OUTPUT.NEW_LINE;
    END LOOP;
END;
/
