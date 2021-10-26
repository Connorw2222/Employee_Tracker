// Create prompt functions and export as modules
// Needs a connection to your database
// create connection or import your connection from index.js
const inquirer = require('inquirer');
const sql = require('./sql');

function questions() {
    inquirer.prompt(
        [{
            type: 'list',
            name: 'do',
            message: 'What would you like to do?',
            choices: [
                'View all departments',
                'View all roles',
                'View all employees',
                'Add a department',
                'Add a role',
                'Add an employee',
                'Update an employee role',
                'Exit'
            ]
        }]
    )
    .then(function (answer) {
        switch (answer.do) {
            case 'View all departments':
                sql.viewTable('Departments')
                break;
            case 'View all roles':
                sql.viewTable('Roles')
                break;
            case 'View all employees':
                sql.viewTable('Employee')
                break;
            case 'Add a department':
                newDepartment()
                break;
            case 'Add a role':
                newRole()
                break;
            case 'Add an employee':
                sql.addEmployee('Employee')
                break;
            case 'Update an employee role':
                sql.updateEmployee('Employee')
                break;
            default:
                sql.end()
        }
    })    
    .catch(err => console.log(err))
}

function loop() {
    inquirer.prompt([
        {
            type: 'confirm',
            name: 'loop',
            message: 'Do you want to continue?'
        }
    ])
    .then(function (answer) {
        answer.loop ? questions() : sql.end() // ternary statement
        // if (answer.loop) return questions();
        // else sql.end();
    })
    .catch(err => console.log(err))
}

function newDepartment() {
    inquirer.prompt([
        {
            type: 'input',
            name: 'department',
            message: 'What is the name of the new department?'
        }
    ])
    .then(answer => {
        sql.addDepartment(JSON.stringify(answer.department));
    })
    .catch(err => console.log(err))
    .then(()=>{
        loop()
    })
}

function newRole(){
    inquirer.prompt([
        {
            type: 'input',
            name: 'title',
            message: 'What is the name of the new role?'
        }
    ])
    .then(answer => {
        sql.addRole(JSON.stringify(answer.title));
    })
    .catch(err => console.log(err))
    .then(()=>{
        loop()
    })
}


module.exports = questions;