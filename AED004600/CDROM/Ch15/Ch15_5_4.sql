USE �аȨt��
GO 
DECLARE ���u_��ƫ��� CURSOR
LOCAL SCROLL_LOCKS
FOR SELECT �~�� FROM ���u
    WHERE ���u.�m�W 
    NOT IN (SELECT �m�W FROM �ǥ�)
FOR UPDATE OF �~��
OPEN ���u_��ƫ���
DECLARE @salary money
FETCH NEXT FROM ���u_��ƫ��� INTO @salary
WHILE @@FETCH_STATUS = 0
BEGIN
   IF @salary <= 50000
   BEGIN
      SET @salary = @salary * 1.05
      UPDATE ���u
      SET �~�� = @salary
      WHERE CURRENT OF ���u_��ƫ���
   END 
   FETCH NEXT FROM ���u_��ƫ��� INTO @salary
END
CLOSE ���u_��ƫ���
DEALLOCATE ���u_��ƫ���













