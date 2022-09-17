<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MI PRIMER FORMULARIO VALIDADO</title>
        <script>
            function Salir(){
                window.close();
            }
            function procesar(){
                var texto, operacion;
                texto = document.EMPRESA.txttexto.value;
                operacion=document.EMPRESA.op.value;
                op=parseInt(operacion);
                if(operacion.length  === 0 && texto.length !== 0){
                    alert("Elija la operacion");
                    document.EMPRESA.op.focus();
                    return;
                }else{
                    if(operacion.length !== 0 && texto.length === 0){
                        alert("Digite el texto");
                        docuemtn.EMPRESA.txttexto.focus();
                        return;
                    }else{
                        if(operacion.length === 0 && texto.length === 0){
                            alert("Elija y digite todos los campos");
                            document.EMPRESA.op.focus();
                            return;
                        }else{
                            alert("Operacion Realizada satisfactoriamente");
                        }
                    }
                }
            }
        </script>
    </head>
    <body bgcolor="orange">
        <form name="EMPRESA">
            <center><br><br><br><br>
                <table border="5">
                    <tr>
                        <td>
                            Operacion :
                        </td>
                        <td>
                            <select name="op">
                                <option value="" selected>----------------------------</option>
                                <option value="1">MAYUSCULA</option>
                                <option value="2">MINUSCULA</option>                                
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Texto :
                        </td>
                        <td>
                            <input type="text" name="txttexto">
                        </td>                        
                    </tr>
                </table>
                <table><br>
                    <tr>
                        <td>
                            <input type="button" value="Procesar" onclick="procesar()">
                        </td>
                        <td>
                            <input type="button" value="Salir" onclick="Salir()">
                        </td>
                    </tr>
                
                </table>
            </center>
        </form>
    </body>
</html>
