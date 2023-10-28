const link = 'http://localhost:3000/';
const headers = {
    'Authorization': 'bearer ' + localStorage.getItem("token")
};



window.addEventListener("load", function(){
    let empeladoStringify = localStorage.getItem('empleadoSeleccionado');
    let empleadoObj = JSON.parse(empeladoStringify);
    console.log(empeladoStringify);
    console.log(empleadoObj);
    
});

// function mostrarEmpleados(empleados) {
//     const table = document.createElement('table');
//     table.classList.add('table');
//     table.innerHTML = `
//         <thead>
//             <tr>
//                 <th scope="col">#</th>
//                 <th scope="col">Nombre</th>
//                 <th scope="col">Apellido</th>
//                 <th scope="col">Correo Electrónico</th>
//                 <th scope="col">Teléfono</th>
//                 <th scope="col">Dirección</th>
//                 <th scope="col">Acciones</th>
//             </tr>
//         </thead>
//         <tbody>
//         </tbody>
//     `;

//     const tbody = table.querySelector('tbody');
//     const empleadosData = empleados.message;

//     if (empleadosData.length > 0) {
//         for (let i = 0; i < empleadosData.length; i++) {
//             const empleado = empleadosData[i];
//             const empleado_id = empleado.empleado_id;
//             const nombre = empleado.nombre;
//             const apellido = empleado.apellido;
//             const correo = empleado.correo;
//             const telefono = empleado.telefono;
//             const direccion = empleado.direccion;

//             const row = document.createElement('tr');
//             row.innerHTML = `
//                 <td>${empleado_id}</td>
//                 <td>${nombre}</td>
//                 <td>${apellido}</td>
//                 <td>${correo}</td>
//                 <td>${telefono}</td>
//                 <td>${direccion}</td>
//                 <td>
//                     <button class="btn btn-delete" empId="${empleado_id}">Eliminar</button>
//                     <button class="btn btn-edit" empId="${empleado_id}">Editar</button>
//                 </td>
//             `;
//             tbody.appendChild(row);

            
//             const btnEditar = row.querySelector('.btn-edit');
//             btnEditar.addEventListener('click', () => {
//                 const empleadoID = btnEditar.getAttribute('empId');
//                 // Obtener el empleado seleccionado de 'empleados'
//                 const empleadoSeleccionado = empleadosData.find(empleado => empleado.empleado_id === empleadoID);
                
//                 // Almacenar los datos del empleado en el almacenamiento local
//                 localStorage.setItem('empleadoSeleccionado', JSON.stringify(empleadoSeleccionado));
                
//                 // Redirigir a "modifyusers.html"
//                 window.location.href = 'modifyusers.html';
//             });

//                 const btnEliminar = row.querySelector('.btn-delete');
//                 btnEliminar.addEventListener('click', () => {
//                 const empleadoID = btnEliminar.getAttribute('empId');
//                 eliminarEmpleado(empleadoID);
//                 });
//         }
//     } else {
//         const row = document.createElement('tr');
//         row.innerHTML = `
//             <td colspan="7">No se encontraron empleados.</td>
//         `;
//         tbody.appendChild(row);
//     }

//     const container = document.querySelector('.table-container');
//     container.innerHTML = '';
//     container.appendChild(table);
// }

// function buscarEmpleadoPorNombre() {
//     if (!localStorage.getItem("token")) {
//         alert("Debes iniciar sesión para buscar empleados.");
//         return;
//     }

//     const nombreBuscado = localStorage.getItem('nombre');

//     axios.get(link + 'rh/' + nombreBuscado, { headers })
//         .then(function (res) {
//             const empleados = res.data;
//             mostrarEmpleados(empleados);
//         })
//         .catch(function (err) {
//             alert("Intenta de nuevo, hubo un error");
//             console.log(err);
//         });
// }

// document.addEventListener("DOMContentLoaded", function () {
//     document.getElementById('searchButton').addEventListener('click', buscarEmpleadoPorNombre);

//     function buscarEmpleadoPorNombre() {
//         if (!localStorage.getItem("token")) {
//             alert("Debes iniciar sesión para buscar empleados.");
//             return;
//         }

//         const nombreBuscado = localStorage.getItem('nombre');

//         axios.get(link + 'rh/' + nombreBuscado, { headers })
//             .then(function (res) {
//                 const empleados = res.data;
//                 mostrarEmpleados(empleados);
//             })
//             .catch(function (err) {
//                 alert("Intenta de nuevo, hubo un error");
//                 console.log(err);
//             });
//     }

// });

function update() {
    let nombre = document.getElementById('nombre').value;
    let apellido = document.getElementById('apellido').value;
    let telefono = document.getElementById('telefono').value;
    let email = document.getElementById('email').value;
    let direccion = document.getElementById('direccion').value;
    const empleadoId = localStorage.getItem('empleado_id');
    
    axios.put(link + "rh/" + empleadoId, {
        nombre: nombre,
        apellido: apellido,
        telefono: telefono,
        email: email,
        direccion: direccion
    }, { headers })
    .then(function(res) {
        console.log(res);
        alert("Modificación exitosa");
        window.location.href = "viewusers.html";
    })
    .catch(function(err) {
        console.log(err);
        alert("Hubo un error al modificar el empleado.");
    });
}
