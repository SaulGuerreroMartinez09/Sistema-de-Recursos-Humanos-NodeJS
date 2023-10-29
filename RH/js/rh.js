window.onload = init;

function init() {
    if (localStorage.getItem("token") && localStorage.getItem("mail")) {
        document.querySelector('.btn-primary').addEventListener('click', function () {
            window.location.href = 'addusers.html';
        });
        document.querySelector('.btn-secondary').addEventListener('click', function () {
            window.location.href = 'viewusers.html';
        });
        document.querySelector('.btn-tertiary').addEventListener('click', function () {
            window.location.href = 'modifyusers.html';
        });
    }else{
        alert("Necesitas iniciar sesion para estar en esta pagina");
        window.location.href = 'index.html'
    } 
}