USE master
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
grade = 78
if grade >= 60:
    print("���Z�ή�!", grade)
else:
    print("���Z���ή�!", grade)
'
GO  


