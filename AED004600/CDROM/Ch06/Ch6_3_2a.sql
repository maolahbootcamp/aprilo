USE master
GO
CREATE DATABASE �Ǯ�
ON PRIMARY
  ( NAME='�Ǯ�',
    FILENAME= 'D:\Data\�Ǯ�.mdf',
    SIZE=8MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB )
LOG ON
  ( NAME='�Ǯ�_log',
    FILENAME = 'D:\Data\�Ǯ�_log.ldf',
    SIZE=1MB,
    MAXSIZE=10MB,
    FILEGROWTH=10% )
