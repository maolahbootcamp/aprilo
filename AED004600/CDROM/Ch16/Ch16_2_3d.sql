USE �аȨt��
GO
CREATE TRIGGER ���u�޲z
ON ���u 
AFTER DELETE, UPDATE
AS 
IF EXISTS (SELECT * FROM �ǥ�
           WHERE �m�W = (
          SELECT �m�W FROM Deleted))
BEGIN
  RAISERROR('���X�k�m�W!',1,1)
  ROLLBACK TRAN
END
