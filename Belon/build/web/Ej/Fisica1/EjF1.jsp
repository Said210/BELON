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
             out.println("<script type='text/javascript'>window.location='../../index.jsp';</script>");
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
        <link rel="stylesheet" href="../../Resources/Style/Swaggy.css">
	<link rel="stylesheet" href="../../Resources/Style/MainStyle.css">
        <link rel="stylesheet" href="../../Resources/Style/Forms.css">
        <link rel="stylesheet" href="../../Resources/Style/ScrollexByBP.css">
	<script type="text/javascript" src="../../Resources/JS/Ajax.js"></script>
        <script type="text/javascript" src="../../Resources/JS/JQuery.js"></script>
	<script type="text/javascript" src="../../Resources/JS/Res.js"></script> 
	<script type="text/javascript" src="../../Resources/JS/Alert.js"></script>
        <script type="text/javascript" src="../../Resources/JS/BLaunch.js"></script>
        <link rel="stylesheet" href="../../Resources/Bootstrap/css/bootstrap.css">
        <script type="text/javascript" src="../../Resources/Bootstrap/js/bootstrap.js"></script>
	<meta name="viewport" content="width=device-width">
        <script type="text/javascript">
	
	$(window).bind('load', function(){
   		//Page loaded
   		LoadMain3();
   		ResponsiveStuff();
                window.setTimeout('ResponsiveStuff()',100);
                window.setTimeout('juroSolemnemente2()',100);
	}); 
	</script>
        <script language="JavaScript">

<!-- hide

var answer0="C";
var answer1="C";
var answer2="A";
var answer3="B";
var answer4="A";
var answer5="C";
var answer6="A";
var answer7="B";
var answer8="B";
var answer9="C";
var answer10="A";
var answer11="B";



function test(form) {
        var a=0;
        var incorrect="";
        if(form.Q1.value===null || form.Q1.value !== answer0){
        a=a+1;
        incorrect=incorrect+"1, ";
        }
        if(form.Q2.value===null || form.Q2.value !== answer1){
        a=a+1;
        incorrect=incorrect+"2, ";
        }
        if(form.Q3.value===null || form.Q3.value !== answer2){
        a=a+1;
        incorrect=incorrect+"3, ";
        }
        if(form.Q4.value===null || form.Q4.value !== answer3){
        a=a+1;
        incorrect=incorrect+"4, ";
        }
        if(form.Q5.value===null || form.Q5.value !== answer4){
        a=a+1;
        incorrect=incorrect+"5, ";
        }
        if(form.Q6.value===null || form.Q6.value !== answer5){
        a=a+1;
        incorrect=incorrect+"6, ";
        }
        if(form.Q7.value===null || form.Q7.value !== answer6){
        a=a+1;
        incorrect=incorrect+"7, ";
        }
        if(form.Q8.value===null || form.Q8.value !== answer7){
        a=a+1;
        incorrect=incorrect+"8, ";
        }
        if(form.Q9.value===null || form.Q9.value !== answer8){
        a=a+1;
        incorrect=incorrect+"9, ";
        }
        if(form.Q10.value===null || form.Q10.value !== answer9){
        a=a+1;
        incorrect=incorrect+"10, ";
        }
        if(form.Q11.value===null || form.Q11.value !== answer10){
        a=a+1;
        incorrect=incorrect+"11, ";
        }
        if(form.Q12.value===null || form.Q12.value !== answer11){
        a=a+1;
        incorrect=incorrect+"12";
        }
        if (a===0) {alert("Felicitaciones contesto correcto todo!");
                } else {
             var asp=(a*10)/12;
	alert("Calificación de " + asp+".");
                }       
}

<!-- done hiding from old browsers -->


