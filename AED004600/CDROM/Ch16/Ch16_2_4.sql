USE �аȨt��
GO
CREATE TRIGGER �s�W�ҵ{�O��
ON �ҵ{ 
INSTEAD OF INSERT
AS 
BEGIN
IF EXISTS (SELECT * FROM �ҵ{
           WHERE �ҵ{�s�� = (
           SELECT �ҵ{�s�� FROM Inserted))
  BEGIN 
    UPDATE �ҵ{
    SET �ҵ{.�W�� = Inserted.�W��,
        �ҵ{.�Ǥ� = Inserted.�Ǥ�
    FROM �ҵ{ JOIN Inserted
    ON �ҵ{.�ҵ{�s�� = Inserted.�ҵ{�s��
    PRINT '��s�@���O��!'
  END
ELSE
  BEGIN
    INSERT �ҵ{
    SELECT * FROM Inserted
    PRINT '�s�W�@���O��!'
  END
END




