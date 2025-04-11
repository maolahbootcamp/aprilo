USE �аȨt�� 
GO
CREATE FUNCTION fnValidCode
  (@p_no char(5))
  RETURNS bit
BEGIN
  DECLARE @valid bit, @number int
  SET @valid = 0
  IF @p_no LIKE '[A-Z][0-9][0-9][0-9][0-9]'
  BEGIN
    SET @number = CONVERT(int, RIGHT(@p_no, 2))
    IF @number % 7 = 2
      SET @valid = 1
  END 
  RETURN @valid
END
GO
CREATE TABLE �N�P���~ (
   ���~�s�� char(5) NOT NULL PRIMARY KEY,
   �W��     varchar(20),
   �w��     money,
   CHECK (dbo.fnValidCode(���~�s��) = 1)
)
