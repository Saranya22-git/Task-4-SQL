# 🗂️Aggregate Functions and Grouping
In this **`readme.md`** file we cover essential SQL `Aggregate Functions`and `Grouping`functions.
````markdown

🗂️ Table Used

A simple `student_marks` table is used for all examples.
```sql
CREATE TABLE student_marks(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
english INT,
computer INT,
total_marks_obtained INT
);
 
INSERT INTO student_marks
VALUES (111,"Sonam",78,67,145),
     (112,"Tara",45,89,134),
     (113,"Sakshi",97,95,192),
     (114,"Kapoor",69,76,145),
     (115,"Rahul",59,90,149);
````
### Sample Data
| student_id |  student_name | english | computer | total_marks_obtained |
|------------|---------------|---------|----------|----------------------|
|     111    |      Sonam    |  78     |    67    |         145          |
|     112    |       Tara    |  45     |    89    |         134          |
|     113    |     Sakshi    |  97     |    95    |         192          |
|     114    |     Kapoor    |  69     |    76    |         145          |
|     115    |      Rahul    |  59     |    90    |         149          |

## 📋**Aggregate Functions**
The Aggregate Functions are `SUM`,`COUNT`,`AVERAGE`.

🔹Aggregate functions in SQL are used to perform calculations on a set of values and return a single summarizing value.
 ### `COUNT`      
  🔹Counts the number of rows in a dataset or a specific column.
 #### **Syntax**
 ```sql
SELECT COUNT(column_name) 
FROM table_name;
````
#### **For Example**
    SELECT COUNT(english)
    FROM student_marks;
### `SUM`
 🔹The `SUM()` function returns the sum of all values. 
#### **Syntax**
```sql
SELECT SUM(column_name)
FROM table_name;
```
#### **For Example**
    SELECT SUM(computer)
    FROM student_marks;
### `AVERAGE`
 🔹The `AVG()` function returns the average values in a set.
#### **Syntax**
```sql
SELECT AVG(column_name)
FROM table_name;
```
#### **For Example**
    SELECT AVG(computer)
    FROM student_marks;
## 📋**GROUP BY CLAUSE**
🔹Aggregate all rows by a specific column often used with aggregate functions.
#### **Syntax**
```sql
SELECT aggregate_function(column_name1),column_name2
FROM table_name
GROUP BY column_name2;
```
#### **For Example**
    SELECT SUM(computer),total_marks_obtained
    FROM student_marks
    GROUP BY total_marks_obtained;
## 📋HAVING CLAUSE
🔹The `HAVING` clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

🔹To specify a condition for filtering groups, you use a `HAVING` clause.
#### **Syntax**
```sql
SELECT aggregate_function (column_name),column_name
FROM table_name
GROUP BY column_name
HAVING condition;
```
#### **For Example**
    SELECT COUNT(computer),total_marks_obtained
    FROM student_marks
    GROUP BY total_marks_obtained
    HAVING COUNT(computer)>1;







  

