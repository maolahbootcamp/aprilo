USE �аȨt�� 
GO
CREATE TRIGGER �ˬd�W�Ҽ�
ON �Z�� 
AFTER INSERT
AS 
BEGIN
  IF ( SELECT COUNT(�Ǹ�) FROM �Z��
      WHERE �Ǹ� = (
        SELECT �Ǹ� FROM Inserted)
     ) > 3
  BEGIN
     RAISERROR('�w�g�פӦh�ҵ{!',1,1)
     ROLLBACK
  END 
END


