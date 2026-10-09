SET SERVEROUTPUT ON;

DECLARE
    CURSOR student_cursor IS
        SELECT StudentID
        FROM Students;

BEGIN
    FOR student_rec IN student_cursor LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Student ID: ' || student_rec.StudentID
        );
    END LOOP;
END;
/
