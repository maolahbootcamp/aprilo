USE �аȨt�� 
GO
CREATE PROCEDURE �a�}�d��
   @city char(5) = '�x�_',
   @street varchar(30) = '������'
AS
BEGIN
  SELECT �����Ҧr��, �m�W, 
      (�~��-���|) AS �ұo�B, 
      (����+��D) AS �a�}
  FROM ���u
  WHERE ���� LIKE @city
    AND ��D LIKE @street
END

