USE �аȨt�� 
GO
CREATE PROCEDURE �~���d��
   @name  varchar(12),
   @salary  money  OUTPUT
AS
BEGIN
  SELECT @salary = �~��
  FROM ���u
  WHERE �m�W = @name
END
