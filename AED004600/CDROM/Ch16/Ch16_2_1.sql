USE �аȨt�� 
GO
CREATE TRIGGER �s�W�O��
ON �ҵ{ 
FOR INSERT
AS 
BEGIN
  DECLARE @name varchar(30)
  SELECT @name = �W�� FROM Inserted
  PRINT '�s�W�ҵ{: ' + @name
END

