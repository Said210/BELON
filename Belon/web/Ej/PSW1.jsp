<%-- 
    Document   : PSW1.jsp
    Created on : 30/04/2014, 06:06:14 PM
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <%
    String Name="";
    String Ap="";
    String Am="";
    String Data="";
            HttpSession Ses = request.getSession();
            if(Ses.getAttribute("Nombre")==null){ 
             out.println("<script type='text/javascript'>window.location='index.jsp';</script>");
            }else{
                Name =(String) Ses.getAttribute("Nombre");
                Ap =(String) Ses.getAttribute("Ap");
                Am =(String) Ses.getAttribute("Am");
                Data =(String) Ses.getAttribute("DATA");
            }
        %>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Perfil | <%= Name %></title>
        <link rel="stylesheet" href="../Resources/Style/Swaggy.css">
	<link rel="stylesheet" href="../Resources/Style/MainStyle.css">
        <link rel="stylesheet" href="../Resources/Style/ScrollexByBP.css">
	<script type="text/javascript" src="../Resources/JS/Ajax.js"></script>
        <script type="text/javascript" src="../Resources/JS/JQuery.js"></script>
	<script type="text/javascript" src="../Resources/JS/Res.js"></script> 
	<script type="text/javascript" src="../Resources/JS/Alert.js"></script>
        <script type="text/javascript" src="../Resources/JS/BLaunch.js"></script>
        <link rel="stylesheet" href="../Resources/Bootstrap/css/bootstrap.css">
        <script type="text/javascript" src="../Resources/Bootstrap/js/bootstrap.js"></script>
	<meta name="viewport" content="width=device-width">
        <script type="text/javascript">
	
	$(window).bind('load', function(){
   		//Page loaded
   		LoadMain3();
   		ResponsiveStuff();
                window.setTimeout('ResponsiveStuff()',100);
	}); 
	</script>
        <script language="JavaScript">

<!-- hide

answer0="C"
answer1="C"
answer2="A"
answer3="B"
answer4="A"
answer5="C"
answer6="A"
answer7="B"
answer8="B"
answer9="C"
answer10="A"
answer11="B"



function test(form) {
        a=0
	window.status=""
        incorrect=""
        if(form.Q1.value=null || form.Q1.value != answer0){
        a=a+1
        incorrect=incorrect+"1, "
        }
        if(form.Q2.value=null || form.Q2.value != answer1){
        a=a+1
        incorrect=incorrect+"2, "
        }
        if(form.Q3.value=null || form.Q3.value != answer2){
        a=a+1
        incorrect=incorrect+"3, "
        }
        if(form.Q4.value=null || form.Q4.value != answer3){
        a=a+1
        incorrect=incorrect+"4, "
        }
        if(form.Q5.value=null || form.Q5.value != answer4){
        a=a+1
        incorrect=incorrect+"5, "
        }
        if(form.Q6.value=null || form.Q6.value != answer5){
        a=a+1
        incorrect=incorrect+"6, "
        }
        if(form.Q7.value=null || form.Q7.value != answer6){
        a=a+1
        incorrect=incorrect+"7, "
        }
        if(form.Q8.value=null || form.Q8.value != answer7){
        a=a+1
        incorrect=incorrect+"8, "
        }
        if(form.Q9.value=null || form.Q9.value != answer8){
        a=a+1
        incorrect=incorrect+"9, "
        }
        if(form.Q10.value=null || form.Q10.value != answer9){
        a=a+1
        incorrect=incorrect+"10, "
        }
        if(form.Q11.value=null || form.Q11.value != answer10){
        a=a+1
        incorrect=incorrect+"11, "
        }
        if(form.Q12.value=null || form.Q12.value != answer11){
        a=a+1
        incorrect=incorrect+"12"
        }
        if (a==0) {window.status="Felicitaciones contesto correcto todo!";
                } else {
	window.status ="Incorrectas:  # " + incorrect+".";
                }       
}

<!-- done hiding from old browsers -->


