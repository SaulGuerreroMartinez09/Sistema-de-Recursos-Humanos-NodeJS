window.onload = init;

function init() {
    document.querySelector('.btn-primary').addEventListener('click', login);
}

function login() {
    const mail = document.getElementById('input-mail').value;
    const pass = document.getElementById('input-password').value;
    if (!mail || !pass) {
        alert("Completa ambos campos.");
        return;
    }

    axios({
        method: 'post',
        url: 'http://localhost:3000/user/login',
        data: {
            correo: mail,
            contraseña: pass
        }
    }).then(function (res) {
    const token = res.data.message;
        if (res.data.code === 201) {
            localStorage.setItem("token", token);
            localStorage.setItem('mail', JSON.stringify(mail));
            window.location.href = "rh.html";
    }
    if (token === "Usuario y/o contraseña incorrectos") {
        alert("Usuario y/o contraseña incorrectos");
    } else if (token === "campos incompletos") {
        alert("Los campos están incompletos");
         }


    }).catch(function (err) {
        console.log(err);
        alert("Error al procesar la solicitud.");
    });

}
