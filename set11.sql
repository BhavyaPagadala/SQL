CREATE TABLE STUDENTT (
  sid INT PRIMARY KEY,
  sname VARCHAR(50),
  perc DECIMAL(5,2),
  gender CHAR(1),
  branch VARCHAR(50)
);

CREATE VIEW BranchView AS
SELECT sid, sname, branch
FROM STUDENTT;

INSERT INTO STUDENTT VALUES (101, 'Anjali', 85.50, 'F', 'CSE');
INSERT INTO STUDENTT VALUES (102, 'Bharat', 78.20, 'M', 'ECE');
INSERT INTO STUDENTT VALUES (103, 'Charan', 91.00, 'M', 'CSE');
INSERT INTO STUDENTT VALUES (104, 'Deepika', 88.75, 'F', 'MECH');

SELECT * FROM BranchView;

UPDATE STUDENTT
SET branch = 'CIVIL'
WHERE sid = 104;

DELETE FROM STUDENTT
WHERE sid = 102;

DROP VIEW BranchView;

SET SERVEROUTPUT ON;
CREATE TABLE student (
    roll_no NUMBER(5),
    name VARCHAR2(30),
    course VARCHAR2(20),
    marks NUMBER(5)
);
BEGIN
    INSERT INTO student VALUES (101, 'Bhavya', 'CSE', 95);
    SAVEPOINT A;  
    INSERT INTO student VALUES (102, 'Sai', 'ECE', 89);
    SAVEPOINT B;  
    INSERT INTO student VALUES (103, 'Sri', 'EEE', 76);
    SAVEPOINT C;  
    ROLLBACK TO B;  
    INSERT INTO student VALUES (104, 'Naga', 'IT', 88);
    COMMIT;  
    DBMS_OUTPUT.PUT_LINE('Transaction completed successfully!');
END;
/




