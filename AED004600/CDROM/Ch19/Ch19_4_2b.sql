USE �аȨt��
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
import pandas as pd

products = {"����": ["�~�a","�~�a","�T��","�T��","���","���"],
            "�ө�": ["�a�ֺ�","�j��o","�a�ֺ�","���p�W","�j��o","�a�ֺ�"],
            "����": [11.42,23.50,19.99,15.95,55.75,111.55]}
     
df = pd.DataFrame(products) 
print(df)
' 
GO  


