CREATE TRIGGER �s�W�ǥͭ��u�O��
ON �ǥͭ��u_�˵� 
INSTEAD OF INSERT
AS 
DECLARE @rowCount int
SELECt @rowCount = COUNT(*) FROM Inserted
IF @rowCount = 1
  BEGIN
    INSERT �ǥ�
    SELECT �Ǹ�, �m�W, �ʧO, 
           �q��, �ͤ�
    FROM Inserted
    INSERT ���u
    SELECT �����Ҧr��, �m�W, ����, ��D,
           �q��, �~��, �O�I, ���|
    FROM Inserted
    PRINT '�s�W�ⵧ�O��!'
  END
ELSE
  RAISERROR('���~: �u���\��s�W�@���O��.',1,1)




