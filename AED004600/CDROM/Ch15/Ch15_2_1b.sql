USE �аȨt��
GO
CREATE FUNCTION fnFactorial
    (@number int)
    RETURNS int
AS
BEGIN
  DECLARE @level int
  IF @number <= 1
    SET @level = 1
  ELSE
    SET @level = @number * dbo.fnFactorial( @number-1) 
  RETURN @level
END
GO
PRINT '5!���� = ' + CONVERT(varchar, dbo.fnFactorial(5))
