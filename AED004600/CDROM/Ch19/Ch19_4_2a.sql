USE �аȨt��
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
import pandas as pd

fruits = ["ī�G", "��l", "���l", "���"]
quantities = [15, 33, 45, 55]
s = pd.Series(quantities, index=fruits) 
print(s)
print(s.index)
print(s.values)
' 
GO  


