USE �аȨt�� 
GO
BEGIN TRAN
INSERT INTO ���u 
VALUES ('Y123456789','���w��','�x�_','���K��',
        '02-11122111', 60000, 4000, 1000)
IF @@ERROR = 0
  BEGIN
    INSERT INTO �б� 
    VALUES ('I014','���v','EE', 'Y123456789')
    IF @@ERROR = 0
       COMMIT TRAN
    ELSE
       ROLLBACK TRAN
  END
ELSE
  ROLLBACK TRAN
















