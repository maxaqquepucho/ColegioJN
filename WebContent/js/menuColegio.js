
let url = 'ws://'+window.location.hostname+':8080/ColegioA/UsuarioWebSocket',
    ws = new WebSocket(url),
 btnAgregar = document.getElementById("btnAgregar");

 /*NO TOCAR ESTA VARIABLE*/  let indiceFilaSelecionaHija = 0;

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

 function ultimoIDFila(){
     const usuariosColegio = document.querySelector('#usuariosColegio');
     let lastID = parseInt(usuariosColegio.lastElementChild.firstElementChild.textContent);
     return lastID+1;
 }

 function agregarEditarFila() {
     let datos = {
         accion: btnAgregar.value,
         ultimoIDFila: ultimoIDFila(),
         idFilaRow: indiceFilaSelecionaHija,
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


            cell1.innerHTML = objeto.ultimoIDFila;
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
            cell15.innerHTML = `<a href="javascript:void(0)" class="btn btn-primary" onclick="editarFilaRow(this)">Editar</a>`
            cell16.innerHTML = `<a href="javascript:void(0)" class="btn btn-info" onclick="eliminarFila(this)">Eliminar</a>`
             limpiarCampos();
 }

 function eliminarFila(t){
     let td = t.parentNode;
     let tr = td.parentNode;
     var table = tr.parentNode;

     let datos = {
         accion: 'Eliminar',
         idPersona: tr.children[0].textContent,
         indiceFila: tr.sectionRowIndex
     };

     ws.send(JSON.stringify(datos));
 }


 function editarFilaRow(t) {
     let td = t.parentNode;
     let fila = td.parentNode;


    idUsuario.value = fila.children[0].textContent;
    nombre.value = fila.children[1].textContent;
    apellido.value = fila.children[2].textContent;
    usuario.value = fila.children[3].textContent;
    pass.value = fila.children[4].textContent;
    mail.value = fila.children[5].textContent;
    dni.value = fila.children[6].textContent;
    sexo.value = fila.children[7].textContent;
    direccion.value = fila.children[8].textContent;
    imagen.value = fila.children[9].textContent;
    fechaNacimiento.value = fila.children[10].textContent;
    celular.value = fila.children[11].textContent;
    telefono.value = fila.children[12].textContent;
    tipo.value = fila.children[13].textContent;
    indiceFilaSelecionaHija = fila.sectionRowIndex;
    btnAgregar.value = "Editar";

    console.log(indiceFilaSelecionaHija);
 }

 function mensajeEliminarFila(objeto) {
     let tablaPersona = document.querySelector('#usuariosColegio');
     tablaPersona.children[objeto.indiceFila].remove();
     console.log('Se elimino la fila: '+objeto.indiceFila);
 }

 function mensajeEditarFila(objeto) {
     let tablaPersona = document.querySelector('#usuariosColegio');
     let fila = tablaPersona.children[objeto.idFilaRow];
     let celda = fila.getElementsByTagName('td');

     celda[1].innerHTML = objeto.nombre;
     celda[2].innerHTML = objeto.apellido;
     celda[3].innerHTML = objeto.usuario;
     celda[4].innerHTML = objeto.pass;
     celda[5].innerHTML = objeto.mail;
     celda[6].innerHTML = objeto.dni;
     celda[7].innerHTML = objeto.sexo;
     celda[8].innerHTML = objeto.direccion;
     celda[9].innerHTML = objeto.imagen;
     celda[10].innerHTML = objeto.fechaNacimiento;
     celda[11].innerHTML = objeto.celular;
     celda[12].innerHTML = objeto.telefono;
     celda[13].innerHTML = objeto.tipo;

     btnAgregar.value = 'Agregar';
     limpiarCampos();
 }

 function limpiarCampos(){
     idUsuario.value = ''
     nombre.value = ''
     apellido.value = ''
     usuario.value = ''
     pass.value = ''
     mail.value = ''
     dni.value = ''
     sexo.value = ''
     direccion.value = ''
     imagen.value = ''
     fechaNacimiento.value = ''
     celular.value = ''
     telefono.value = ''
     tipo.value = ''
     indiceFilaSelecionaHija = 0
 }
