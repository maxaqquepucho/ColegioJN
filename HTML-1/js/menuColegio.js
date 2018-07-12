
let url = 'ws://localhost:8080/ColegioA/UsuarioWebSocket',
    ws = new WebSocket(url),
 btnAgregar = document.getElementById("btnAgregar");

ws.onopen = onOpen;
ws.onclose = onClose;
ws.onmessage = onMessage;
ws.onerror = onError;

function onOpen(){
    console.log('conectado...')
}

function onClose(){
    console.log('Desconectado...');
}

function onMessage(evt){
    let obj = JSON.parse(evt.data);
    switch (obj.accion) {
        case 'Agregar':
            mensajeAgregarFila(obj);
            break;
        case "Eliminar":
            mensajeEliminarFila(obj);
            break;
        case "Editar":
            mensajeEditarFila(obj);
            break;
        default: console.log("No se pudo realizar esta accion");

    }
    console.log(obj);
}

function onError(){
    console.log('se cerro la session');
}

/*=============================================*/
    let idUsuario = document.getElementById('idUsuario'),
        nombre = document.getElementById('nombre'),
        apellido = document.getElementById('apellido'),
        dni = document.getElementById('dni'),
        direccion = document.getElementById('direccion'),
        fechaNacimiento = document.getElementById('fechaNacimiento'),
        sexo = document.getElementById('sexo'),
        celular = document.getElementById('celular'),
        telefono = document.getElementById('telefono'),
        mail = document.getElementById('mail'),
        usuario = document.getElementById('usuario'),
        pass = document.getElementById('pass'),
        imagen = document.getElementById('imagen');


 btnAgregar.addEventListener('click', agregarEditarFila);

 function agregarEditarFila() {
     let datos = {
         idUsuario: idUsuario.value,
         nombre: nombre.value,
         apellido: apellido.value,
         dni: dni.value,
         direccion: direccion.value,
         fechaNacimiento: fechaNacimiento.value,
         sexo: sexo.value,
         celular: celular.value,
         telefono: telefono.value,
         mail: mail.value,
         usuario: usuario.value,
         pass: pass.value,
         imagen: imagen.value
     }
     ws.send(JSON.stringify(datos));
     console.log(datos);
 }
