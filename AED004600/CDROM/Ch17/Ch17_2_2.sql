USE �аȨt�� 
GO
SELECT * INTO �Z�ųƥ� 
FROM �Z��
GO
BEGIN TRAN
DELETE �Z�ųƥ�
WHERE �Ǹ� = 'S001'
IF @@ROWCOUNT > 5
  BEGIN
    ROLLBACK TRAN
    PRINT '�^�_�R���ާ@!'
  END
ELSE
  BEGIN
    DELETE �ǥͳƥ�
    WHERE �Ǹ� = 'S001'
    COMMIT TRAN
    PRINT '�{�i�R���ާ@!'
  END

















