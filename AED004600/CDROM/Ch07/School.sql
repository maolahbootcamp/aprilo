USE master
GO
CREATE DATABASE �аȨt��
ON PRIMARY
  ( NAME='�аȨt��',
    FILENAME= 'D:\Data\�аȨt��.mdf',
    SIZE=8MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB ),
FILEGROUP �аȨt��_�s��
  ( NAME = '�аȨt��_�s��_11',
    FILENAME = 'D:\Data\�аȨt��_�s��_11.ndf',
    SIZE = 2MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB ),
  ( NAME = '�аȨt��_�s��_12',
    FILENAME = 'D:\Data\�аȨt��_�s��_12.ndf',
    SIZE = 2MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB )
LOG ON
  ( NAME='�аȨt��_log',
    FILENAME = 'D:\Data\�аȨt��_log.ldf',
    SIZE=1MB,
    MAXSIZE=10MB,
    FILEGROWTH=10% )
