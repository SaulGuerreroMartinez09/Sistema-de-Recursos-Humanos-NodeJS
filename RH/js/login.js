window.onload = init;

function init(){
    if(!localStorage.getItem("token")){
            document.querySelector('.btn-secondary').addEventListener('click', function(){
                window.location.href = 'signin.html';
            });
            document.querySelector('.btn-primary').addEventListener('click', login)
    }else{
        window.location.href = "rh.html"
    }
}

function login(){
    let mail = document.getElementById('input-mail').value;
    let pass = document.getElementById('input-password').value;

    axios({
        method: 'post',
        url: 'http://localhost:3000/user/login',
        data: {
            correo: mail,
            contraseña: pass
        }
    }).then(function(res){
        if(res.data.code === 200){
            localStorage.setItem("token", res.data.message);
            window.location.href = "rh.html";
        }
    }).catch(function(err){
        console.log(err);
    })
}
