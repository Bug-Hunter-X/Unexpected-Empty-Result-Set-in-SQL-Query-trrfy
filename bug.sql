```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000;
```
This SQL query might seem fine, but it can lead to unexpected behavior if there are no employees with `department_id = 10` and a `salary > 100000`. In this scenario, the query would return an empty result set, which might not be what's intended if the intent is to handle such a case differently. For example, you might want to return a default value or handle the case with an error message.