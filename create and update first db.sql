CREATE TABLE accounts (
    id serial PRIMARY KEY,
    name VARCHAR(50) UNIQUE,
    goods VARCHAR(100),
    price Numeric 
);


INSERT INTO accounts (name, goods, price) VALUES ('John', 'banana', 20);
INSERT INTO accounts (name, goods, price) VALUES ('Mike', 'banana', 30);
INSERT INTO accounts (name, goods, price) VALUES ('Bill', 'apple', 10);
INSERT INTO accounts (name, goods, price) VALUES ('Sara', 'banana', 30);
INSERT INTO accounts (name, goods, price) VALUES ('Zane', 'lemon', 60);
INSERT INTO accounts (name, goods, price) VALUES ('Ilze', 'apple', 5);
INSERT INTO accounts (name, goods, price) VALUES ('Jan', 'mango', 70);
INSERT INTO accounts (name, goods, price) VALUES ('Olav', 'lemon', 3);
INSERT INTO accounts (name, goods, price) VALUES ('Sintia', 'apple', 17);
INSERT INTO accounts (name, goods, price) VALUES ('Arno', 'lemon', 33);
INSERT INTO accounts (name, goods, price) VALUES ('Jozef', 'banana', 40);
INSERT INTO accounts (name, goods, price) VALUES ('Olga', 'mango', 6);
INSERT INTO accounts (name, goods, price) VALUES ('Ilza', 'apple', 5);
INSERT INTO accounts (name, goods, price) VALUES ('Janina', 'banana', 80);
INSERT INTO accounts (name, goods, price) VALUES ('Gerbert', 'lemon', 5);
INSERT INTO accounts (name, goods, price) VALUES ('Zana', 'apple', 1);
INSERT INTO accounts (name, goods, price) VALUES ('Daniil', 'lemon', 34);
INSERT INTO accounts (name, goods, price) VALUES ('Gerich', 'banana', 47);
INSERT INTO accounts (name, goods, price) VALUES ('Ula', 'mango', 1);
