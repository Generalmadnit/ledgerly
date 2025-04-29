-- To alter the table
-- alter table transactions add column expense_type varchar(30);

-- New schema
-- create table transactions(
-- 	uid integer generated always as identity primary key,
-- 	transaction_type varchar(30),
-- 	recipient varchar(30),
-- 	expense_type varchar(30),
-- 	amount integer,
-- 	remarks varchar(30),
-- 	paid_date Date,
-- 	date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- Inserting query (C)
-- insert into transactions
-- (transaction_type, recipient, expense_type, amount, remarks, paid_date)
-- values('Debited','Ratnadeep','Necessities',758,'Soaps & detergents','2025-05-01');

-- To view all the rows in table (R)
select * from transactions order by uid;

-- Updating a row (U)
-- update transactions
-- set uid = 1
-- where uid = 2;

-- To delete a transaction (D)
-- delete from transactions where uid = 1;
-- To drop table
-- drop table transactions;

-- To get overall Debited amount
-- SELECT SUM(AMOUNT) FROM TRANSACTIONS WHERE TRANSACTION_TYPE = 'Debited';

-- To get overall Credited amount
-- SELECT SUM(AMOUNT) FROM TRANSACTIONS WHERE TRANSACTION_TYPE = 'Credited';

-- Query to get balance
-- SELECT
-- SUM(CASE WHEN TRANSACTION_TYPE = 'Credited' THEN AMOUNT ELSE 0 END) -
-- SUM(CASE WHEN TRANSACTION_TYPE = 'Debited' THEN AMOUNT ELSE 0 END) AS BALANCE
-- FROM TRANSACTIONS;

-- delete from transactions where transaction_type = 'Debited';

-- COPY transactions(transaction_type, recipient, expense_type, amount, remarks, paid_date)
-- FROM 'C:/path/filename.csv'
-- DELIMITER ','
-- CSV HEADER;