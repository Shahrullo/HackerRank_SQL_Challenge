SET @i:=0;
SELECT REPEAT('* ', @i := @i + 1)
FROM Information_schema.tables
WHERE @i < 20;