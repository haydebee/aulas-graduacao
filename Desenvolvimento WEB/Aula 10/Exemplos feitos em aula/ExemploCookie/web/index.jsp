<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Informe o seus dados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <style>
            /*https://developer.mozilla.org/en-US/docs/Web/CSS/justify-content*/
             /*Forma simpels de centralizar algum componente no meio da tela*/
            .flex-box {
               display: flex;
               align-items: center;
               justify-content: center;
             }

            /*
            .centraliza {
                position: absolute;
                left: 40%;
                top: 30%
            }
            */
            
            label {
                font-size: 22px;  
            }
            
            /*
                Modificamos dois determinados tipos de inputs para deixar a 
                aparência mais agradável.
                Border-radius: arredondadar as pontas;
                box-shadow: Cria sombra por volta do elemento
            */
            input[type=text], input[type=password]{   
                border-radius:4px;
                box-shadow: 2px 2px 4px #333333;    
                background: #cccccc; 
                border:1px solid #000000;
                width:100%;
                height: 30px;
                font-size: 18px;
            }
            
            /*
                Altera a area de texto internamento
            */
            textarea{
                border: 1px solid #AAFF00;
                background:#cccccc;
                border-radius:4px;
                box-shadow: 5px 5px 5px #333333; 
            }
            
            /*
             O uso do hover é para modificar alguma coisa quando o mouse passa por ela
            aqui estamos somente modificando o background
            */
            input[type=text]:hover, input[type=password]:hover, textarea:hover{ 
                     background: #ffffff; border:1px solid #990000;
            }
            
            input[type=submit]:hover {
                background:#556600;
            }
            
            input[type=submit]{
                width: 100px;
                height: 40px;
                background:#006699;
                color:#ffffff;
                font-weight: bold;
                border-radius:10px;
            }
        </style>
    </head>
    <body>
        
        <div class="flex-box">
            <form action="criandocookie.jsp" method="POST">
                <h2>Informe seu nome e sobrenome</h2>
                <label for="pnome">Primeiro nome:</label><br>
                <input type="text" id="pnome" name="primeiroNome"><br><br>
                <label for="unome">Último nome:</label><br>
                <input type="text" id="unome" name="ultimoNome">
                <br><br>
                <center>
                    <input style="margin-right: 10px;" type="submit" 
                           value="Enviar" id="btnEnviar" name="btnEnviar" >
                </center>
            </form>
        </div>
        
    </body>
</html>

