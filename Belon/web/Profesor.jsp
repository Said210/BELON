<HTML>
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
	<script type="text/javascript">
	
	$(window).bind('load', function(){
   		//Page loaded
   		LoadMain();
   		ResponsiveStuff();
   		var is_chrome = navigator.userAgent.toLowerCase().indexOf('chrome') > -1;
		if(is_chrome!=true){
			//alert('no es chrome');
			$('.AlertJH').attr('class','AlertJ');
		}else{
			//alert('es chrome');
		}
                window.setTimeout('ResponsiveStuff()',100);
                window.setTimeout('juroSolemnemente()',100);
	}); 
	
	</script>
    <link rel="shortcut icon" href="Resources/Power/favicon.ico" />
    </HEAD>

    <BODY>
        <div id="Maind"></div>
        <div class="FormHolder" align="center">
        <span class="title">Registrar Profesor</span>
        
        <form name="Profe" method="POST" id="Prof">
        	<table align="center" cellspacing="10">
        		<tr>
        			<td>No. Empleado: </td>
                                <td><input class="trans" type="text" name="Num" maxlength="10"></td>
        		</tr>
        		<tr>
        	<td>Materia Impartida:</td>
        	<td>
        	<label class="select"><select name="Mate">
        		<option value="PSW">PSW</option>
        		<option value="Fisica 1">Física I</option>
        	</select></label></td></tr>
        	<tr>
        	<td>Nombre: </td><td><input class="trans" type="text" name="Nom" maxlength="20"></td>
        	</tr>
        	<tr>
                    <td>Apellido Paterno: </td><td><input class="trans" type="text" name="Pat" maxlength="20"></td>
        	</tr>
        	<tr>
        	<td>Apellido Materno: </td><td><input class="trans" type="text" name="Mat" maxlength="20"></td>
        	</tr>
        	<tr>
        	<td>Sexo: </td>
        	<td><label class="select"><select name="Sexo">
        		<option>Masculino</option>
        		<option>Femenino</option>
            </select></label></td>
            </tr>
            <tr>
                <td>Correo: </td><td><input class="trans" type="text" name="User" maxlength="50"></td>
        	</tr>
        	<tr>
                    <td>Contraseña: </td><td><input class="trans" type="password" name="Pass" maxlength="20"></td>
        	</tr>
        	<tr>
        	<td colspan="2" align="center">
                    <input class="trans" class="trans" type="button" value="Registrarme" onclick="Prof()">&nbsp;&nbsp;
                    <input class="trans" onclick="launchB('inicio.jsp')" type="button" value="Iniciar Sesion" /></td>
        	</tr>
        	</table>
        </form>
        </div>
    </BODY>
</HTML>