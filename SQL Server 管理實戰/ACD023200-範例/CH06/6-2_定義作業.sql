--�d�ҵ{���X6-1�G�d�����O�ؿ��Ҿ֦����@�~�M��
SELECT c.Name as ���O�ؿ� ,j.* 
FROM msdb.dbo.syscategories c
JOIN msdb.dbo.sysjobs j ON  j.category_id =c.category_id
WHERE c.Name='��`���@'



--�d�ҵ{���X6-2�G�إ߰Ѽƪ�
USE [Northwind]
GO
 
DROP TABLE IF EXISTS ETL

CREATE TABLE [dbo].[ETL](
	[Name] [nvarchar](30) NULL,
	[Type] [varchar](10) NULL,
	[Status] [char](1) NULL,
	[UpdDate] [smalldatetime] NULL
)
GO

INSERT ETL
VALUES('Sales Totals by Amount','VIEW','Y',GETDATE())

GO
--�إߥؼи�Ʈw
CREATE Database ReportDB


--�d�ҵ{���X6-3�G���ɫ��O�X

IF EXISTS( SELECT [Status] FROM Northwind.dbo.ETL WHERE NAME='Sales Totals by Amount' AND Status='Y' ) 
BEGIN
	DROP TABLE IF EXISTS [Sales Totals by Amount]
	SELECT * INTO [Sales Totals by Amount]  FROM Northwind.dbo.[Sales Totals by Amount]
END
ELSE 
RAISERROR(N'�ӷ��ݸ�Ʃ|�����b',16,1,N'number',5)


 