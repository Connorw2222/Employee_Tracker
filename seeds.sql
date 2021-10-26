/* Seeds for SQL table. !!!CHANGE DB NAME IF DIFFERENT!!! */
USE employee_tracker;

/* !!!CHANGE COLUMN NAMES IF DIFFERENT!!! */
INSERT INTO Departments (department_name)  
VALUES ("Intructors");

INSERT INTO Departments (department_name)
VALUES ("TA's");

INSERT INTO Departments (department_name)
VALUES ("Students");



/* !!!CHANGE COLUMN NAMES IF DIFFERENT!!! */
INSERT INTO Roles (title, salary, D_id)
VALUES ("Instructor", 100000.00, 1);

INSERT INTO Roles (title, salary, D_id)
VALUES ("TA", 90000.00, 2);

INSERT INTO Roles (title, salary, D_id)
VALUES ("Student", 0.00, 3);



/* !!!CHANGE COLUMN NAMES IF DIFFERENT!!! */
INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Harrison", "Schaen", 1, NULL);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Steph", "Huynh", 2, 1);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Steven", "Landgraf", 2, 1);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Daniel", "Angulo", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Said", "Aguilar", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Matthew", "Bell", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Julian", "Acosta", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Tyler", "Arthur", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Javier", "Banuelos", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Art", "Aragon", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Cara", "Bunnell", 3, 2);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Jaycee", "Bagtas", 3, 3);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Alexia", "Chalita", 3, 3);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Lizbeth", "Glasser", 3, 3);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Collin", "Kier", 3, 3);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Brian", "Monteverde", 3, 3);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Greg", "Schuman", 3, 3);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Amy", "Fabella", 3, 3);

INSERT INTO Employee (first_name, last_name, role_id, manager_id)
VALUES ("Jason", "Riley", 3, 3);