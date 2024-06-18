DELIMITER //

CREATE FUNCTION classnew.calculate_tax(amount DECIMAL(10,2), tax_rate DECIMAL(10,2)) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
  DECLARE tax DECIMAL(10,2);
  SET tax = amount * tax_rate;
  RETURN tax;
END//

DELIMITER ;

SELECT classnew.calculate_tax(101, 0.15) AS my_tax;

DROP FUNCTION classnew.calculate_tax;

DELIMITER //

# to standardize variable
CREATE FUNCTION StandardizeGender(gender VARCHAR(50))
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE standardized_gender VARCHAR(10);

    SET gender = LOWER(gender); -- Convert input to lowercase for uniformity

    CASE 
        WHEN gender IN ('m', 'male') THEN
            SET standardized_gender = 'Male';
        WHEN gender IN ('f', 'female') THEN
            SET standardized_gender = 'Female';
        ELSE
            SET standardized_gender = 'Other';
    END CASE;

    RETURN standardized_gender;
END //

DELIMITER ;

select * from class.sales;
select * from class.sales
Where Gender = StandardizeGender(Gender);

select * from class.emp;
# subquery
SELECT * FROM class.emp
WHERE
DepID = (SELECT DepID FROM emp WHERE
EmpID = 100);


DELIMITER //

CREATE PROCEDURE class.CalculateCustomerprice (IN x INT, OUT total DECIMAL(10,2))
BEGIN
  SELECT SUM(Quantity) FROM sales
  Where Unit_price > 13 INTO total;
END //
DELIMITER ;

Call CalculateCustomerprice(@x,@total);
select @total;

CALL CalculateCustomerOrderTotal(@x, @total);
SELECT @total;