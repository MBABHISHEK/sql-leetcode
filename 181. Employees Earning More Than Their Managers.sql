Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| salary      | int     |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
 
Question:
Write a solution to find the employees who earn more than their managers.
Return the result table in any order.
The result format is in the following example.

# Write your MySQL query statement below
SELECT e2.name as Employee
FROM employee e1
INNER JOIN employee e2 ON e1.id=e2.managerID
where
e1.salary<e2.salary
