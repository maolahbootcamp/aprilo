USE �аȨt�� 
GO
CREATE TABLE �Z�� (
   �б½s��   char(4)  NOT NULL, 
   �ҵ{�s��   char(5)  NOT NULL,
   �Ǹ�       char(4)  NOT NULL
              REFERENCES �ǥ� (�Ǹ�),
   �W�Үɶ�   datetime,
   �Ы�       varchar(8), 
   PRIMARY KEY (�Ǹ�, �б½s��, �ҵ{�s��),
   FOREIGN KEY (�б½s��) REFERENCES �б� (�б½s��),
   FOREIGN KEY (�ҵ{�s��) REFERENCES �ҵ{ (�ҵ{�s��)
)
