const link = 'http://localhost:3000/';
const headers = {
    'Authorization': 'bearer ' + localStorage.getItem("token")
};

window.onload = init;

function init() {
    if (localStorage.getItem("token") && localStorage.getItem("mail")) {
        document.querySelector('.btn-secondary').addEventListener('click', function () {
            window.location.href = 'rh.html';
        });
        document.querySelector('.btn-primary').addEventListener('click', agregar)
    }else{
        alert("Necesitas iniciar sesion para estar en esta pagina");
        window.location.href = 'index.html'
    } 
}
function agregar() {
    const nombreInput = document.getElementById('nombre');
    const apellidoInput = document.getElementById('apellido');
    const telefonoInput = document.getElementById('telefono');
    const correoInput = document.getElementById('correo');
    const direccionInput = document.getElementById('direccion');
    const agregarEmpleadoBtn = document.querySelector('.btn-primary');
    const inicioBtn = document.querySelector('.btn-secondary');

    agregarEmpleadoBtn.addEventListener('click', function () {
        const nombre = nombreInput.value;
        const apellido = apellidoInput.value;
        const telefono = telefonoInput.value;
        const correo = correoInput.value;
        const direccion = direccionInput.value;

        if (!localStorage.getItem("token")) {
            alert("Debes iniciar sesión para agregar empleados.");
            return;
        }
        const token = localStorage.getItem("token");
        const decodedToken = JSON.parse(atob(token.split(".")[1]));
        console.log("Decoded Token:", token);

        axios.post(link + 'rh',
            {
                nombre: nombre,
                apellido: apellido,
                telefono: telefono,
                correo: correo,
                direccion: direccion
            },
            {
                headers
            }
        ).then(function (res) {
            switch (res.data.code) {
                case 201:
                    alert("Empleado ingresado exitosamente!");
                    window.location.href = "viewusers.html";
                    break;
                case 400:
                    alert("Campos incompletos. Verifica los datos.");
                    break;
                case 401:
                    alert("No tienes permiso para agregar empleados.");
                    break;
                default:
                    alert("Error al agregar empleado. Inténtalo de nuevo más tarde.");
                    break;
            }
        }).catch(function (err) {
            alert("Se ha producido un error al enviar la solicitud. Inténtalo de nuevo más tarde.");
            console.log(err);
        });
    });

    inicioBtn.addEventListener('click', function () {
        window.location.href = 'rh.html';
    });
}
