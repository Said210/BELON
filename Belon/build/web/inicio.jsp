
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <HEAD>
         <meta charset="utf-8">
        <TITLE>Iniciar Sesión</TITLE>
        <link rel="stylesheet" href="Resources/Style/Swaggy.css">
	<link rel="stylesheet" href="Resources/Style/MainStyle.css">
	<link rel="stylesheet" href="Resources/Style/ScrollexByBP.css">
	<link rel="stylesheet" href="Resources/Style/Forms.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script type="text/javascript" src="Resources/JS/JQuery.js"></script>
	<script type="text/javascript" src="Resources/JS/Ajax.js"></script>
	<script type="text/javascript" src="Resources/JS/Res.js"></script> 
	<script type="text/javascript" src="Resources/JS/Alert.js"></script>
        <script type="text/javascript" src="Resources/JS/BLaunch.js"></script>
        <link rel="stylesheet" href="Resources/Bootstrap/css/bootstrap.css">
        <script type="text/javascript" src="Resources/Bootstrap/js/bootstrap.js"></script>
	<meta name="viewport" content="width=device-width">
	<script type="text/javascript">
	
	$(window).bind('load', function(){
   		//Page loaded
   		LoadMain();
   		ResponsiveStuff();
         <%
             HttpSession Ses = request.getSession();
            if(Ses.getAttribute("Nombre")!=null){ 
             out.println("window.location='Profile.jsp';");
            }
        %>
	}); 
	window.setTimeout('ResponsiveStuff()',100);
	window.setTimeout('juroSolemnemente()',100);
	
	</script>
    <link rel="shortcut icon" href="Resources/Power/favicon.ico" />
    </HEAD>
<body>
	<div id="Maind"></div>
	
           
        
          <div class="FormHolder"><form name="Formita" method="POST" action="LogIn">
		<span class="title">Iniciar Sesi&oacute;n</span>
		<br /><br />
		<span>Usuario:</span><br /> <input type="email" name="User" required id="User" maxlength="40"><br /><br /><br />
		<span>Password:</span> <br /> <input type="password" name="Pass" required id="Pass" maxlength="20"><br /><br /><br />
		<input type="submit" name="Enviar" value="Enviar">
		<br />
	</form>
           <%
              if(request.getParameter("Er")==null){
              }else{
                    out.print("<div class='bs-callout bs-callout-danger'>"+
    "<h4><span class='glyphicon glyphicon-exclamation-sign'></span>&nbsp;&nbsp;&nbsp;&nbsp;¡Error en sus datos!</h4>"+
    "<p>Por favor revise los datos ingresados.</p>"+
  "</div>");
              }
          
        %></div>	
</body>
<html>