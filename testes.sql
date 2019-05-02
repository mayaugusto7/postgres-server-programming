create table accounts(owner text, balance numeric);
insert into accounts values ('Bob',100);
insert into accounts values ('Mary',200);
insert into accounts values ('Fred',500);

--- UPDATE accounts SET balance = balance - 14.00 WHERE owner = 'Bob';
--- UPDATE accounts SET balance = balance + 14.00 WHERE owner = 'Mary';

select * from accounts;

select * from transfer('Bob', 'Mary', 14);
select * from transfer('fred','mary',14.00);
select * from transfer('bob','fred',14.00);
select * from transfer('bob','mary',500.00);
