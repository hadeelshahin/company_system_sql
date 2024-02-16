SELECT e.employee_id,
    e.full_name,
    p.name
FROM employees AS e
    LEFT JOIN employees_projects AS ep ON e.employee_id = ep.employee_id
    LEFT JOIN projects AS p ON ep.project_id = p.project_id