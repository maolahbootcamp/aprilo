USE �аȨt�� 
GO
BEGIN TRAN
PRINT 'Outer Transaction = ' + 
      CONVERT(varchar, @@TRANCOUNT)
DELETE �Z�ųƥ�
  BEGIN TRAN
  PRINT 'Inner Transaction = ' + 
  CONVERT(varchar, @@TRANCOUNT)
  DELETE �ǥͳƥ�
  COMMIT TRAN
  PRINT 'Commited Transaction = ' + 
  CONVERT(varchar, @@TRANCOUNT)
ROLLBACK TRAN
PRINT 'Rolled Back Transaction = ' + 
       CONVERT(varchar, @@TRANCOUNT)

















