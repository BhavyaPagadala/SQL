-- Create the table first (if not already created)
CREATE TABLE student (
    roll_no NUMBER(5),
    name VARCHAR2(30),
    course VARCHAR2(20),
    marks NUMBER(5)
);

-- PL/SQL block to demonstrate COMMIT, ROLLBACK, and SAVEPOINT
BEGIN
    -- First insertion
    INSERT INTO student VALUES (101, 'Bhavya', 'CSE', 95);
    SAVEPOINT A;  -- Savepoint A created

    -- Second insertion
    INSERT INTO student VALUES (102, 'Sai', 'ECE', 89);
    SAVEPOINT B;  -- Savepoint B created

    -- Third insertion
    INSERT INTO student VALUES (103, 'Sri', 'EEE', 76);
    SAVEPOINT C;  -- Savepoint C created

    -- Rollback to SAVEPOINT B
    ROLLBACK TO B;  
    -- (Now record for roll_no 103 is undone, but 101 and 102 remain)

    -- One more insertion
    INSERT INTO student VALUES (104, 'Naga', 'IT', 88);

    -- Commit all current changes
    COMMIT;  

    DBMS_OUTPUT.PUT_LINE('Transaction completed successfully!');
END;
/