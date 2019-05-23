--2-1. Executing T-SQL from a File
--opoen command prompt 
--cmd 
--change <serverName>  and <pathToTheScript> values
--run--
sqlcmd -e -S <serverName> -i <pathToTheScript>\createColorTable.sql

