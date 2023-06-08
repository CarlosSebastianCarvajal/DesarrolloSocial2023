$(document).ready(function () {
    $('#btn-action-recomendacion').click(function () {
        validarRec();
    });
    document.getElementById("txt-tabla-datos-recomendacion").value = '';
    limpiarRec();
});

var filaMetodo;
var aumentoRec = 1;
var stringtablaRec = '';

function validarRec()
{
    if (document.getElementById("txt-recomendacion").value.length > 0 && document.getElementById("txt-rec-indicacion").value.length > 0) {
        tablaRec(document.getElementById("txt-recomendacion").value, document.getElementById("txt-rec-indicacion").value);
    } else {
        alert("LLENAR LOS CAMPOS");
    }
}
function tablaRec(parametroUno, parametroDos)
{
    filaMetodo = '<tr class="selected" id="fila' + aumentoRec + '" onclick=""><td>' + aumentoRec + '</td><td>'
            + parametroUno + '</td><td>' + parametroDos + '</td><td>' + "   \n\
<input type='button' class='agre' value='Modificar' onclick='modificarRec(" + aumentoRec + ")'>" +
            '</td><td>' + "<button type=\"button\" class='elimar' onclick='eliminarRec(" + aumentoRec + ")'>Eliminar</button>" + '</td></tr>';
    $('#tablaRecomendacion').append(filaMetodo);
    leerTablaRec();
    aumentoRec++;
    limpiarRec();
}
function limpiarRec()
{
    document.getElementById("txt-recomendacion").value = "";
    document.getElementById("txt-rec-indicacion").value = "";
}
function eliminarRec(id)
{
    for (var i = 0; i < document.getElementById("tablaRecomendacion").rows.length; i++)
    {
        if (document.getElementById("tablaRecomendacion").rows[i].cells[0].innerHTML.trim() === id.toString())
        {
            var firstRow = document.getElementById("tablaRecomendacion");
            firstRow.deleteRow(i);
            leerTablaRec();
            /* aumento--;
             if (document.getElementById("tabla").rows.length === 0)
             {
             aumento = 0;
             alert("de nuevo");
             }*/
        }
    }
}

function modificarRec(id)
{
    for (var i = 0; i < document.getElementById("tablaRecomendacion").rows.length; i++)
    {
        if (document.getElementById("tablaRecomendacion").rows[i].cells[0].innerHTML.trim() === id.toString())
        {
            document.getElementById("txt-recomendacion").value = document.getElementById("tablaRecomendacion").rows[i].cells[1].innerHTML;
            document.getElementById("txt-rec-indicacion").value = document.getElementById("tablaRecomendacion").rows[i].cells[2].innerHTML;
            eliminarRec(id);
            leerTablaRec();
        }
    }
}

function leerTablaRec(){
    stringtablaRec = '<';
    for (var i = 1; i < document.getElementById("tablaRecomendacion").rows.length; i++)
    {
        if(i === 1){
            stringtablaRec = stringtablaRec + '(';
        }else{
            stringtablaRec = stringtablaRec + ',(';
        }
        stringtablaRec = stringtablaRec + '"actividad":"' + document.getElementById("tablaRecomendacion").rows[i].cells[1].innerHTML + '",';
        stringtablaRec = stringtablaRec + '"indicacion":"' + document.getElementById("tablaRecomendacion").rows[i].cells[2].innerHTML + '"';
        
        stringtablaRec = stringtablaRec + ')';
    }
    stringtablaRec = stringtablaRec + '>';
    document.getElementById("txt-tabla-datos-recomendacion").value = stringtablaRec;
}


