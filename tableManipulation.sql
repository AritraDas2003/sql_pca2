
-- CREATE TABLE EMPLOYEE (
--     E_NAME  VARCHAR2(20),
--     E_ID    NUMBER PRIMARY KEY,
--     SALARY  NUMBER
-- );

-- INSERT INTO EMPLOYEE VALUES ('RAJU',   1, 12000);
-- INSERT INTO EMPLOYEE VALUES ('RAJ',    2, 10000);
-- INSERT INTO EMPLOYEE VALUES ('ANIL',   3, 15000);
-- INSERT INTO EMPLOYEE VALUES ('AMAL',   4, 13000);
-- INSERT INTO EMPLOYEE VALUES ('BIMAL',  5, 10000);
-- INSERT INTO EMPLOYEE VALUES ('BIPLAB', 6, 16000);
-- INSERT INTO EMPLOYEE VALUES ('BUBU',   7, 20000);

-- COMMIT;


SET SERVEROUTPUT ON;

DECLARE
    v_third_lowest  NUMBER;
    v_second_lowest NUMBER;
    v_lowest        NUMBER;
BEGIN

    -- Find 3rd lowest DISTINCT salary
-- Find 3rd lowest salary safely
SELECT MIN(salary)
INTO v_third_lowest
FROM employee
WHERE salary >
      (SELECT MIN(salary)
       FROM employee
       WHERE salary >
             (SELECT MIN(salary) FROM employee));

    DBMS_OUTPUT.PUT_LINE('3rd Lowest Salary = ' || v_third_lowest);

    -- Find lowest salary
    SELECT MIN(salary)
    INTO v_lowest
    FROM employee;

    -- Find second lowest salary
    SELECT MIN(salary)
    INTO v_second_lowest
    FROM employee
    WHERE salary > v_lowest;

    -- Update lowest salary to second lowest salary
    UPDATE employee
    SET salary = v_second_lowest
    WHERE salary = v_lowest;

    DBMS_OUTPUT.PUT_LINE('Lowest salary updated to second lowest salary.');

    COMMIT;

END;
/
