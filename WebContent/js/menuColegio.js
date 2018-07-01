
let url = 'ws://localhost:8080/ColegioA/UsuarioWebSocket',
    ws = new WebSocket(url),
 btnAgregar = document.getElementById("btnAgregar");

 let tabla = document.querySelector('#usuariosColegio');
    function numFilas() {
        return  tabla.rows.length;
    }

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
        imagen = document.getElementById('imagen'),
        tipo = document.getElementById('tipo');


 btnAgregar.addEventListener('click', agregarEditarFila);

 function agregarEditarFila() {
     let datos = {
         accion: btnAgregar.value,
         idPersona: idUsuario.value,
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
         imagen: imagen.value,
         tipo: tipo.value
     }

     ws.send(JSON.stringify(datos));
     console.log(datos);
 }

 function mensajeAgregarFila(objeto) {
     let row = tabla.insertRow(numFilas());

        let cell1 = row.insertCell(0),
            cell2 = row.insertCell(1),
            cell3 = row.insertCell(2),
            cell4 = row.insertCell(3),
            cell5 = row.insertCell(4),
            cell6 = row.insertCell(5);
            cell7 = row.insertCell(6),
            cell8 = row.insertCell(7),
            cell9 = row.insertCell(8),
            cell10 = row.insertCell(9),
            cell11 = row.insertCell(10);
            cell12 = row.insertCell(11),
            cell13 = row.insertCell(12),
            cell14 = row.insertCell(13),
            cell15 = row.insertCell(14),
            cell16 = row.insertCell(15);

            cell1.setAttribute('scope', 'row')


            cell1.innerHTML = objeto.idPersona;
            cell2.innerHTML = objeto.nombre;
            cell3.innerHTML = objeto.apellido;
            cell4.innerHTML = objeto.usuario;
            cell5.innerHTML = objeto.pass;
            cell6.innerHTML = objeto.mail;
            cell7.innerHTML = objeto.dni;
            cell8.innerHTML = objeto.sexo;
            cell9.innerHTML = objeto.direccion;
            cell10.innerHTML = objeto.imagen;
            cell11.innerHTML = objeto.fechaNacimiento;
            cell12.innerHTML = objeto.celular;
            cell13.innerHTML = objeto.telefono;
            cell14.innerHTML = objeto.tipo;
            cell15.innerHTML = `<a href="#" class="btn btn-primary">Editar</a>`
            cell16.innerHTML = `<a href="#" class="btn btn-info">Eliminar</a>`
 }
