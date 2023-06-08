$(document).ready(function () {
    $('#btn-action-receta').click(function () {
        validar();
    });
    document.getElementById("txt-tabla-datos-medicamentos").value = '';
    limpiar();
});

var filaMetodo;
var aumento = 1;
var stringtabla = '';

function validar()
{
    if (document.getElementById("txt-medicamento").value.length > 0 && document.getElementById("txt-med-indicacion").value.length > 0) {
        tabla(document.getElementById("txt-medicamento").value, document.getElementById("txt-med-indicacion").value);
    } else {
        alert("LLENAR LOS CAMPOS");
    }
}
function tabla(parametroUno, parametroDos)
{
    filaMetodo = '<tr class="selected" id="fila' + aumento + '" onclick=""><td>' + aumento + '</td><td>'
            + parametroUno + '</td><td>' + parametroDos + '</td><td>' + "   \n\
<input type='button' class='agre' value='Modificar' onclick='modificar(" + aumento + ")'>" +
            '</td><td>' + "<button type=\"button\" class='elimar' onclick='eliminar(" + aumento + ")'>Eliminar</button>" + '</td></tr>';
    $('#tablaReceta').append(filaMetodo);
    leerTabla();
    aumento++;
    limpiar();
}
function limpiar()
{
    document.getElementById("txt-medicamento").value = "";
    document.getElementById("txt-med-indicacion").value = "";
}
function eliminar(id)
{
    for (var i = 0; i < document.getElementById("tablaReceta").rows.length; i++)
    {
        if (document.getElementById("tablaReceta").rows[i].cells[0].innerHTML.trim() === id.toString())
        {
            var firstRow = document.getElementById("tablaReceta");
            firstRow.deleteRow(i);
            leerTabla();
            /* aumento--;
             if (document.getElementById("tabla").rows.length === 0)
             {
             aumento = 0;
             alert("de nuevo");
             }*/
        }
    }
}

function modificar(id)
{
    for (var i = 0; i < document.getElementById("tablaReceta").rows.length; i++)
    {
        if (document.getElementById("tablaReceta").rows[i].cells[0].innerHTML.trim() === id.toString())
        {
            document.getElementById("txt-medicamento").value = document.getElementById("tablaReceta").rows[i].cells[1].innerHTML;
            document.getElementById("txt-med-indicacion").value = document.getElementById("tablaReceta").rows[i].cells[2].innerHTML;
            eliminar(id);
            leerTabla();
        }
    }
}

function leerTabla(){
    stringtabla = '<';
    for (var i = 1; i < document.getElementById("tablaReceta").rows.length; i++)
    {
        if(i === 1){
            stringtabla = stringtabla + '(';
        }else{
            stringtabla = stringtabla + ',(';
        }
        stringtabla = stringtabla + '"medicamento":"' + document.getElementById("tablaReceta").rows[i].cells[1].innerHTML + '",';
        stringtabla = stringtabla + '"indicacion":"' + document.getElementById("tablaReceta").rows[i].cells[2].innerHTML + '"';
        
        stringtabla = stringtabla + ')';
    }
    stringtabla = stringtabla + '>';
    document.getElementById("txt-tabla-datos-medicamentos").value = stringtabla;
}




