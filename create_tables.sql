CREATE TABLE projects(
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(300) NOT NULL,
    deadline DATE
);
CREATE TABLE company_buidlings(
    building_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200) NOT NULL
);
CREATE TABLE teams(
    team_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(200),
    building_id INT REFERENCES company_buidlings (building_id) ON DELETE
    SET NULL
);
CREATE TABLE employees(
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    full_name VARCHAR(401) GENERATED ALWAYS AS (CONCAT(first_name, ' ', last_name)),
    birth_date DATE NOT NULL,
    email VARCHAR(300) UNIQUE NOT NULL,
    team_id INT REFERENCES teams (team_id) ON DELETE
    SET NULL
);
CREATE TABLE intranet_accounts(
    account_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(300) REFERENCES employee (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);
CREATE TABLE employees_projects(
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT REFERENCES employee (employee_id) ON DELETE CASCADE,
    project_id INT REFERENCES projects (project_id) ON DELETE CASCADE
);