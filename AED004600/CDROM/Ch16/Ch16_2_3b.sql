USE �аȨt��
GO
CREATE TRIGGER �ˬd�Ǥ���
ON �ҵ{ 
AFTER UPDATE
AS 
BEGIN
  DECLARE @new int, @old int
  SELECT @new = �Ǥ� FROM Inserted
  SELECT @old = �Ǥ� FROM Deleted
  IF @old > @new
  BEGIN
     PRINT '�����\��s�Ǥ����!'
     ROLLBACK TRAN
  END 
END
