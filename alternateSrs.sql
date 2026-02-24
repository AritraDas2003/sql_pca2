
-- 1-2+3-4+5-6+7-8+9...
SET SERVEROUTPUT ON;
SET VERIFY OFF;
DECLARE
    N NUMBER;

    -- I NUMBER;
    RESULT NUMBER := 0;
BEGIN
    N := &N;
    FOR I IN 1..N LOOP
        IF MOD(I,2)=1 THEN
            RESULT := RESULT + I;
            DBMS_OUTPUT.PUT('+' || I);
        ELSE
            RESULT := RESULT - I;
            DBMS_OUTPUT.PUT('-' || I);
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(' = ' || RESULT);
END;
/