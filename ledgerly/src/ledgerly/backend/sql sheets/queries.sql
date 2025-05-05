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
-- values('Credited','All','Credit',2800,'Movie tickets','2025-05-04');

-- To view all the rows in table (R)
select * from transactions order by uid;

-- Updating a row with integers (U)
-- update transactions
-- set uid = 1
-- where uid = 2;

-- Updating a row with a String (U)
-- UPDATE transactions
-- SET remarks = REPLACE(remarks, 'Kurkura puff cors', 'Kurkure puff corns');

-- To delete a transaction (D)
-- delete from transactions where recipient = 'PVR Cinemas';
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

-- To copy from the file store locally
-- COPY transactions(transaction_type, recipient, expense_type, amount, remarks, paid_date)
-- FROM 'C:/path/transactions.csv'
-- DELIMITER ','
-- CSV HEADER;