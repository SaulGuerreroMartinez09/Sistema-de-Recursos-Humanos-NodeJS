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
      window.location.href = "login.html";
    });

    document.querySelector(".btn-primary").addEventListener("click", insert);
  } 
  else {
    window.location.href = "rh.html";
  }
}

function insert() {
  let nombre = document.getElementById("nombre").value;
  let apellido = document.getElementById("apellido").value;
  let telefono = document.getElementById("telefono").value;
  let correo = document.getElementById("correo").value;
  let direccion = document.getElementById("direccion").value;

  axios({
    method: 'post',
    url: 'http://localhost:3000/rh',
    data: {
      nombre: nombre,
      apellido: apellido,
      telefono: telefono,
      correo: correo,
      direccion: direccion,
    }
    }).then(function(res){
        console.log(res);
        alert("Registro Exitoso");
        window.location.href = "login.html";
    }).catch(function(err){
        console.log(err);
    })
  
}
