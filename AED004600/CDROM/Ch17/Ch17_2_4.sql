USE �аȨt�� 
GO
BEGIN TRAN
  DECLARE @count int
  DELETE �ǥͳƥ� WHERE �Ǹ� = 'S001'
  SAVE TRAN ����x�s�I1
    DELETE �ǥͳƥ� WHERE �Ǹ� = 'S002'
    SAVE TRAN ����x�s�I2
      DELETE �ǥͳƥ� WHERE �Ǹ� = 'S003'
      SELECT @count = COUNT(*) FROM �ǥͳƥ�
      PRINT 'Records: ' + CONVERT(varchar, @count)
    ROLLBACK TRAN ����x�s�I2
    SELECT @count = COUNT(*) FROM �ǥͳƥ�
    PRINT 'Records: ' + CONVERT(varchar, @count)
  ROLLBACK TRAN ����x�s�I1
  SELECT @count = COUNT(*) FROM �ǥͳƥ�
  PRINT 'Records: ' + CONVERT(varchar, @count)
COMMIT TRAN

















