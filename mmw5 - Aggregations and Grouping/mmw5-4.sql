----5-4. Detecting Changes in a Table
--
------

-----------------------------



----------------------------------------- Present the data
IF OBJECT_ID('tempdb.dbo.[#Recipe5.4]') IS NOT NULL DROP TABLE [#Recipe5.4];
CREATE TABLE [#Recipe5.4]
(
    StudentID INTEGER,
    Grade INTEGER
);

INSERT INTO [#Recipe5.4]
    (StudentID, Grade)
VALUES
    (1, 100),
    (1, 95)

-----------------------------

    
-----------------------------




-----------------------------

    
-----------------------------




