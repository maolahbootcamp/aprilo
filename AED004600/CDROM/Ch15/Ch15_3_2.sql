USE �аȨt�� 
GO
CREATE FUNCTION fnVolume
  (@length decimal(5,2),
   @width decimal(5,2),
   @height decimal(5,2))
  RETURNS decimal(15, 4)
BEGIN
 RETURN (@height * @length * @width)
END
GO
CREATE TABLE �]�ˮe�� (
   �e���s�� char(5) NOT NULL PRIMARY KEY,
   �W��     varchar(20),
   ����     decimal(5,2),
   �e��     decimal(5,2),
   ����     decimal(5,2),
   �e�q AS dbo.fnVolume(����, �e��, ����)
)
