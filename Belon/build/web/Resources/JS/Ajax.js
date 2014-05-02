function LoadMain(){

if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("Maind").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("GET","Resources/Main/Main.html",true);
xmlhttp.send();
return true;
ResponsiveStuff();
}	
function LoadMain2(){
$('#Maind').load('Resources/Main/Main.jsp');
}	
function LoadMain3(){
$('#Maind').load('../../Resources/Main/Main2.jsp');
}

function launch(a){
 window.location=a;
}
function juroSolemnemente(){
 $(".FormHolder").css("opacity","1");
}
function juroSolemnemente2(){
 $(".EjHolder").css("opacity","1");
}
function launchB(a){
    var d=a;
    var xd=document.getElementById("where");
     $(".FormHolder").css("opacity","0");
    if(!xd){
    window.setTimeout(function(){window.location=a;},300);
    }
}
function LoadUA(){
    $("#TableLBarCont").load('LoadUA');
}
function LoadTh(a){
    $("#TopicHeader").load('LoadThemes?th='+a);
}