window.onload = init;
let headers = {};
let url = "http://localhost:3000";

function init() {
  if (localStorage.getItem("token")) {
    token = localStorage.getItem("token");
    headers = {
      headers: {
        Authorization: "Bearer " + localStorage.getItem("token"),
      },
    };

    document.querySelector(".btn-secondary").addEventListener("click", function () {
      window.location.href = "addusers.html";
    });

    document.querySelector(".btn-primary").addEventListener("click", insert);
  } else {
    window.location.href = "index.html";
  }
}

function insert() {
  let nombre = document.getElementById("nombre").value;
  let apellido = document.getElementById("apellido").value;
  let telefono = document.getElementById("telefono").value;
  let correo = document.getElementById("email").value;
  let direccion = document.getElementById("direccion").value;

  axios
    .post("http://localhost:3000/rh", {
      nombre: nombre,
      apellidos: apellido,
      telefono: telefono,
      correo: correo,
      direccion: direccion,
    }, headers)
    .then(function (res) {
      console.log(res);
      alert("Empleado registrado correctamente");
      window.location.href = "addusers.html";
    })
    .catch(function (err) {
      console.log(err);
    });
}
