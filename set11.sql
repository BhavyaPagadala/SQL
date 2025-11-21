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

INSERT INTO branch_view (sid, sname, branch)
VALUES (101, 'Rahul', 'CSE');

UPDATE branch_view
SET branch = 'ECE'
WHERE sid = 101;

DELETE FROM branch_view
WHERE sid = 101;

DROP VIEW BranchView;

drop table student purge; 
CREATE TABLE student (
    sid   NUMBER,
    name  VARCHAR2(30),
    marks NUMBER
);

-- PL/SQL block
BEGIN
    INSERT INTO student VALUES (1, 'Akhil', 85);
    INSERT INTO student VALUES (2, 'Navya', 90);

    SAVEPOINT sp1;

    INSERT INTO student VALUES (3, 'Ravi', 45);
    INSERT INTO student VALUES (4, 'Sam', 88);

    ROLLBACK TO sp1;

    INSERT INTO student VALUES (5, 'Teja', 76);

    COMMIT;
END;
/






