SET SERVEROUTPUT ON;

DECLARE
    CURSOR emp_cursor IS
        SELECT employee_id, first_name, last_name
        FROM employees;

BEGIN
    FOR emp_rec IN emp_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Employee ID: ' || emp_rec.employee_id ||
            ', Name: ' || emp_rec.first_name || ' ' || emp_rec.last_name
        );
    END LOOP;
END;
/
