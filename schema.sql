DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;
USE employee_tracker;

CREATE TABLE `Employee` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `first_name` varchar(30),
  `last_name` varchar(30),
  `role_id` int,
  `manager_id` int
);

CREATE TABLE `Departments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `department_name` varchar(30)
);

CREATE TABLE `Roles` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(30),
  `salary` decimal,
  `D_id` int
);

ALTER TABLE `Roles` ADD FOREIGN KEY (`D_id`) REFERENCES `Departments` (`id`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`role_id`) REFERENCES `Roles` (`id`);

ALTER TABLE `Employee` ADD FOREIGN KEY (`manager_id`) REFERENCES `Employee` (`id`);