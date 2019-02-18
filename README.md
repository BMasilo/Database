# Database

The aim of this project is to use both SQL and NoSQL databases.


# INSTRUCTIONS FOR sql_queries.sql

Create a database called “Umuzi”
Create the following tables:
    • Customers
    • Employees
    • Orders
    • Payments
    • Products
Create a Primary key for each table with auto-increment (make sure you correctly specify the data types, e.g. the ID field should int).
Create a query that will:

  1. SELECT ALL records from table Customers.
  2. SELECT records only from the name column in the Customers table.
  3. Show the name of the Customer whose CustomerID is 1.
  4. UPDATE the record for CustomerID =1  on the Customer table so that the name is “Lerato Mabitso”.
  5. DELETE the record from the Customers table for customer 2 (CustomerID = 2).
  6. Select all unique values from the table Products.
  7. Return the MAXIMUM payment made on the PAYMENTS table.
  8. Create a query that selects all customers from the "Customers" table, sorted by the "Country" column.
  9. Create a query that selects all Products with a price BETWEEN R100 and R600.
  10. Create a query that selects all fields from "Customers" where country is "Germany" AND city is "Berlin".
  11. Create a query that selects all fields from "Customers" where city is "Cape Town" OR "Durban".
  12. Select all records from Products where the Price is GREATER than R500.
  13. Return the sum of the Amounts on the Payments table.
  14. Count the number of shipped orders in the Orders table.
  15. Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
  16. Using INNER JOIN create a query that selects all Orders with Customer information.
