USE �аȨt�� 
GO
CREATE PROCEDURE �Ǧ^�ҵ{����
  @�ҵ{���� cursor VARYING OUTPUT
AS 
SET @�ҵ{����= CURSOR 
   LOCAL STATIC
   FOR SELECT * FROM �ҵ{
OPEN @�ҵ{����
GO
DECLARE @course_cur cursor
EXEC �Ǧ^�ҵ{���� @course_cur OUTPUT
FETCH FROM @course_cur 















