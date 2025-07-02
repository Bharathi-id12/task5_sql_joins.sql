# task5_sql_joins.sql


 Output Results for SQL Joins


🔹 1. INNER JOIN Output

> Shows only customers who have matching orders



CustomerName	Product

Alice	Laptop
Alice	Mouse
Bob	Keyboard



🔹 2. LEFT JOIN Output

> Shows all customers and their orders (if any). Unmatched orders are shown as NULL.



CustomerName	Product

Alice	Laptop
Alice	Mouse
Bob	Keyboard
Charlie	NULL
David	NULL



🔹 3. RIGHT JOIN Output

> Shows all orders and their customers (if any). Unmatched customers are shown as NULL.



CustomerName	Product

Alice	Laptop
Alice	Mouse
Bob	Keyboard
NULL	Monitor



🔹 4. FULL JOIN Output (Simulated using UNION)

> Combines results of LEFT and RIGHT joins — all customers and all orders, including unmatched from both sides.



CustomerName	Product

Alice	Laptop
Alice	Mouse
Bob	Keyboard
Charlie	NULL
David	NULL
NULL	Monitor



