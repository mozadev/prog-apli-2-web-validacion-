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
            function Entrar(){
                var nombre, apellido;
                nombre = document.EMPRESA.txtnombre.value;
                apellido=document.EMPRESA.txtapellido.value;
                if(nombre.length  === 0 && apellido.length !== 0){
                    alert("Digite por favor el nombre");
                    document.EMPRESA.txtnombre.focus();
                    return;
                }else{
                    if(nombre.length !== 0 && apellido.length === 0){
                        alert("Digite por favor el apellido");
                        docuemtn.EMPRESA.txtapellido.focus();
                        return;
                    }else{
                        if(nombre.length === 0 && apellido.length === 0){
                            alert("Digite por favor todos los campos");
                            document.EMPRESA.txtnombre.focus();
                            return;
                        }else{
                            alert("Operacion Realizada satisfactoriamente");
                        }
                    }
                }
            }
        </script>
    </head>
    <body bgcolor="green">
        <form name="EMPRESA">
            <center><br><br><br><br>
                <table border="5">
                    <tr>
                        <td>
                            Nombre :
                        </td>
                        <td>
                            <input type="text" name ="txtnombre">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Apellido :
                        </td>
                        <td>
                            <input type="text" name="txtapellido">
                        </td>                        
                    </tr>
                </table>
                <table><br>
                    <tr>
                        <td>
                            <input type="button" value="Enviar" onclick="Entrar()">
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
