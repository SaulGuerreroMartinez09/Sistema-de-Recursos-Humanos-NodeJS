const link = 'http://localhost:3000/';
const headers = {
            'Authorization': 'bearer ' + localStorage.getItem("token")
        };
window.onload = function() {
    alert("Para editar solo selecciona cualquier casilla de 'valores'")
}
// -------------------------------------MOSTRAR EMPLEADO SELECCIONADO-------------------------------------
        window.addEventListener("load", function () {
            let empleadoStringify = localStorage.getItem('empleadoSeleccionado');
            let empleadoObj = JSON.parse(empleadoStringify);


            let tablaEmpleadoElement = document.getElementById('tablaEmpleado');

            if (empleadoObj) {
                tablaEmpleadoElement.innerHTML = `
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">Campo</th>
                                <th scope="col">Valores</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">Nombre</th>
                                <td id="nombre" contenteditable="true">${empleadoObj.nombre}</td>
                            </tr>
                            <tr>
                                <th scope="row">Apellido</th>
                                <td id="apellido" contenteditable="true">${empleadoObj.apellido}</td>
                            </tr>
                            <tr>
                                <th scope="row">Correo Electrónico</th>
                                <td id="correo" contenteditable="true">${empleadoObj.correo}</td>
                            </tr>
                            <tr>
                                <th scope="row">Teléfono</th>
                                <td id="telefono" contenteditable="true">${empleadoObj.telefono}</td>
                            </tr>
                            <tr>
                                <th scope="row">Dirección</th>
                                <td id="direccion" contenteditable="true">${empleadoObj.direccion}</td>
                            </tr>
                        </tbody>
                    </table>
                `;


                tablaEmpleadoElement.innerHTML += `
                    <button class="btn btn-primary" id="guardarCambiosBtn">Guardar Cambios</button>
                `;
 // -------------------------------------GUARDAR CAMBIOS-------------------------------------               
                document.getElementById('guardarCambiosBtn').addEventListener('click', function () {

                    const nombre = document.getElementById('nombre').textContent;
                    const apellido = document.getElementById('apellido').textContent;
                    const telefono = document.getElementById('telefono').textContent;
                    const email = document.getElementById('correo').textContent;
                    const direccion = document.getElementById('direccion').textContent;

                    let empleadoStringify = localStorage.getItem('empleadoSeleccionado');
                    let empleadoObj = JSON.parse(empleadoStringify);

                    empleadoObj.nombre = nombre;
                    empleadoObj.apellido = apellido;
                    empleadoObj.telefono = telefono;
                    empleadoObj.correo = email;
                    empleadoObj.direccion = direccion;

                    localStorage.setItem('empleadoSeleccionado', JSON.stringify(empleadoObj));
                    update();
                });
            } else {
            
               alert('No has seleccionado ningun empleado');
               window.location.href = 'viewusers.html';
            }
        });
// -------------------------------------ACTUALIZAR EMPLEADOS BBDD-------------------------------------
        function update() {
            const empleadoSeleccionado = localStorage.getItem("empleadoSeleccionado");
            let empleadoObj = JSON.parse(empleadoSeleccionado);

            axios.put(link + "rh/" + empleadoObj.empleado_id, {
                nombre: empleadoObj.nombre,
                apellido: empleadoObj.apellido,
                telefono: empleadoObj.telefono,
                correo: empleadoObj.correo,
                direccion: empleadoObj.direccion
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