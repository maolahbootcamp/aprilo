USE �аȨt��
GO
CREATE PROCEDURE �I�s�{��
   @proc_name varchar(30)
AS
PRINT '�}�l�h��: ' + CAST(@@NESTLEVEL AS char)
EXEC @proc_name
PRINT '�����h��: ' + CAST(@@NESTLEVEL AS char)
GO
CREATE PROCEDURE ���յ{��
AS
PRINT '�h��: ' + CAST(@@NESTLEVEL AS char)

