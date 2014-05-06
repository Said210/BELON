<%-- 
    Document   : Powered
    Created on : 06-may-2014, 0:01:51
    Author     : saidpelaez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sobre Belon</title>
        <link rel="stylesheet" href="../Style/Swaggy.css">
	<link rel="stylesheet" href="../Style/MainStyle.css">
        <link rel="stylesheet" href="../Style/ScrollexByBP.css">
        <link rel="stylesheet" href="../Style/UA.css">
	<script type="text/javascript" src="../JS/Ajax.js"></script>
        <script type="text/javascript" src="../JS/JQuery.js"></script>
	<script type="text/javascript" src="../JS/Res.js"></script> 
	<script type="text/javascript" src="../JS/Alert.js"></script>
        <script type="text/javascript" src="../JS/BLaunch.js"></script>
        <link rel="stylesheet" href="../Bootstrap/css/bootstrap.css">
        
	<meta name="viewport" content="width=device-width">
        <script type="text/javascript">
	
	$(window).bind('load', function(){
   		//Page loaded
   		LoadMain4();
   		ResponsiveStuff();
                window.setTimeout('ResponsiveStuff()',100);
                window.setTimeout(' LoadUA()',100);
	}); 
         function l(){
                if(myWidth<"900"){
                    $(".contP h1").css('fontSize','35px');
                    $(".contP p").css('fontSize','15px');
                    $(".contP").css('left','13cm');
                        if(myWidth<"700"){
                            $(".contP h1").css('fontSize','30px');
                            $(".contP p").css('fontSize','10px');
                            $(".contP").css('left','10cm');
                            $(".ContP").css('backgroundColor','rgba(255,255,255,0)');
                            $(".ContP").css('width','calc(100% - 16cm)');
                             if(myWidth<"500"){
                                    $(".contP h1").css('fontSize','30px');
                                    $(".contP p").css('fontSize','10px');
                                    $(".contP").css('left','2cm');
                                    $(".ContP").css('backgroundColor','rgba(255,255,255,.7)');
                                    $(".ContP").css('width','100%');
                             }
                    }
                }else{
                    $(".contP h1").css('fontSize','40px');
                    $(".contP p").css('fontSize','20px');
                    $(".contP").css('left','15cm');
                }
            }
	</script>
        <style>
            .contP{
                left: 15cm;
                width: calc(100% - 16cm);
                -webkit-width: calc(100% - 16cm);
                -moz-width: calc(100% - 16cm);
                height: 40px;
                position: absolute;
                top: 100px;
                text-align: left;
            }
            .contP h1{
                font-size: 40px;
                color:#000;
            }
            .contP p{
                font-size: 20px;
                text-align: justify;
            }
        </style>
        <script type="text/javascript">
           
        </script>
	<link rel="shortcut icon" href="favicon.ico" />
    </head>
    <body onresize="l()" onload="l()">
       
    <div id="Maind"></div>
        <style>
            body{
                background-image: url('../Img/Artist.png');
           
               background-repeat: no-repeat;
background-position: left center;
background-attachment: fixed;
-webkit-background-size: cover;
-moz-background-size: cover;
-o-background-size: cover;
background-size: cover;
            }
        </style>
    </head>
    <body>
        <div class="contP"><h1>BEL&Oslash;N</h1>
            <p>
                BEL&Oslash;N es un sistema de ayuda academica para que tanto alumnos como profesores puedan estudiar y revisar el progreso de sus alumnos respectivamente.
                <br /><sub>Impulsado por lindas chicas pelirrojas :3</sub>
            </p>
        </div>
    </body>
</html>
