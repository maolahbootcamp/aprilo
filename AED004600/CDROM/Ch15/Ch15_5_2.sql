USE �аȨt�� 
GO
DECLARE �ǥ�_��ƫ��� CURSOR
STATIC
FOR SELECT �Ǹ�, �m�W, �q�� FROM �ǥ� 
    WHERE �ʧO = '�k'
DECLARE @id char(5)
DECLARE @name varchar(10)
DECLARE @tel varchar(15)
OPEN �ǥ�_��ƫ���
FETCH NEXT FROM �ǥ�_��ƫ��� INTO @id, @name, @tel
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT @id + ' - ' + @name + ' - ' + @tel
    FETCH NEXT FROM �ǥ�_��ƫ��� INTO @id, @name, @tel
END
CLOSE �ǥ�_��ƫ���
DEALLOCATE �ǥ�_��ƫ���











