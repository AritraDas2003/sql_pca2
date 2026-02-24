-- Write a program to calculates a 10% bonus for an employee. It shows you how to use := to assign values.

SET SERVEROUTPUT ON;
SET VERIFY OFF;

-- taking user input to store in a temp variable and show a custom message

ACCEPT sal NUMBER PROMPT 'Enter your current salary... '

DECLARE
-- declaring 3 variables for calculation
e_salary NUMBER;
e_bonous NUMBER;
e_total NUMBER;

BEGIN
-- assigning value from the user variable 'sal' to 'e_salary'
e_salary := &sal;
--  checking if salary is less than 10000, if yes then show a message and exit the program
IF (e_salary < 10000) THEN
DBMS_OUTPUT.PUT_LINE ('YOUR SALARY IS LESS THAN 10000, SO YOU ARE NOT ELIGIBLE FOR BONUS');

RETURN; -- this exits the program if the condition is true

END IF;

-- calculatign boous wiich is 10 % 
e_bonous := e_salary * 0.10;

-- total is salaey + bonous
e_total := e_salary + e_bonous;

-- showing everything
DBMS_OUTPUT.PUT_LINE ('YOUR SALARY IS --> ' || e_salary);
DBMS_OUTPUT.PUT_LINE ('YOUR BONUS (AFTER APPLYING 10% OF BASE SALLARY) IS --> ' || e_bonous);
DBMS_OUTPUT.PUT_LINE ('TOTAL SALARY IS --> ' || e_total);

END;
/
