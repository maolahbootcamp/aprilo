USE �аȨt��
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
import pandas as pd

s = pd.Series([12, 29, 72,4, 8, 10]) 
print(s)  
' 
GO  


