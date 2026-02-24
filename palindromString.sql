SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    str      VARCHAR2(100) := '&str';
    len      NUMBER;
    isPal    BOOLEAN := TRUE;
BEGIN
    len := LENGTH(str);

    -- Compare characters from start and end
    FOR i IN 1 .. TRUNC(len / 2) LOOP
        IF SUBSTR(str, i, 1) != SUBSTR(str, len - i + 1, 1) THEN
            isPal := FALSE;
            EXIT;
        END IF;
    END LOOP;

    IF isPal THEN
        DBMS_OUTPUT.PUT_LINE(str || ' is a Palindrome string.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(str || ' is NOT a Palindrome string.');
    END IF;
END;
/