-- Active: 1767363723104@@127.0.0.1@3306@dbms_clg
CREATE DATABASE IF NOT EXISTS BOOKSTORE;
-- QUESTION 1
CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Email VARCHAR(50) UNIQUE,
    City VARCHAR(30) NOT NULL
);
-- QUESTION 2
INSERT INTO
    CUSTOMERS (
        `CustomerID`,
        `CustomerName`,
        `Email`,
        `City`
    )
VALUES (
        1,
        "Anita",
        "anita@gmail.com",
        "Mumbai"
    ),
    (
        2,
        "Rahul",
        "rahul@gmail.com",
        "Delhi"
    );
-- QUESTION 3
SELECT
    CustomerName AS Name,
    Email AS EmailAddress,
    City AS Location
FROM CUSTOMERS;
-- QUESTION 4
SELECT * FROM CUSTOMERS WHERE `City` = "Delhi";
-- QUESTION 5
UPDATE CUSTOMERS SET `City` = "Bangalore" WHERE `CustomerID` = 2;
-- QUESTION 6
DELETE FROM CUSTOMERS WHERE `CustomerID` = 1;
-- LAST OUTPUT
SELECT * FROM customers;