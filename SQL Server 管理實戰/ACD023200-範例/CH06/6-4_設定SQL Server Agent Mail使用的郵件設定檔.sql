--�d�ҵ{���X6-16�G�s�W��ƦC�A������ɮתŶ����ϥζq�W�L�w�����j�p

/*
�إ߸�ƪ�÷s�W�j�q��ƦC�A������ɮתŶ����ϥζq�W�j
*/
--�إ߸�ƪ�
CREATE TABLE Northwind.dbo.tb1
(CH char(8000))
GO

--�s�W 1000 ����ƦC
INSERT Northwind.dbo.tb1
	VALUES (CAST(SYSDATETIME() AS varchar(50))+'_'+APP_NAME())
GO 1000
