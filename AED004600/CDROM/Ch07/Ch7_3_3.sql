USE �аȨt�� 
GO
CREATE TABLE �q�� (
   �q��s��   int   NOT NULL IDENTITY PRIMARY KEY, 
   �q���`��   money NOT NULL 
       CONSTRAINT �q���`��_�������
       CHECK (�q���`�� > 0),
   �I���`�B   money DEFAULT 0
       CHECK (�I���`�B > 0)
)




