USE �аȨt�� 
GO
CREATE TABLE ������ (
   ������s��  int    NOT NULL IDENTITY PRIMARY KEY, 
   ���~�s��    char(4)  NOT NULL,
   �`��        decimal(5, 1) NOT NULL,
   �ƶq        int       NOT NULL DEFAULT 1,
   �������    AS  �`�� / �ƶq
)


