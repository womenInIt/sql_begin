Query example (select data):

=> Select all data from table:
SELECT * FROM accounts;

=> Select certain fields:
SELECT id, goods, price FROM accounts;

=> Select certain fields using aliases:
SELECT name as username, goods, price as price_of_goods FROM accounts;

================= Select data with conditions =================

SELECT price FROM accounts WHERE id=2;

SELECT goods FROM accounts WHERE name='Mike';

SELECT name, price FROM accounts WHERE goods='banana';

-----------------------------------------------------------------
SELECT price FROM accounts WHERE id IN(3,1);

SELECT goods FROM accounts WHERE price<20;

================= Agregation functions =================

SELECT AVG(price) FROM accounts;
SELECT MAX(price) FROM accounts;
SELECT MIN(price) FROM accounts;
SELECT SUM(price) FROM accounts;
SELECT COUNT(price) FROM accounts;

SELECT AVG(price) AS average_price FROM accounts;

SELECT COUNT(goods) AS total_items, SUM(price) AS total_price FROM accounts;

+++++++++++++ GROUP BY +++++++++++++++++++

SELECT goods, MAX(price) FROM accounts GROUP BY goods;