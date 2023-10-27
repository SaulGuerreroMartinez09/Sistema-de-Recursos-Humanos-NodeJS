const link = 'http://localhost:3000/';
const headers = {
    'Authorization': 'bearer ' + localStorage.getItem("token")
};

window.onload = init;

function init() {
    if (localStorage.getItem("token")) {
        document.querySelector('.btn-secondary').addEventListener('click', function () {
            window.location.href = 'rh.html';
        });

        document.querySelector('.btn-primary').addEventListener('click', verEmpleados);
    }
}

function verEmpleados() {
    if (!localStorage.getItem("token")) {
        alert("Debes iniciar sesión para ver empleados.");
        return;
    }

    axios.get(link + 'rh', { headers })
        .then(function (res) {
            const empleados = res.data;

            if (empleados.length === 0) {
                alert("No se encontraron empleados en la base de datos.");
            } else {
                mostrarEmpleados(empleados);
            }
        })
        .catch(function (err) {
            alert("Se ha producido un error al recuperar la lista de empleados. Inténtalo de nuevo más tarde.");
            console.log(err);
        });
}

function mostrarEmpleados(empleados) {
    const table = document.createElement('table');
    table.classList.add('table');
    table.innerHTML = `
        <thead>
            <tr>
                <th>Empleado ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Teléfono</th>
                <th>Correo</th>
                <th>Dirección</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    `;

    const tbody = table.querySelector('tbody');
    empleados.forEach((empleado) => {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td>${empleado.empleado_id}</td>
            <td>${empleado.nombre}</td>
            <td>${empleado.apellido}</td>
            <td>${empleado.telefono}</td>
            <td>${empleado.correo}</td>
            <td>${empleado.direccion}</td>
        `;

        tbody.appendChild(row);
    });

    const container = document.querySelector('.table-container');
    container.innerHTML = '';
    container.appendChild(table);
}






