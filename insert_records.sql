-- Inserting data into the projects table
INSERT INTO projects (name, deadline) VALUES
('Project A', '2024-03-15'),
('Project B', '2024-04-30'),
('Project C', '2024-05-20');

-- Inserting data into the company_buildings table
INSERT INTO company_buidlings (name) VALUES
('Building 1'),
('Building 2'),
('Building 3');

-- Inserting data into the teams table
INSERT INTO teams (name, building_id) VALUES
('Team 1', 1),
('Team 2', 2),
('Team 3', 3);

-- Inserting data into the employees table
INSERT INTO employees (first_name, last_name, birth_date, email, team_id) VALUES
('John', 'Doe', '1990-05-15', 'john.doe@example.com', 1),
('Jane', 'Smith', '1985-08-20', 'jane.smith@example.com', 2),
('Michael', 'Johnson', '1988-12-10', 'michael.johnson@example.com', 3);

-- Inserting data into the intranet_accounts table
INSERT INTO intranet_accounts (email, password) VALUES
('john.doe@example.com', 'password1'),
('jane.smith@example.com', 'password2'),
('michael.johnson@example.com', 'password3');

-- Inserting data into the employees_projects table
INSERT INTO employees_projects (employee_id, project_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3);
