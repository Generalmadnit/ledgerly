-- Intial schema
-- create table Transactions(
-- 	amount integer,
-- 	transaction_type varchar(30),
-- 	paid_to varchar(30),
-- 	remarks varchar(30));

-- To view all the rows in table
-- select * from transactions;

-- To alter the table
-- alter table transactions add column expense_type varchar(30);

-- Dropped intial schema
-- drop table transactions;

-- Next schema
-- create table transactions(
-- 	transaction_type varchar(30),
-- 	paid_to varchar(30),
-- 	expense_type varchar(30),
-- 	amount integer,
-- 	remarks varchar(30)	
-- );

-- Sample insert query
-- insert into transactions 
-- (transaction_type, paid_to, expense_type, amount, remarks) 
-- values ('Debited', 'Kaveri Hotel', 'Food', 60, 'Food');

-- Renaming the column name
-- alter table transactions
-- rename column expense_type to category;

-- Adding date
-- alter table transactions
-- add column date Date;

-- Updating a row
-- update transactions
-- set date = '2025-04-13'
-- where paid_to = 'Kaveri Hotel';

-- Updated schema
-- create table transactions(
-- 	uid integer generated always as identity primary key,
-- 	transaction_type varchar(30),
-- 	recipient varchar(30),
-- 	expense_type varchar(30),
-- 	amount integer,
-- 	remarks varchar(30)	
-- );

-- Updated insert query
-- insert into transactions 
-- (transaction_type, recipient, expense_type, amount, remarks) 
-- values ('Debited', 'Kaveri Hotel', 'Food', 60, 'Food');

-- Schema updated
-- ALTER TABLE transactions
-- Add COLUMN paid_date DATE,
-- ADD COLUMN date TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- update transactions
-- set paid_date = '2025-04-14'
-- where uid = 1;