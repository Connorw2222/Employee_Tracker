// add a department, add a role, add an employee, and update an employee role
const mysql = require('mysql2');
const cTable = require('console.table')

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'employee_tracker',
  password: 'C0nn0rc2$'
});
function viewTable(table) {
  connection.query(`SELECT * FROM ${table}`, (err, res) => {
    if (err) throw err;
    console.table(res)
  })
}

function addDepartment(name) {
  connection.query(`INSERT INTO Departments (department_name)
  VALUES (${name})`, (err, res) => {
    if (err) throw err;
  })
  return console.log(`Department ${name} created!`)
}

function addRole(title, salary, D_id) {
  connection.query(`INSERT INTO Roles (id, title, salary, D_id)
  VALUES (${title}, ${salary}, ${D_id})`, (err, res) => {
    if (err) throw err;
  })
  return console.log(`${title} role created!`)
}

function addEmployee(first_name, last_name, role_id, manager_id) {
  connection.query(`INSERT INTO Employee (first_name, last_name, role_id, manager_id)
  VALUES (${first_name}, ${last_name}, ${role_id}, ${manager_id})`, (err, res) => {
    if (err) throw err;
  })
  console.log(`Employee ${first_name} ${last_name} created!`)
}

function updateEmployee(first_name, last_name, role_id, manager_id) {
  connection.query(`UPDATE INTO Employee(first_name, last_name, role_id, manager_id)
  VALUES (${first_name}, ${last_name}, ${role_id}, ${manager_id})`, (err, res) => {
    if (err) throw err;
  })
  console.log(`Employee ${first_name} ${last_name} updated!`)
}

function end() {
  connection.end()
}

module.exports = { viewTable, addDepartment, addRole, addEmployee, updateEmployee, end, connection }
