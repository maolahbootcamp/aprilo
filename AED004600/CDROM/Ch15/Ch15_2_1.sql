USE �аȨt�� 
GO
CREATE FUNCTION fnGetSalary
    (@name varchar(10))
    RETURNS money
AS
BEGIN
  DECLARE @salary money
  SELECT @salary = (�~��-�O�I-���|)
  FROM ���u
  WHERE �m�W=@name
  IF @@ROWCOUNT = 0
    RETURN 0
  RETURN @salary
END



