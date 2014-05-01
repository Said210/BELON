<%-- 
    Document   : index
    Created on : 22/04/2014, 12:15:20 PM
    Author     : Diego
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
        <link rel="stylesheet" href="Resources/Style/Swaggy.css">
	<link rel="stylesheet" href="Resources/Style/MainStyle.css">
        <link rel="stylesheet" href="Resources/Style/ScrollexByBP.css">
	<script type="text/javascript" src="Resources/JS/Ajax.js"></script>
        <script type="text/javascript" src="Resources/JS/JQuery.js"></script>
	<script type="text/javascript" src="Resources/JS/Res.js"></script> 
	<script type="text/javascript" src="Resources/JS/Alert.js"></script>
        <script type="text/javascript" src="Resources/JS/BLaunch.js"></script>
        <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.css">
        <script type="text/javascript" src="Resources/Bootstrap/js/bootstrap.js"></script>
	<meta name="viewport" content="width=device-width">
        <script type="text/javascript">
	
	$(window).bind('load', function(){
   		//Page loaded
   		LoadMain2();
   		ResponsiveStuff();
   		var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
		if(is_chrome!=true){
			//alert('no es chrome');
			$('.AlertJH').attr('class','AlertJ');
		}else{
			//alert('es chrome');
		}
                window.setTimeout('ResponsiveStuff()',100);
	}); 
	</script>
	<link rel="shortcut icon" href="Resources/Power/favicon.ico" />
    </head>
    <body>
        <div class="AlertJH">
	<div class="AlertControlCenterH" onclick="HideAlert()"></div>
<div class="alertBody">
	<div class="AlertTitle"><span  id="AlertTitleCont">Ups!</span></div>
	<div class="AlertCont"><img src="Resources/Img/Chrome.png" draggable="false" width="200px" />
	<span id="AlertContID">
		Vemos que <b>no usas chrome</b>, no tenemos nada en contra, pero, para disfrutar por completo el sistema te recomendamos lo uses, <b>gracias</b>.
	</span>
	</div>
	<div class="AlertButton" onclick="HideAlert()">Okey</div>
</div>
</div>
    <div id="Maind"></div>
    
    <div class="ProfInfo">
    <section class="Cover trans">
        <img src="Resources/Img/ProfileDef.jpg" id="PP" class="PP" />
        <br /><span id="Name"><%=Name%></span> <br /><span id="Gr"><%=Data%></span>
    </section>
        <table class="StatusBar" cellspacing="0">
            <tr>
                <td>Progreso</td><td>Ejercicios</td><TD>Galletitas</TD>
            </tr>
            <tr>
                <td id="prog">100</td><td id="Nej">6</td><TD id="Gall">6</TD>
            </tr>
        </table>
        <img class="achievement" src="Resources/Img/achievement.png" />
        <img class="achievement" src="Resources/Img/achievement.png" />
        <img class="achievement" src="Resources/Img/achievement.png" />
        <img class="achievement" src="Resources/Img/achievement.png" />
        <img class="achievement" src="Resources/Img/achievement.png" />
        <img class="achievement" src="Resources/Img/achievement.png" />
        
    </div>
    <div class="EjList trans">
        <div id="NameHero"><%=Name%>&nbsp;<%=Ap%>&nbsp;<%=Am%> - <%= Data%></div>
        <table class="table table-hover">
            <tr><td>Memin</td></tr>
            <tr><td>Pinguin</td></tr>
             <tr><td>Memin</td></tr>
            <tr><td>Pinguin</td></tr>
             <tr><td>Memin</td></tr>
            <tr><td>Pinguin</td></tr>
             <tr><td>Memin</td></tr>
            <tr><td>Pinguin</td></tr>
        </table>
    </div>
    </body>
</html>
