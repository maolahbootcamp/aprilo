USE �аȨt��
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
import pandas as pd
s =  {"col1": ["Mary"],"col2": ["Joe"],"col3": ["Jason"]}
OutputDataSet = pd.DataFrame(s)
',
@input_data_1 = N''  
WITH RESULT SETS (([���a1] varchar(10),[���a2] varchar(10),
                     [���a3] varchar(10)));    
GO  


