USE master
GO
CREATE DATABASE �N�z���~
ON PRIMARY
  ( NAME='�N�z���~',
    FILENAME= 'D:\Data\�N�z���~.mdf',
    SIZE=8MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB ),
FILEGROUP �N�z���~_�s��
  ( NAME = '�N�z���~_�s��_11',
    FILENAME = 'D:\Data\�N�z���~_�s��_11.ndf',
    SIZE = 2MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB ),
  ( NAME = '�N�z���~_�s��_12',
    FILENAME = 'D:\Data\�N�z���~_�s��_12.ndf',
    SIZE = 2MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB )
LOG ON
  ( NAME='�N�z���~_log',
    FILENAME = 'D:\Data\�N�z���~_log.ldf',
    SIZE=1MB,
    MAXSIZE=10MB,
    FILEGROWTH=10% )
