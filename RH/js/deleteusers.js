window.onload = init;

function init() {
  if (localStorage.getItem("token")) {
    token = localStorage.getItem("token");
    headers = {
      headers: {
        Authorization: "Bearer " + localStorage.getItem("token"),
      },
    };

    // Cargar los datos del empleado basados en su correo
    loadDatos();

    document.querySelector(".btn-secondary").addEventListener("click", function () {
      window.location.href = "login.html";
    });

    document.querySelector(".btn-primary").addEventListener("click", eliminar);
  } else {
    window.location.href = "index.html";
  }
}

let correo = localStorage.getItem("correo");

function loadDatos() {
  axios
    .get("http://localhost:3000/RH/correo/" + correo, headers)
    .then(function (res) {
      // Llenamos los input
      let datos = res.data.message;
      let body = document.querySelector("table");
      body.innerHTML += `<tr>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Teléfono</th>
                            <th>Correo</th>
                            <th>Dirección</th>
                        </tr>
                        <tr>
                            <td>${datos[0].nombre}</td>
                            <td>${datos[0].apellidos}</td>
                            <td>${datos[0].telefono}</td>
                            <td>${datos[0].correo}</td>
                            <td>${datos[0].direccion}</td>
                        </tr>`;
    })
    .catch(function (err) {
      console.log(err);
    });
}

function eliminar() {
  axios
    .delete("http://localhost:3000/RH/" + correo, headers)
    .then(function (res) {
      console.log(res);
      alert("Empleado eliminado");
      window.location.href = "deleteusers.html";
    })
    .catch(function (err) {
      console.log(err);
    });
}
