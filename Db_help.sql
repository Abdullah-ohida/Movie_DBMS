-- updating a row in a table
-- UPDATE table_name 
-- SET column_name = 'new_value'
-- WHERE id = 1;

-- UPDATE table_name
-- SET column_name = 'new_value',
-- column_name2 = 'new_value'
-- where id = 2;

-- UPDATE account
-- SET opening_balance = 200000
-- WHERE branch_id = 'ACL238';

-- SELECT *
-- FROM account
-- WHERE branch_id = 'ACL238';

-- UPDATE account
-- SET opening_balance = '1000000',
-- account_type = 'Current'
-- WHERE branch_id = 'ACL242'; 

-- to add a column to an existing table
-- ALTER TABLE table_name
-- ADD
-- 	column_name_1 data_type_1 column_constraint_1,
--     column_name_2 data_type_2 column_constraint_2,
--     ...,
--     column_name_n data_type_n column_constraint_n;

--    ALTER TABLE Human
--    ADD age Integer NOT NULL default(0);
--    
--    ALTER TABLE Album
--    ADD Album_ID Integer NOT NULL,

-- THIS IS MY OWN WORKINGS

-- ALTER TABLE games
-- ADD priorAccBalance integer not null default(0);

-- select * from games;

-- TO DELETE A COLUMN FROM A TABLE, USE THE DROP KEYWORD

-- ALTER TABLE games
-- DROP priorAccBalance;

select * from games;

-- ADDING PRIMARY KEY CONSTRAINT
-- ALTER TABLE table_name
-- ADD PRIMARY KEY (Album_ID);

-- ADDING MULTIPLE COLUMNS AS PK

-- ALTER TABLE table_name
-- ADD CONSTRAINT Album_PK  PRIMARY KEY (Album_ID, Year_Release);