USE �аȨt�� 
GO
CREATE PROCEDURE �s�W�ҵ{
   @c_no char(5),
   @title  varchar(30),
   @credits int
AS
BEGIN
  DECLARE @errorNo int
  INSERT INTO �ҵ{ 
  VALUES (@c_no, @title, @credits)
  SET @errorNo = @@ERROR
  IF @errorNo <> 0
  BEGIN
    IF @errorNo = 2627
       PRINT '���~! ���Ư�����!'
    ELSE
       PRINT '���~! �������~�o��!'
    RETURN @errorNO
  END
END

