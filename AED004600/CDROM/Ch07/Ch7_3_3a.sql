USE �аȨt�� 
GO
CREATE TABLE �ڪ��q�� (
   �q��s��   int   NOT NULL IDENTITY PRIMARY KEY, 
   �q���`��   money NOT NULL,
   �I���`�B   money DEFAULT 0,
   CHECK ( (�q���`�� > 0) AND (�I���`�B > 0) 
            AND (�q���`�� > �I���`�B))
)





