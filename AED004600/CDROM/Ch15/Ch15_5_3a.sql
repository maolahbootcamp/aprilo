USE �аȨt�� 
GO
DECLARE ���u_��ƫ��� CURSOR
STATIC
FOR SELECT �m�W FROM ���u
OPEN ���u_��ƫ���
DECLARE @name varchar(10), @inc int
IF @@CURSOR_ROWS > 0
BEGIN
   SET @inc = @@CURSOR_ROWS / 3
   FETCH NEXT FROM ���u_��ƫ��� INTO @name
   WHILE @@FETCH_STATUS = 0
   BEGIN
     PRINT @name
     FETCH RELATIVE @inc FROM ���u_��ƫ���
     INTO @name
   END
END 
CLOSE ���u_��ƫ���
DEALLOCATE ���u_��ƫ���













