USE �аȨt�� 
GO
DECLARE �ǥ�_��ƫ���_KEYSET CURSOR
KEYSET
FOR SELECT �Ǹ�, �m�W, �q�� FROM �ǥ� 
    WHERE �ʧO = '�k'
OPEN �ǥ�_��ƫ���_KEYSET
DECLARE @id char(5)
DECLARE @name varchar(10)
DECLARE @tel varchar(15)
FETCH FIRST FROM �ǥ�_��ƫ���_KEYSET 
INTO @id, @name, @tel
WHILE @@FETCH_STATUS <> -1
BEGIN
    IF @@FETCH_STATUS = -2
         PRINT 'Missing Record.'
    PRINT @id + ' - ' + @name + ' - ' + @tel
    FETCH NEXT FROM �ǥ�_��ƫ���_KEYSET
    INTO @id, @name, @tel
END
CLOSE �ǥ�_��ƫ���_KEYSET
DEALLOCATE �ǥ�_��ƫ���_KEYSET












