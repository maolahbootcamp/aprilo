USE �аȨt��
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
MyOutput = MyInput
', 
@input_data_1_name = N'MyInput',
@input_data_1 = N'SELECT Count(*) FROM �ǥ�',
@output_data_1_name = N'MyOutput'
WITH RESULT SETS (([�ǥͼ�] int));
GO  


