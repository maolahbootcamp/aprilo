USE master
GO
ALTER DATABASE ���~ ADD LOG FILE
 ( NAME = '���~_log2',
   FILENAME = 'D:\Data\���~_log2.ldf',
   SIZE = 5MB,
   MAXSIZE=10MB,
   FILEGROWTH=1MB )

