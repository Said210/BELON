<html>
<HEAD>
        <TITLE>Registro</TITLE>
          <%
            HttpSession Ses = request.getSession();
            if(Ses.getAttribute("Nombre")!=null){ 
             out.println("<script type='text/javascript'>window.location='Profile.jsp';</script>");
            }
        %>
        <meta charset="utf-8">
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
        <script type="text/javascript" src="Resources/JS/Validaciones.js"></script>
        <script type="text/javascript" src="Resources/JS/0b5500bac02d9451a386826277432a7d.js"></script>
	<script type="text/javascript">
	
	$(window).bind('load', function(){
   		//Page loaded
   		LoadMain();
   		ResponsiveStuff();
	}); 
	window.setTimeout('ResponsiveStuff()',100);
	window.setTimeout('juroSolemnemente()',100);
        function CleanSt(a){
            $(a).css('background','#fff');
        }
	</script>
    <link rel="shortcut icon" href="Resources/Power/favicon.ico" />
    </HEAD>
<body>
	<div id="Maind"></div>
	<div class="FormHolder">
            <form name="Morro" method="POST" id="RegAlumno">
		<span class="title">Registrar Alumno</span>
		<table align="center">
                    <tr><td>Nombre: </td><td><input class="trans" onkeydown="CleanSt(this)" type="text" name="Nom" id="Nombre" maxlength="20"></td></tr>
		<tr><td>Apellido Paterno: </td><td><input class="trans" onkeydown="CleanSt(this)" type="text" name="Pat" id="Appat" maxlength="20">	</td></tr>
		<tr><td>Apellido Materno: </td><td> <input class="trans" onkeydown="CleanSt(this)" type="text" name="Mat" id="Apmat" maxlength="20"></td></tr>
        <tr><td>Boleta:</td><td>
			
			 <input class="trans" onkeydown="CleanSt(this)" type="text" name="Boleta" id="Boleta" maxlength="10">

			</td></tr>
		<tr><td>Sexo:</td><td>
		<label class="Select">
			<select name="Sexo" id="Sexo">
  				<option value="Masculino">Masculino</option>
  				<option value="Femenino">Femenino</option>
  				<option value="Otro">Otro</option>
			</select></label>
		</td></tr>	
		<tr><td>Correo: </td><td> <input class="trans" onkeydown="CleanSt(this)" type="email" name="User" id="User" maxlength="50"></td></tr>
                <tr><td>Password: </td><td> <input class="trans" onkeydown="CleanSt(this)" type="password" name="Pass" id="Pass" maxlength="20"></td></tr>
		<tr><td colspan="2" align="center"><input class="trans"  type="button" onclick="Alumnos()" name="Enviar" value="Enviar">&nbsp;&nbsp;
                        <input class="trans" onclick="launchB('inicio.jsp')" type="button" value="Iniciar Sesion" /></td></tr>
		</table>
	</form></div>	
</body>
<html>