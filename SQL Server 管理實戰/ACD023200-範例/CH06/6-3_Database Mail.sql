
--�d�ҵ{���X6-4�G�ϥΨt�ιw�s�{�ǡGsp_configure�A�ӱҥ�Database Mail�\��
USE master
GO
--01 �ˬd�O�_���ҥ� Database Mail
SELECT name N'�պA�ﶵ���W��', value N'�w��o�ӿﶵ�ҳ]�w����', value_in_use N'�o�ӿﶵ�ثe���Ī������',  description N'�պA�ﶵ���y�z'  
FROM sys.configurations  
WHERE name='Database Mail XPs' 
GO

--02 �]�w�ҥ� Database Mail�G�ϥ� sp_configure �ӱҥ�  Database Mail
EXEC sp_configure 'show advanced options',1
reconfigure
GO
-- �Y�n�ҰʡA�]�w�� 1�C�Y�n����]�w�� 0
EXEC sp_configure 'Database Mail XPs',1
RECONFIGURE WITH OVERRIDE 




--�d�ҵ{���X6-5�G�d��Database Mail�����]�w

--�d��Database Mail�]�w��
SELECT * FROM msdb.dbo.sysmail_profile
--�d��Database Mail�b��
SELECT * FROM msdb.dbo.sysmail_account
--�d�߳]�w�ɹ������b��
select * from msdb.dbo.sysmail_profileaccount

