drop table if exists tbTest
go

select top(100*1024*1024) 
row_number() over(order by (select null)) id, a.name,d.value
into tbTest
from GENERATE_SERIES(1, 100) d,sys.objects a,sys.objects b,sys.objects c

create clustered columnstore index  cciIdx on tbTest
--with (drop_existing=on,maxdop=1)

SELECT
	partitions.partition_number,
	column_store_segments.segment_id,
	column_store_segments.min_data_id,
	column_store_segments.max_data_id,
	column_store_segments.row_count
FROM sys.column_store_segments
INNER JOIN sys.partitions
ON column_store_segments.hobt_id = partitions.hobt_id
INNER JOIN sys.indexes
ON indexes.index_id = partitions.index_id
AND indexes.object_id = partitions.object_id
INNER JOIN sys.tables
ON tables.object_id = indexes.object_id
INNER JOIN sys.columns
ON tables.object_id = columns.object_id
AND column_store_segments.column_id = 
     columns.column_id
WHERE columns.name = 'value'
ORDER BY column_store_segments.segment_id;

set statistics io,time on
/*
��ƪ� 'tbTest'�C���y�p�� 12�A�޿�Ū�� 0�A����Ū�� 0�A�������A��Ū�� 0�AŪ���eŪ�� 0�A�������A��Ū���eŪ�� 0�ALOB �޿�Ū�� 78065�ALOB ����Ū�� 0�ALOB �������A��Ū�� 0�ALOB Ū���eŪ�� 0�ALOB �������A��Ū���eŪ�� 0�C
��ƪ� 'tbTest'�C�Ϭq�|Ū�� 68�A���L�Ϭq 41�C

 SQL Server ���榸��: 
�ACPU �ɶ� = 982 ms�A�g�L�ɶ� = 3760 ms�C
*/
select * from tbTest where value=1

--https://www.brentozar.com/archive/2022/07/columnstore-indexes-are-finally-sorted-in-sql-server-2022/
--�n�Τ@�� cpu�A�B�O����n���A�_�h������ƥ��g�J�A�]�N�L�k���鳣�ƧǤ~�g�J
create clustered columnstore index cciIdx on tbTest order(value)
with (drop_existing=on,maxdop=1)

/*
��ƪ� 'tbTest'�C���y�p�� 12�A�޿�Ū�� 0�A����Ū�� 0�A�������A��Ū�� 0�AŪ���eŪ�� 0�A�������A��Ū���eŪ�� 0�ALOB �޿�Ū�� 15620�ALOB ����Ū�� 0�ALOB �������A��Ū�� 0�ALOB Ū���eŪ�� 0�ALOB �������A��Ū���eŪ�� 0�C
��ƪ� 'tbTest'�C�Ϭq�|Ū�� 12�A���L�Ϭq 88�C

 SQL Server ���榸��: 
�ACPU �ɶ� = 796 ms�A�g�L�ɶ� = 3480 ms�C
*/
select * from tbTest where value=1

