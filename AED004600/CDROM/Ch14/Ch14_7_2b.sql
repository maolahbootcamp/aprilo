USE �аȨt�� 
GO
SET IDENTITY_INSERT �n�Ȥ� ON
GO
INSERT INTO �n�Ȥ� (�Ȥ�s��, �����Ҧr��, �m�W)
VALUES (NEXT VALUE FOR �s������, 'A333333333' , '���j�w')
GO
SET IDENTITY_INSERT �n�Ȥ� OFF
GO
SET IDENTITY_INSERT �n���u ON
GO
INSERT INTO �n���u (���u�s��, �m�W)
VALUES (NEXT VALUE FOR �s������, '������')
GO
INSERT INTO �n���u (���u�s��, �m�W)
VALUES (NEXT VALUE FOR �s������, '������')
GO
SET IDENTITY_INSERT �n���u OFF
GO
SELECT * FROM �n�Ȥ�
GO
SELECT * FROM �n���u
