<html>
<head>
	<title>BEL&Oslash;N</title>
        <%
            HttpSession Ses = request.getSession();
            if(Ses.getAttribute("Nombre")!=null){ 
             out.println("<script type='text/javascript'>window.location='Profile.jsp';</script>");
            }
        %>
	<link rel="stylesheet" href="Resources/Style/Swaggy.css">
	<link rel="stylesheet" href="Resources/Style/MainStyle.css">
	<link rel="stylesheet" href="Resources/Style/ScrollexByBP.css">
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script type="text/javascript" src="Resources/JS/Ajax.js"></script>
        <script type="text/javascript" src="Resources/JS/JQuery.js"></script>
	<script type="text/javascript" src="Resources/JS/Res.js"></script> 
	<script type="text/javascript" src="Resources/JS/Alert.js"></script>
        <script type="text/javascript" src="Resources/JS/BLaunch.js"></script>
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
    <div id="Maind"></div><img src="Resources/Img/StudentBW.jpg" class="Hidden" /><img src="Resources/Img/TeacherBW.jpg" class="Hidden" /><img src="Resources/Img/OtherBW.jpg" class="Hidden" />

<div class="Element1 Element" id="A" draggable="false">
    <div class="Text" id="a1" onclick="indexLaunch('inicio.jsp')"><span class="TextCont">Profesores</span><div class="DownUnderE" id="Element1Cont"><span class="SpnBtn" onclick="indexLaunch('inicio.jsp')">Iniciar Sesi&oacute;n</span><br /><br /><br /><span class="SpnBtn" onclick="indexLaunch('Profesor.jsp')">Registrarse</span></div></div>
		</div>
		<div class="Element2 Element" id="B">
			<div class="Text" id="b1" onclick="indexLaunch('inicio.jsp')"><span class="TextCont">Alumnos</span><div class="DownUnderE" id="Element1Cont"><span class="SpnBtn" onclick="indexLaunch('inicio.jsp')">Iniciar Sesi&oacute;n</span><br /><br /><br /><span class="SpnBtn" onclick="indexLaunch('Alumno.jsp')">Registrarse</span></div></div>
		</div>
		<div class="Element3 Element" id="C">
			<div class="Text" id="c1" onclick="indexLaunch('inicio.jsp')"><span class="TextCont">Otros</span></div>
		</div>
		<div id="where">index</div>
</body>
</html> 