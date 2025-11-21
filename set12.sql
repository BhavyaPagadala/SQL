CREATE TABLE Sailor (
    sid INT PRIMARY KEY,
    sname VARCHAR(30),
    rating INT,
    age INT
);

CREATE TABLE Boat (
    bid INT PRIMARY KEY,
    bname VARCHAR(30),
    color VARCHAR(15)
);

CREATE TABLE Reer (
    sid INT,
    bid INT,
    day varchar(20),
    FOREIGN KEY (sid) REFERENCES Sailor(sid),
    FOREIGN KEY (bid) REFERENCES Boat(bid)
);
INSERT INTO Sailor VALUES (1, 'Bob', 7, 25);
INSERT INTO Sailor VALUES (2, 'Alice', 5, 22);
INSERT INTO Sailor VALUES (3, 'John', 8, 28);
INSERT INTO Sailor VALUES (4, 'Maria', 9, 24);

INSERT INTO Boat VALUES (101, 'Titanic', 'Red');
INSERT INTO Boat VALUES (102, 'Poseidon', 'Green');
INSERT INTO Boat VALUES (103, 'Black Pearl', 'Red');
INSERT INTO Boat VALUES (104, 'Queen Mary', 'Blue');

INSERT INTO Reer VALUES (1, 101, '2025-10-01');
INSERT INTO Reer VALUES (1, 103, '2025-10-02');
INSERT INTO Reer VALUES (2, 102, '2025-10-03');
INSERT INTO Reer VALUES (3, 103, '2025-10-04');
INSERT INTO Reer VALUES (4, 104, '2025-10-05');

SELECT s.*
FROM Sailor s
JOIN Reer r on s.sid=r.sid
where r.bid = 101;

SELECT b.bname
FROM Boat b
JOIN Reer r ON b.bid = r.bid
JOIN Sailor s ON r.sid = s.sid
WHERE s.sname = 'Bob';

SELECT DISTINCT s.sname, s.age
FROM Sailor s
JOIN Reer r ON s.sid = r.sid
JOIN Boat b ON r.bid = b.bid
WHERE b.color = 'Red'
ORDER BY s.age;

SELECT DISTINCT s.sname
FROM Sailor s

JOIN Reer r ON s.sid = r.sid;
CREATE TABLE student (
    sname VARCHAR2(30),
    marks NUMBER(5)
);
INSERT INTO student VALUES ('Bhavya', 85);
INSERT INTO student VALUES ('Sai', 92);
INSERT INTO student VALUES ('Sri', 67);
INSERT INTO student VALUES ('Naga', 55);
COMMIT;
SET SERVEROUTPUT ON;
DECLARE
   v_name   STUDENT.sname%TYPE := 'Bhavya';
   v_marks  STUDENT.marks%TYPE;
BEGIN
   SELECT marks INTO v_marks 
   FROM STUDENT 
   WHERE sname = v_name;
   IF v_marks >= 60 THEN
      DBMS_OUTPUT.PUT_LINE(v_name || ' got First Class with marks: ' || v_marks);
   ELSE
      DBMS_OUTPUT.PUT_LINE(v_name || ' did not get First Class. Marks: ' || v_marks);
   END IF;
EXCEPTION
   WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No record found for student ' || v_name);
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
