
mysql>
mysql> USE college;
Database changed
mysql>
mysql> -- 1. Count total students
Query OK, 0 rows affected (0.009 sec)

mysql> SELECT COUNT(*) FROM students;
+----------+
| COUNT(*) |
+----------+
|        4 |
+----------+
1 row in set (0.076 sec)

mysql>
mysql> -- 2. Average age
Query OK, 0 rows affected (0.008 sec)

mysql> SELECT AVG(age) FROM students;
+----------+
| AVG(age) |
+----------+
|  21.0000 |
+----------+
1 row in set (0.012 sec)

mysql>
mysql> -- 3. Sum of ages
Query OK, 0 rows affected (0.008 sec)

mysql> SELECT SUM(age) FROM students;
+----------+
| SUM(age) |
+----------+
|       63 |
+----------+
1 row in set (0.012 sec)

mysql>
mysql> -- 4. Group by course (count students)
Query OK, 0 rows affected (0.008 sec)

mysql> SELECT course, COUNT(*)
    -> FROM students
    -> GROUP BY course;
+--------+----------+
| course | COUNT(*) |
+--------+----------+
| CSE    |        1 |
| ECE    |        1 |
| BTech  |        1 |
| MECH   |        1 |
+--------+----------+
4 rows in set (0.015 sec)

mysql>
mysql> -- 5. Group by course (average age)
Query OK, 0 rows affected (0.007 sec)

mysql> SELECT course, AVG(age)
    -> FROM students
    -> GROUP BY course;
+--------+----------+
| course | AVG(age) |
+--------+----------+
| CSE    |  20.0000 |
| ECE    |  21.0000 |
| BTech  |     NULL |
| MECH   |  22.0000 |
+--------+----------+
4 rows in set (0.015 sec)

mysql>
mysql> -- 6. Group by course (sum of ages)
Query OK, 0 rows affected (0.008 sec)

mysql> SELECT course, SUM(age)
    -> FROM students
    -> GROUP BY course;
+--------+----------+
| course | SUM(age) |
+--------+----------+
| CSE    |       20 |
| ECE    |       21 |
| BTech  |     NULL |
| MECH   |       22 |
+--------+----------+
4 rows in set (0.011 sec)

mysql>
mysql> -- 7. Having condition
Query OK, 0 rows affected (0.008 sec)

mysql> SELECT course, COUNT(*)
    -> FROM students
    -> GROUP BY course
    -> HAVING COUNT(*) >= 1;
+--------+----------+
| course | COUNT(*) |
+--------+----------+
| CSE    |        1 |
| ECE    |        1 |
| BTech  |        1 |
| MECH   |        1 |
+--------+----------+
4 rows in set (0.013 sec)

mysql>
mysql> -- 8. Count distinct courses
Query OK, 0 rows affected (0.008 sec)

mysql> SELECT COUNT(DISTINCT course) FROM students;
+------------------------+
| COUNT(DISTINCT course) |
+------------------------+
|                      4 |
+------------------------+
1 row in set (0.013 sec)

mysql>
mysql> -- 9. Round average age
Query OK, 0 rows affected (0.006 sec)

mysql> SELECT ROUND(AVG(age),2) FROM students;
+-------------------+
| ROUND(AVG(age),2) |
+-------------------+
|             21.00 |
+-------------------+
1 row in set (0.008 sec)

mysql> SELECT course, COUNT(*) FROM students GROUP BY course;
+--------+----------+
| course | COUNT(*) |
+--------+----------+
| CSE    |        1 |
| ECE    |        1 |
| BTech  |        1 |
| MECH   |        1 |
+--------+----------+
4 rows in set (0.009 sec)

mysql> SELECT AVG(age) FROM students;
+----------+
| AVG(age) |
+----------+
|  21.0000 |
+----------+
1 row in set (0.007 sec)

mysql>