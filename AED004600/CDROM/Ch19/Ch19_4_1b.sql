USE �аȨt��
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
OutputDataSet = InputDataSet
', 
@input_data_1 = N'SELECT �ҵ{�s��, dbo.UnicodeString(�W��) AS �W��, �Ǥ� FROM �ҵ{'
WITH RESULT SETS (([�ҵ{�s��] char(5) NOT NULL, [�W��] nvarchar(30), [�Ǥ�] int));
GO  


