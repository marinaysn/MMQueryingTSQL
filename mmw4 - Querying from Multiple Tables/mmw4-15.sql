----4-15. Comparing Two Tables

-----------------------------
    SELECT *,
        COUNT(*) DupeCount,
        'Password' TableName
    FROM Person.Password P
    GROUP BY BusinessEntityID,
PasswordHash,
PasswordSalt,
rowguid,
ModifiedDate
    HAVING NOT EXISTS ( SELECT *,
        COUNT(*)
    FROM Person.PasswordCopy PC
    GROUP BY BusinessEntityID,
PasswordHash,
PasswordSalt,
rowguid,
ModifiedDate
    HAVING PC.BusinessEntityID = P.BusinessEntityID
        AND PC.PasswordHash = P.PasswordHash
        AND PC.PasswordSalt = P.PasswordSalt
        AND PC.rowguid = P.rowguid
        AND PC.ModifiedDate = P.ModifiedDate
        AND COUNT(*) = COUNT(ALL P.BusinessEntityID) )
UNION
    SELECT *,
        COUNT(*) DupeCount,
        'PasswordCopy' TableName
    FROM Person.PasswordCopy PC
    GROUP BY BusinessEntityID,
PasswordHash,
PasswordSalt,
rowguid,
ModifiedDate
    HAVING NOT EXISTS ( SELECT *,
        COUNT(*)
    FROM Person.Password P
    GROUP BY BusinessEntityID,
PasswordHash,
PasswordSalt,
rowguid,
ModifiedDate
    HAVING PC.BusinessEntityID = P.BusinessEntityID
        AND PC.PasswordHash = P.PasswordHash
        AND PC.PasswordSalt = P.PasswordSalt
        AND PC.rowguid = P.rowguid
        AND PC.ModifiedDate = P.ModifiedDate
        AND COUNT(*) = COUNT(ALL PC.BusinessEntityID) );


----------------------------------------- Present the data

SELECT *
INTO Person.PasswordCopy
FROM Person.Password;
-----------------------------

    





