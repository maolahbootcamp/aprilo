USE �аȨt�� 
GO
CREATE PROCEDURE ���u�d��
   @salary money,
   @tax    money
AS
BEGIN
  IF @salary <= 0
     SET @salary = 30000
  IF @tax <= 0
     SET @tax = 300
  SELECT �����Ҧr��, �m�W, 
      (�~��-���|) AS �ұo�B
  FROM ���u
  WHERE �~�� >= @salary
    AND ���| >= @tax
END
