USE �аȨt�� 
GO
CREATE FUNCTION fnEmployee
    (@m int, @n int)
  RETURNS @outTable TABLE
   ( �s�� int IDENTITY(1,1),
     �����Ҧr�� char(10), �m�W varchar(12),
     �a�} varchar(30), �q�� char(12),
     �~���b�B money )
BEGIN
  INSERT @outTable
     SELECT �����Ҧr��, �m�W, ����+��D,
            �q��, �~��-�O�I-���|
     FROM ���u
  DELETE @outTable
  WHERE �s�� < @m OR �s�� > @n
  RETURN
END

