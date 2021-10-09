CREATE TABLE Task (
    Id serial PRIMARY KEY,
    Name VARCHAR(50) UNIQUE not null,
    Description VARCHAR(255) null
);
CREATE TABLE Operant (
    Id serial PRIMARY KEY,
    Name VARCHAR(50) UNIQUE not null,
    Password VARCHAR(50) not null,
    Description VARCHAR(255) null
);
CREATE TABLE Schedule (
    Id serial PRIMARY KEY,
    Date date not null, 
    TimeStart time not null,
    TimeFinish time not null,
    TaskId serial not null, 
    UserId serial not null
);