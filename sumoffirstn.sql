DECLARE
    n NUMBER;          -- To store the input number
    sum_n NUMBER := 0; -- To store the sum
BEGIN
    -- Input the value of n
    n := &Enter_the_value_of_n;
    
    -- Calculate the sum using a loop
    FOR i IN 1..n LOOP
        sum_n := sum_n + i;
    END LOOP;
    
    -- Display the result
    DBMS_OUTPUT.PUT_LINE('Sum of first ' || n || ' natural numbers is: ' || sum_n);
END;
/