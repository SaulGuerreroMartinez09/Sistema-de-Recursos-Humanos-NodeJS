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
            mostrarEmpleados(empleados);

            if (empleados != null) {
                console.log("Hasbulla")
                // console.log(empleados.message[0].nombre);
            }
        })
        .catch(function (err) {
           console.log("Se ha producido un error al recuperar la lista de empleados. Inténtalo de nuevo más tarde.");
            console.log(err);
        });
}

function mostrarEmpleados(empleados) {
    const table = document.createElement('table');
    table.classList.add('table');
    table.innerHTML = `
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre</th>
                <th scope="col">Apellido</th>
                <th scope="col">Correo Electrónico</th>
                <th scope="col">Teléfono</th>
                <th scope="col">Dirección</th>
                <th scope="col">Acciones</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    `;

    const tbody = table.querySelector('tbody');
    const empleadosData = empleados.message;

    if (empleadosData.length > 0) {
        for (let i = 0; i < empleadosData.length; i++) {
            const empleado = empleadosData[i];
            const empleado_id = empleado.empleado_id;
            const nombre = empleado.nombre;
            const apellido = empleado.apellido;
            const correo = empleado.correo;
            const telefono = empleado.telefono;
            const direccion = empleado.direccion;

            // Crea una nueva fila para cada empleado
            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${empleado_id}</td>
                <td>${nombre}</td>
                <td>${apellido}</td>
                <td>${correo}</td>
                <td>${telefono}</td>
                <td>${direccion}</td>
                <td>
                    <button class="btn btn-delete">Eliminar</button>
                    <button class="btn btn-edit">Editar</button>
                </td>
            `;

            // Agrega la fila a la tabla
            tbody.appendChild(row);
        }
    } else {
        const row = document.createElement('tr');
        row.innerHTML = `
            <td colspan="7">No se encontraron empleados.</td>
        `;
        tbody.appendChild(row);
    }

    const container = document.querySelector('.table-container');
    container.innerHTML = '';
    container.appendChild(table);
}
