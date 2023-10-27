window.onload = init;
let headers = {};
let url = "http://localhost:3000";

function init() {
    if (localStorage.getItem("token")) {
        headers = {
            headers: {
                'Authorization': "bearer " + localStorage.getItem("token")
            }
        };
        loadEmployees();
    } else {
        window.location.href = "index.html";
    }
}

function loadEmployees() {
    axios.get(url + '/rh', headers)
        .then(function (response) {
            if (response.status === 200) {
                return response.data;
            }
        })
        .then(function (data) {
            console.log(data);
            displayEmployees(data.message);
        })
        .catch(function (error) {
            console.error('Error:', error);
        });
}

function displayEmployees(employees) {
    let body = document.querySelector("body");
    console.log(employees);
    employees.forEach(function (employee) {
        body.innerHTML += `<h1>${employee.nombre} ${employee.apellidos}</h1>`;
    });
}

function addEmployee() {
    const nombre = 'Nombre del nuevo empleado';
    const apellidos = 'Apellidos del nuevo empleado';
    const correo = 'correo@nuevoempleado.com';

    axios.post(url + '/rh', { nombre, apellidos, correo }, headers)
        .then(function (response) {
            if (response.status === 200) {
                return response.data;
            }
        })
        .then(function (data) {
            console.log(data);
        })
        .catch(function (error) {
            console.error('Error:', error);
        });
}

function deleteEmployee(employeeID) {
    axios.delete(url + `/rh/${employeeID}`, headers)
        .then(function (response) {
            if (response.status === 200) {
                return response.data;
            }
        })
        .then(function (data) {
            console.log(data);
        })
        .catch(function (error) {
            console.error('Error:', error);
        });
}