</script>
	<link rel="shortcut icon" href="../Resources/Power/favicon.ico" />
    </head>
    <body>
    <div id="Maind"></div>
        <div class="row" align="center" style="margin-top: 100px;">
	<div class="col-md-6 col-md-offset-3 EjHolder">
            <form>
    <h2 align="center">Cuestionario 1 | Física</h2>
    
    <p>Pregunta #1: Cuando un cuerpo está acelerado, </p>

        <select name="Q1" class="form-control">
        <option value="A" > A). su dirección
            nunca cambia</option>
            <option value="B" > B). su rapidez
            siempre se incrementa.</option>
            <option value="C"> C). una fuerza neta debe
            estar actuando sobre él. </select>


    <hr>
    <p>Pregunta #2: La masa de un cuerpo depende de </p>
    
        <select name="Q2" class="form-control">
        <option value="A" >A). su posición con
            respecto a la superficie de la Tierra.</option>
            <option value="B">B). de la
            aceleración de la gravedad</option>
            <option value="C">C). de su cantidad
            de materia.</option>
            </select>

    
    <hr>
    <p>Pregunta #3: Si conocemos el valor y dirección de la
    fuerza neta aplicada sobre un cuerpo, la segunda Ley de
    Newton es suficiente para calcular su </p>
    
        <select name="Q3" class="form-control">
        <option value="A" >A). aceleración</option>
            <option value="B" >B). posición.</option>
            <option value="C">C). velocidad.</option>
            </select>

    
    <hr>
    <p>Pregunta #4: La acción y reacción mencionadas en la
    tercera ley de Newton</p>
    
        <select name="Q4" class="form-control">
        <option value="A" >A). están aplicadas
            a un mismo cuerpo.</option>
            <option value="B" >B). deben estar
            aplicadas a diferentes cuerpos.</option>
            <option value="C" >C). deben ser
            iguales en magnitud y en dirección.</option>
            </select>

    
    <hr>
    <p>Pregunta #5: De las siguientes longitudes la menor es:</p>
    <select name="Q5" class="form-control">

        <option value="A" >A). 0.1 mm</option>
            <option value="B" >B). 0.01 pulgadas</option>
            <option value="C" >C). 0.001 m.</option>
   </select>

    <hr>
    <p>Pregunta #6: Un ciclista avanza 12 km en 40 minutos. Su
    velocidad promedio vale: </p>
    
    <select name="Q6" class="form-control">
        <option value="A" >A). 0.3 km</hoption>
            <option value="B" >B). 8 km</hoption>
            <option value="C" >C). 18 km</hoption>
            </select>

    
    <hr>
    <p>Pregunta #7: ¿Qué tiempo necesita un cuerpo con
    aceleración de 2 m/s<sup>2</sup> para pasar de 10 m/s a 30
    m/s</p>
    
        <select name="Q7" class="form-control">
        <option value="A" >A). 10 </option>
            <option value="B" >B). 20 </option>
            <option value="C" >C). 40 </option>
            </select>

    
    <hr>
    <p>Pregunta #8: Una pelota es lanzada hacia arriba con una
    velocidad de 12 m/s, élla alcanzará su altura máxima en</p>
    
        <select name="Q8" class="form-control">
        <option value="A" >A). 0,6 </option>
            <option value="B" >B). 1,2 </option>
            <option value="C" >C).1,8 </option>
            </select>

    
    <hr>
    <p>Pregunta #9: Cuando una fuerza neta de 1 N actua sobre un
    cuerpo de 1 kg, el cuerpo adquiere </p>
    
        <select name="Q9" class="form-control">
        <option value="A" >A). una velocidad de
            1 m</soption>
            <option value="B" >B). una aceleración
            de 1 m/s<sup>2</sup><option>
            <option value="C" >C). una aceleración
            de 9,8 m/s<sup>2</sup><option>
            </select>

    
    <hr>
    <p>Pregunta #10: Cuando una fuerza neta de 1 N actúa sobre
    un cuerpo de peso 1 N, el cuerpo adquiere</p>
    
        <select name="Q10" class="form-control">
        <option value="A">A). una velocidad
            de 1 m/s.</option>
            <option value="B">B). una
            aceleración de 0,1 m/s<sup>2</sup>.</option>
            <option value="C">C). una
            aceleración de 9.8 m/s<sup>2</sup>.</option> </select>

    
    <hr>
    <p>Pregunta #11: Una fuerza comunica a un cuerpo de 100 kg
    una aceleración de 2 m/s<sup>2</sup>. La misma fuerza
    comunicará a un cuerpo de 1000 kg una aceleración de</p>
    
        <select name="Q11" class="form-control">
        <option value="A">A). 0.2 m/s<sup>2</sup>.</option>
            <option value="B">B). 2 m/s<sup>2</sup>.</option>
            <option value="C">C). 20 m/s<sup>2</sup>.</option>
        </select>

    
    <hr>
    <p>Pregunta #12: La masa de un ciclista junto con su bicicleta es de 80 kg; si su velocidad es de 6 m/s,la fuerza necesaria para detenerse en 10 s debe ser</p>
    
        <select name="Q12" class="form-control">
        <option value="A">A). 40 N</option>
            <option value="B">B). 48 N</option>
            <option value="C">C). 60 N</option>
            </select>

    
    <hr>
    <p><input type="button" name="submit"class="btn btn-success" value="Resultado" onclick="test(this.form)"> <input type="reset" class="btn btn-primary" name="reset" value="Borrar Todo"></p>
</form>
        </div></div>
    </body>
</html>