--�d�ҵ{���X6-6�G�ϥ�sp_send_dbmail�t�ιw�s�{�Ƕǰe�@�ʹq�l�l��

EXEC msdb.dbo.sp_send_dbmail 
@profile_name = 'DBA', --�l��]�w�ɦW��	
@recipients = 'Sandy@localhost.com',
@body = N'�o�O�q�l�l��T�����D��',
@subject =N'�o�O�q�l�l��T�����D���C�p�G�����w�D���A�w�]�ȫK�O�uSQL Server Message�v�C'



--�d�ҵ{���X6-7�G�ϥ�sp_send_dbmail�t�ιw�s�{�ǡA�f�tquery�Ѽ�

--�N�d�ߵ��G�H����H�X
EXEC msdb.dbo.sp_send_dbmail
    @recipients = 'u99@localhost.com',
    @query = N'SELECT CompanyName ���q�W��,ContactName �p���H  
	FROM dbo.Customers
	WHERE Country=''Mexico''' 
  @subject = N'Mexico�Ȥ�';

--�N�d�ߵ��G�H����H�X
EXEC msdb.dbo.sp_send_dbmail
    @recipients = 'u99@localhost.com',
    @query = N'SELECT CompanyName ���q�W��,ContactName �p���H 
	FROM dbo.Customers
	WHERE Country=''Mexico''' ,
    @execute_query_database='Northwind',
	@subject = N'Mexico�Ȥ�',
	@attach_query_result_as_file = 1 ,
	@query_attachment_filename='Mexico�Ȥ�M��.txt',
	@query_result_header=1 ;




--�d�ҵ{���X6-8�G�ϥ� sp_send_dbmail�t�ιw�s�{�ǡA�]�w�ϥ�HTML�榡


-- �ϥ�HTML�榡�Ӷǰe�q�l�l��T��
USE master
GO
DECLARE @m_recipients varchar(max), 
	@m_subject nvarchar(255), @m_body nvarchar(max),
	@m_body_format varchar(20)

SELECT @m_recipients = N'Byron@localhost.com',
	@m_subject = N'�ϥ� Database Mail �ǰe HTML �榡���q�l�l��T��',
	@m_body =N'<p>��J�q�l�l��T�����D�餺�e�G</p> 
             <font color="#0000ff"><strong>�ǰe HTML �榡���q�l�l��T��</strong></font>',
	@m_body_format ='HTML'

EXEC msdb.dbo.sp_send_dbmail
	@recipients = @m_recipients,
	@subject = @m_subject,
	@body = @m_body,
	@body_format = @m_body_format



--�d�ҵ{���X6-9�G�ϥ� T-SQL���z����XHTML�y�k
/*
�ϥ�T-SQL���z����XHTML�榡�Ӷǰe�q�l�l��T���C
�Y�O�䤣���ƮɡA�|�H�ťժ���r�榡�^��
*/
USE Northwind
GO
DECLARE @m_recipients varchar(max), 
	@m_subject nvarchar(255), @m_body nvarchar(max),
	@m_body_format varchar(20)
	
SELECT @m_recipients = N'Byron@localhost.com',
	@m_subject = N'��ƪ���ӡA�ϥ� HTML �榡',
	@m_body_format ='HTML',	
	@m_body = 
		N'<style>'+
		N'  table {   border:1px solid #000;   font-family: �L�n������;   font-size:12px; '+
		+'border:1px solid #000;  border-collapse:collapse;} '+
		N' td {   border:1px solid #000;  padding:5px;} </style>'+
		N'<FONT COLOR="#800000"><H1>France�Ȥ��p����</H1></FONT>' +
		N'<table border="2">' +
		N'<tr style="background-color:#9EC5D8"  ><th>���q�W��</th><th>�p���H</th>' +
		N'<th>¾��</th><th>�s���q��</th>' +
		N'</tr>' +
		CAST ( ( SELECT    td = CompanyName ,       '',
						td = ContactName  ,       '',
						td = ContactTitle    ,       '',
						td = Phone   ,       ''						
				  FROM dbo.Customers Where Country='France'
				  ORDER BY  CompanyName
				  FOR XML PATH('tr'), TYPE 
		) AS NVARCHAR(MAX) ) +
		N'</table>' ;

EXEC msdb.dbo.sp_send_dbmail
	@recipients = @m_recipients,
	@subject = @m_subject,
	@body = @m_body,
	@body_format = @m_body_format



--�d�ҵ{���X6-10�G�I�ssp_send_dbmail�t�ιw�s�{�ǡA�HT-SQL���z����XHTML�y�k�A�[�J�P�_���A�Y�䤣���ƫK�^�ǡG�L�ŦX���󦡪����
/*
�ϥ�T-SQL���z����XHTML�榡�Ӷǰe�q�l�l��T���C
�Y�O�䤣���ƮɡA�|�H�ťժ���r�榡�^��
*/
USE Northwind
GO
CREATE OR ALTER PROC sp_sendCustomerMail @country varchar(20)
AS
DECLARE @m_recipients varchar(max), 
	@m_subject nvarchar(255), @m_body nvarchar(max),
	@m_body_format varchar(20)
IF not exists(SELECT * FROM dbo.Customers Where Country=@country )
	BEGIN
		SELECT @m_recipients = N'Byron@localhost.com',
			@m_subject = N'�Ȥ��p����A�ϥ� HTML �榡�G�L�ŦX���',
			@m_body = N'<p align="center"><font color="#ff0000" size="7"><strong>�L�ŦX���󦡪����</strong></font></p>',
			@m_body_format ='HTML';

		EXEC msdb.dbo.sp_send_dbmail
			@recipients = @m_recipients,
			@subject = @m_subject,
			@body = @m_body,
			@body_format = @m_body_format;
	END
ELSE
	BEGIN	
    SELECT @m_recipients = N'Byron@localhost.com',
	@m_subject = N'�Ȥ��p����A�ϥ� HTML �榡',
	@m_body_format ='HTML',	
	@m_body = 
		N'<style>'+
		N'  table {   border:1px solid #000;   font-family: �L�n������;   font-size:12px; '+
		+'border:1px solid #000;  border-collapse:collapse;} '+
		N' td {   border:1px solid #000;  padding:5px;} </style>'+
		N'<FONT COLOR="#800000"><H1>'+@country+'�Ȥ��p����</H1></FONT>' +
		N'<table border="2">' +
		N'<tr style="background-color:#9EC5D8"  ><th>���q�W��</th><th>�p���H</th>' +
		N'<th>¾��</th><th>�s���q��</th>' +
		N'</tr>' +
		CAST ( ( SELECT    td = CompanyName ,       '',
						td = ContactName  ,       '',
						td = ContactTitle    ,       '',
						td = Phone   ,       ''						
				  FROM dbo.Customers Where Country=@country
				  ORDER BY  CompanyName
				  FOR XML PATH('tr'), TYPE 
		) AS NVARCHAR(MAX) ) +
		N'</table>' ;
	
	EXEC msdb.dbo.sp_send_dbmail
		@recipients = @m_recipients,
		@subject = @m_subject,
		@body = @m_body,
		@body_format = @m_body_format
END
GO

EXEC sp_sendCustomerMail 'Mexico2'
GO



--�d�ҵ{���X6-11�G�ϥΨt�ιw�s�{�ǡGsysmail_help_queue_sp�˵���C������T
EXEC msdb.dbo.sysmail_help_queue_sp;

--�d�ҵ{��6.12�G�ϥ��˵��Gsysmail_event_log
SELECT * FROM msdb.dbo.sysmail_event_log ORDER BY log_id DESC

--�d�ҵ{���X6-13�G�ϥ��˵��Gsysmail_allitems

SELECT recipients,subject,body,send_request_user,sent_date,sent_status
FROM msdb.dbo.sysmail_allitems ORDER BY sent_date DESC

--�d�ҵ{���X6-14�G�ϥΨt�ιw�s�{�ǡGsysmail_delete_mailitems_sp

-- �|�R�� Database Mail �t�Τ����@�Ӥ�H�e���q�l�l��C
DECLARE @Day datetime= DATEADD(MONTH,-1,CURRENT_TIMESTAMP)
EXECUTE msdb.dbo.sysmail_delete_mailitems_sp  @sent_before =@Day;
GO

/*@sent_status �����İѼƬ��Gsent�Bunsent �Mretrying */
-- �R���w�o�e���l��O��
exec sysmail_delete_mailitems_sp @sent_status='sent'
-- �R�����o�e���l��O��
exec sysmail_delete_mailitems_sp @sent_status='unsent'
-- �R�����դ����l��O��
exec sysmail_delete_mailitems_sp @sent_status='retrying'
-- �R���o�e���Ѫ��l��O��
exec sysmail_delete_mailitems_sp @sent_status='failed'


--�ϥ��˵���A�׬d�߹q�l�l����v�O��
SELECT * FROM msdb.dbo.sysmail_allitems



--�d�ҵ{���X6-15�G�ϥΨt�ιw�s�{�ǡGsysmail_delete_log_sp
--�R��1�Ӥ�e��log���
DECLARE @Day DATETIME=DATEADD(MONTH,-1,CURRENT_TIMESTAMP)
EXECUTE msdb.dbo.sysmail_delete_log_sp @logged_before = @Day


--�R��Database Mail�O���������u��T
/*@event_type �����İѼƬ��Gsuccess�Bwarning�Berror �M information */
EXECUTE msdb.dbo.sysmail_delete_log_sp @event_type = 'success' ;  ;
GO
-- �R��ĵ�ܪ��O��
EXECUTE msdb.sysmail_delete_log_sp @event_type = 'warning'
-- �R�����~���O��
EXECUTE msdb.sysmail_delete_log_sp @event_type = 'error'
-- �R����T���O�� 
EXECUTE msdb.sysmail_delete_log_sp @event_type = 'information'
-- �R�� Database Mail �O�������Ҧ��ƥ�C
EXECUTE msdb.dbo.sysmail_delete_log_sp ;
GO
�@
-- �A���˵��R���᪺�O���ɤ��e
SELECT * FROM msdb.dbo.sysmail_event_log 
