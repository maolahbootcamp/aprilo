USE �аȨt�� 
GO
ALTER FUNCTION fnProfessor
    (@tax money)
    RETURNS TABLE
RETURN (
  SELECT �б�.�б½s��, ���u.�m�W, �б�.��t,
         �б�.¾��, ���u.�~��
  FROM �б� INNER JOIN ���u 
  ON �б�.�����Ҧr�� = ���u.�����Ҧr��
  WHERE ���u.���| >= @tax )
