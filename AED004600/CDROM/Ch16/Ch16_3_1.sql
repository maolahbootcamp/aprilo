USE �аȨt��
GO
ALTER TRIGGER ��s�ˬd
ON �б� 
AFTER UPDATE
AS 
DECLARE @count int,
        @rank varchar(10),
        @dep varchar(5)
SET @count = 0
IF UPDATE(¾��)
BEGIN
   SELECT @rank = ¾�� FROM Inserted 
   PRINT '��s¾��: ' + @rank
   SET @count = @count + 1
END 
IF UPDATE(��t)
BEGIN
   SELECT @dep = ��t FROM Inserted
   PRINT '��s��t: ' + @dep
   SET @count = @count + 1
END
IF @count > 0
BEGIN
  PRINT '��s [' + CONVERT(varchar, @count) +
        '] �����!'
  ROLLBACK TRAN
END 







