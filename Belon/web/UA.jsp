<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
        <link rel="stylesheet" href="Resources/Style/UA.css">
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
                window.setTimeout('ResponsiveStuff()',100);
                window.setTimeout(' LoadUA()',100);
	}); 
	</script>
        
	<link rel="shortcut icon" href="Resources/Power/favicon.ico" />
    </head>
    <body>
       
    <div id="Maind"></div>
    
    <div class="LatBar">
        <h3 class="H3">Unidades De Aprendizaje</h3>
        <br />
        <table id="TableLBarCont" class="table table-hover">
            
    </table> 
    </div>
    <div class="TopicC">
        <div class="TTitle" id="TopicHeader">
            
        </div>
        
        <section class="TCont">
            <table class="table table-hover" id="EXHold">
                
            </table>
        </section>
        
    </div>
    
    </body>
</html>
