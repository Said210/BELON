<?php
$Nombre=$_POST['qwdasd'];
$Password=$_POST['psavidubsai'];
$Mail=$_POST['mailsdibsa'];
//Mensaje
	$F="BELON<noreply@BELON.com>";	
	$asunto = "Registro completo";
	$cont = '<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Bienvenido a BELON '.$Nombre.'</title>
		<link rel="stylesheet" type="text/css" href="http://6nine.96.lt/Resources/Bootstrap/css/bootstrap.css">
		<meta name="viewport" content="width=device-width">
		<style type="text/css">
			.PrincH{
				width: 80%;
				left: 10%;
				top: 10px;
				border-radius: 10px;
				height: auto;
				position: absolute;
				color: rgb(80,80,80);
				background-color: #fff;
				box-shadow: 0px 0px 10px #222;
				padding: 50px;
			}
			h2{
				color: rgb(100,100,100);
			}
			hr{
				min-width: 200px;
			}
			blockquote p{
				font-size: 14px;
			}
		</style>
	</head>
	<body>
		<div class="PrincH" align="center">
			<h2>Bienvenido a BEL&Oslash;N</h2>
			<hr width="50%">
			<p>Est&eacute; es el primer pas&oacute; a un gran viaje, <b>'.$Nombre.'</b>.</p>
			<p>En <b>BEL&Oslash;N</b> estamos seguros que tendras una gran experiencia usando nuetro producto.</p>
			<h2 align="left">&iquest;Ahora qu&eacute;?</h2>
			<blockquote>
				<p align="justify">En <b>BEL&Oslash;N</b> tendr&aacute;s la oportunidad de explorar los mares del conocimiento de una forma divertida usando los ejercicios que ponemos a <b>su disposición</b> a medida 
				que desbloquee ejercicios nuevos con su progreso.</p>
			</blockquote>
			<h2 align="left"><i>Una ultima cosa...</i></h2>
			<blockquote>
				<p align="justify">Si te gusta el sistema y la forma que tiene para ayudarte, no dudes en pasar la voz :)</p>
			</blockquote>
			<h2>Buen viaje <b>'.$Nombre.'</b></h2>
			<p align="right"><sub>BELON es un producto desarrollado por Look &amp; Think.</sub></p>
			<div class="bs-callout bs-callout-ok" align="left">
				<h4><span class="glyphicon glyphicon-exclamation-user"></span>Sus datos:</h4>
				<p>Nombre: '.$Nombre.'</p>
				<p>Contraseña: '.$Password.'</p>
				<p>Mail: '.$Mail.'</p>
			</div>
		</div>
	</body>'; 
		//Envia el Mail
	$cabeceras = "From: ".$F."\r\n";
	$cabeceras  .= 'MIME-Version: 1.0' . "\r\n";
	$cabeceras .= 'Content-type: text/html; charset=UTF-8' . "\r\n";
	$asuntirigillo="Registro Exitoso ".$Nombre;
	if(mail($Mail,$asuntirigillo,$cont,$cabeceras)){
		echo 'ok';
	}
?>