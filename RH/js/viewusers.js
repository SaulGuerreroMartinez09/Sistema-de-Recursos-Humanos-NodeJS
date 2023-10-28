const link = 'http://localhost:3000/';
const headers = {
    'Authorization': 'bearer ' + localStorage.getItem("token")
};

window.onload = init;

// -------------------------------------INICIO-------------------------------------

function init() {
    if (localStorage.getItem("token")) {
        document.querySelector('.btn-secondary').addEventListener('click', function () {
            window.location.href = 'rh.html';
        });

        document.querySelector('.btn-primary').addEventListener('click', verEmpleados);
    }
}


// -------------------------------------VER EMPLEADOS-------------------------------------

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
            }
        })
        .catch(function (err) {
           console.log("Se ha producido un error al recuperar la lista de empleados. Inténtalo de nuevo más tarde.");
            console.log(err);
        });
}

// -------------------------------------IMPRIMIR EMPLEADOS-------------------------------------

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

            const row = document.createElement('tr');
            row.innerHTML = `
                <td>${empleado_id}</td>
                <td>${nombre}</td>
                <td>${apellido}</td>
                <td>${correo}</td>
                <td>${telefono}</td>
                <td>${direccion}</td>
                <td>
                    <button class="btn btn-delete" empId="${empleado_id}">Eliminar</button>
                    <button class="btn btn-edit" nombre="${nombre}">Editar</button>
                </td>
            `;
            tbody.appendChild(row);


            const btnEditar = row.querySelector('.btn-edit');
            const btnDelete = row.querySelector('.bbtn-delete');
            btnEditar.addEventListener('click', () => {
                const nombrecito = btnEditar.getAttribute('nombre');
                const empleadoSeleccionado = empleadosData.find(empleado => empleado.nombre === nombrecito);
                localStorage.setItem('empleadoSeleccionado', JSON.stringify(empleadoSeleccionado));

                window.location.href = 'modifyusers.html';
            });

                const btnEliminar = row.querySelector('.btn-delete');
                btnEliminar.addEventListener('click', () => {
                const empleadoID = btnEliminar.getAttribute('empId');
                eliminarEmpleado(empleadoID);
                });
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

// -------------------------------------ELIMINAR EMPLEADOS-------------------------------------

function eliminarEmpleado(empleadoID) {
    axios.delete(link + 'rh/' + empleadoID, { headers} )
        .then(function (res) {
            alert("Empleado eliminado con éxito");
            window.location.href = 'viewusers.html';
        })
        .catch(function (err) {
            console.log("Error al eliminar el empleado:", err);
        });
}

// -------------------------------------BUSCAR EMPLEADOS POR NOMBRE-------------------------------------

document.addEventListener("DOMContentLoaded", function () {
    document.getElementById('searchButton').addEventListener('click', buscarEmpleadoPorNombre);

    function buscarEmpleadoPorNombre() {
        if (!localStorage.getItem("token")) {
            alert("Debes iniciar sesión para buscar empleados.");
            return;
        }

        const nombreBuscado = document.getElementById('search').value;

        axios.get(link + 'rh/' + nombreBuscado, { headers })
            .then(function (res) {
                const empleados = res.data;
                mostrarEmpleados(empleados);
            })
            .catch(function (err) {
                alert("Intenta de nuevo, hubo un error");
                console.log(err);
            });
    }

});
