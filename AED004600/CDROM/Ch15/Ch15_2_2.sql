USE �аȨt�� 
GO
CREATE FUNCTION fnProfessor
    (@salary money)
    RETURNS TABLE
RETURN (
  SELECT �б�.�б½s��, ���u.�m�W, �б�.��t,
         �б�.¾��, ���u.�~��
  FROM �б� INNER JOIN ���u 
  ON �б�.�����Ҧr�� = ���u.�����Ҧr��
  WHERE ���u.�~�� >= @salary )