</script>
	<link rel="shortcut icon" href="../Resources/Power/favicon.ico" />
    </head>
    <body>
    <div id="Maind"></div>
        <div class="row" align="center" style="margin-top: 100px;">
	<div class="col-md-6 col-md-offset-3 FormHolder">
            <form>
    <h2 align="center">Test de Física</h2>
(En este momento la calificación funciona solo con los browser version 4)
    <hr>
    <p>Pregunta #1: Cuando un cuerpo está acelerado, </p>

        <blockquote><input type="radio" name="Q1" value="A" onclick="Q1.value=&quot;A&quot;"> A). su dirección
            nunca cambia.<br>
            <input type="radio" name="Q1" value="B" onclick="Q1.value=&quot;B&quot;"> B). su rapidez
            siempre se incrementa. <br>
            <input type="radio" name="Q1" value="C" onclick="Q1.value=&quot;C&quot;"> C). una fuerza neta debe
            estar actuando sobre él. </blockquote>

    <hr>
    <p>Pregunta #2: La masa de un cuerpo depende de </p>
    
        <blockquote><input type="radio" name="Q2" value="A" onclick="Q2.value=&quot;A&quot;">A). su posición con
            respecto a la superficie de la Tierra. <br>
            <input type="radio" name="Q2" value="B" onclick="Q2.value=&quot;B&quot;">B). de la
            aceleración de la gravedad.<br>
            <input type="radio" name="Q2" value="C" onclick="Q2.value=&quot;C&quot;">C). de su cantidad
            de materia. <br>
            </blockquote>
    
    <hr>
    <p>Pregunta #3: Si conocemos el valor y dirección de la
    fuerza neta aplicada sobre un cuerpo, la segunda Ley de
    Newton es suficiente para calcular su </p>
    
        <blockquote><input type="radio" name="Q3" value="A" onclick="Q3.value=&quot;A&quot;">A). aceleración <br>
            <input type="radio" name="Q3" value="B" onclick="Q3.value=&quot;B&quot;">B). posición. <br>
            <input type="radio" name="Q3" value="C" onclick="Q3.value=&quot;C&quot;">C). velocidad. <br>
            </blockquote>
    
    <hr>
    <p>Pregunta #4: La acción y reacción mencionadas en la
    tercera ley de Newton</p>
    
        <blockquote><input type="radio" name="Q4" value="A" onclick="Q4.value=&quot;A&quot;">A). están aplicadas
            a un mismo cuerpo. <br>
            <input type="radio" name="Q4" value="B" onclick="Q4.value=&quot;B&quot;">B). deben estar
            aplicadas a diferentes cuerpos. <br>
            <input type="radio" name="Q4" value="C" onclick="Q4.value=&quot;C&quot;">C). deben ser
            iguales en magnitud y en dirección. <br>
            </blockquote>
    
    <hr>
    <p>Pregunta #5: De las siguientes longitudes la menor es:</p>
    <blockquote>
        <input type="radio" name="Q5" value="A" onclick="Q5.value=&quot;A&quot;">A). 0.1 mm <br>
            <input type="radio" name="Q5" value="B" onclick="Q5.value=&quot;B&quot;">B). 0.01 pulgadas <br>
            <input type="radio" name="Q5" value="C" onclick="Q5.value=&quot;C&quot;">C). 0.001 m. <br>
   </blockquote>
    <hr>
    <p>Pregunta #6: Un ciclista avanza 12 km en 40 minutos. Su
    velocidad promedio vale: </p>
    
        <blockquote><input type="radio" name="Q6" value="A" onclick="Q6.value=&quot;A&quot;">A). 0.3 km/h <br>
            <input type="radio" name="Q6" value="B" onclick="Q6.value=&quot;B&quot;">B). 8 km/h <br>
            <input type="radio" name="Q6" value="C" onclick="Q6.value=&quot;C&quot;">C). 18 km/h <br>
            </blockquote>
    
    <hr>
    <p>Pregunta #7: ¿Qué tiempo necesita un cuerpo con
    aceleración de 2 m/s<sup>2</sup> para pasar de 10 m/s a 30
    m/s</p>
    
        <blockquote><input type="radio" name="Q7" value="A" onclick="Q7.value=&quot;A&quot;">A). 10 s<br>
            <input type="radio" name="Q7" value="B" onclick="Q7.value=&quot;B&quot;">B). 20 s<br>
            <input type="radio" name="Q7" value="C" onclick="Q7.value=&quot;C&quot;">C). 40 s<br>
            </blockquote>
    
    <hr>
    <p>Pregunta #8: Una pelota es lanzada hacia arriba con una
    velocidad de 12 m/s, élla alcanzará su altura máxima en</p>
    
        <blockquote><input type="radio" name="Q8" value="A" onclick="Q8.value=&quot;A&quot;">A). 0,6 s<br>
            <input type="radio" name="Q8" value="B" onclick="Q8.value=&quot;B&quot;">B). 1,2 s<br>
            <input type="radio" name="Q8" value="C" onclick="Q8.value=&quot;C&quot;">C).1,8 s<br>
            </blockquote>
    
    <hr>
    <p>Pregunta #9: Cuando una fuerza neta de 1 N actua sobre un
    cuerpo de 1 kg, el cuerpo adquiere </p>
    
        <blockquote><input type="radio" name="Q9" value="A" onclick="Q9.value=&quot;A&quot;">A). una velocidad de
            1 m/s.<br>
            <input type="radio" name="Q9" value="B" onclick="Q9.value=&quot;B&quot;">B). una aceleración
            de 1 m/s<sup>2</sup>.<br>
            <input type="radio" name="Q9" value="C" onclick="Q9.value=&quot;C&quot;">C). una aceleración
            de 9,8 m/s<sup>2</sup>.<br>
            </blockquote>
    
    <hr>
    <p>Pregunta #10: Cuando una fuerza neta de 1 N actúa sobre
    un cuerpo de peso 1 N, el cuerpo adquiere</p>
    
        <blockquote><input type="radio" name="Q10" value="A" onclick="Q10.value=&quot;A&quot;">A). una velocidad
            de 1 m/s.<br>
            <input type="radio" name="Q10" value="B" onclick="Q10.value=&quot;B&quot;">B). una
            aceleración de 0,1 m/s<sup>2</sup>.<br>
            <input type="radio" name="Q10" value="C" onclick="Q10.value=&quot;C&quot;">C). una
            aceleración de 9.8 m/s<sup>2</sup>. </blockquote>
    
    <hr>
    <p>Pregunta #11: Una fuerza comunica a un cuerpo de 100 kg
    una aceleración de 2 m/s<sup>2</sup>. La misma fuerza
    comunicará a un cuerpo de 1000 kg una aceleración de</p>
    
        <blockquote><input type="radio" name="Q11" value="A" onclick="Q11.value=&quot;A&quot;">A). 0.2 m/s<sup>2</sup>.<br>
            <input type="radio" name="Q11" value="B" onclick="Q11.value=&quot;B&quot;">B). 2 m/s<sup>2</sup>.<br>
            <input type="radio" name="Q11" value="C" onclick="Q11.value=&quot;C&quot;">C). 20 m/s<sup>2</sup>.
        </blockquote>
    
    <hr>
    <p>Pregunta #12: La masa de un ciclista junto con su bicicleta es de 80 kg; si su velocidad es de 6 m/s,la fuerza necesaria para detenerse en 10 s debe ser</p>
    
        <blockquote><input type="radio" name="Q12" value="A" onclick="Q12.value=&quot;A&quot;">A). 40 N<br>
            <input type="radio" name="Q12" value="B" onclick="Q12.value=&quot;B&quot;">B). 48 N<br>
            <input type="radio" name="Q12" value="C" onclick="Q12.value=&quot;C&quot;">C). 60 N<br>
            </blockquote>
    
    <hr>
    <p><input type="button" name="submit" value="Resultado" onclick="test(this.form)"> <input type="reset" name="reset" value="Borrar Todo" onclick="window.status=''"></p>
</form>
        </div></div>
    </body>
</html>
