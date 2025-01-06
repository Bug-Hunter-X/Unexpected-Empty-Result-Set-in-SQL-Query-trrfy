```sql
SELECT * FROM employees WHERE department_id = 10 AND salary > 100000
UNION ALL
SELECT NULL AS employee_id, NULL AS department_id, NULL AS salary  -- Default values if no match is found
WHERE NOT EXISTS (SELECT 1 FROM employees WHERE department_id = 10 AND salary > 100000);
```
This revised query uses a `UNION ALL` to combine the original query with a fallback query that provides default values (NULL in this example) if the original query returns an empty set. The `NOT EXISTS` subquery checks whether any rows match the original criteria. This prevents errors and allows applications to handle the 'no match' scenario gracefully.