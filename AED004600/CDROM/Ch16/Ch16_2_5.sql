USE �аȨt��
GO
CREATE TRIGGER ��s�ˬd
ON �б� 
AFTER UPDATE
AS 
DECLARE @count int
SET @count = 0
IF UPDATE(¾��)
BEGIN
   PRINT '��s¾�����!'
   SET @count = @count + 1
END 
IF UPDATE(��t)
BEGIN
   PRINT '��s��t���!'
   SET @count = @count + 1
END
IF @count > 0
BEGIN
  PRINT '��s [' + CONVERT(varchar, @count) +
        '] �����!'
  ROLLBACK TRAN
END 






