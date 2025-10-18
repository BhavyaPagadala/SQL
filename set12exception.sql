-- Create the student table first (if not already created)
CREATE TABLE student (
    roll_no NUMBER(5),
    name VARCHAR2(30),
    marks NUMBER(5)
);

-- Insert sample data
INSERT INTO student VALUES (101, 'Bhavya', 85);
INSERT INTO student VALUES (102, 'Sai', 92);
INSERT INTO student VALUES (103, 'Sri', 67);
INSERT INTO student VALUES (104, 'Naga', 55);
COMMIT;

-- PL/SQL block to display students who secured First Class
SET SERVEROUTPUT ON;

DECLARE
    -- Declaration section
    v_roll_no student.roll_no%TYPE;
    v_name student.name%TYPE;
    v_marks student.marks%TYPE;

    -- Cursor to select first-class students (marks >= 60)
    CURSOR first_class_cur IS
        SELECT roll_no, name, marks
        FROM student
        WHERE marks >= 60;

    -- Variable to count number of rows fetched
    v_count NUMBER := 0;
    
BEGIN
    -- Executable section
    FOR rec IN first_class_cur LOOP
        DBMS_OUTPUT.PUT_LINE('Roll No: ' || rec.roll_no ||
                             ', Name: ' || rec.name ||
                             ', Marks: ' || rec.marks);
        v_count := v_count + 1;
    END LOOP;

    -- If no records found, raise an exception
    IF v_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No students found with First Class marks!');
    END IF;

EXCEPTION
    -- Exception handling section
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/