SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    num        NUMBER := &num;
    original   NUMBER;
    temp       NUMBER;
    reverseNum NUMBER := 0;
    remainder  NUMBER;
BEGIN
    original := num;
    temp := num;

    -- Reverse using FOR loop (no digit counting)
    FOR i IN 1..100 LOOP   -- 100 is safe upper limit
        EXIT WHEN temp = 0;

        remainder := MOD(temp, 10);
        reverseNum := reverseNum * 10 + remainder;
        temp := TRUNC(temp / 10);
    END LOOP;

    IF original = reverseNum THEN
        DBMS_OUTPUT.PUT_LINE(original || ' is a Palindrome number.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(original || ' is NOT a Palindrome number.');
    END IF;
END;
/