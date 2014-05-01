var myWidth = 0, myHeight = 0; 
    function ResponsiveStuff() {
  
  if( typeof( window.innerWidth ) == 'number' ) { 
    //No-IE 
    myWidth = window.innerWidth; 
    myHeight = window.innerHeight; 
  } else if( document.documentElement && ( document.documentElement.clientWidth || document.documentElement.clientHeight ) ) { 
    //IE 6+ 
    myWidth = document.documentElement.clientWidth; 
    myHeight = document.documentElement.clientHeight; 
  } else if( document.body && ( document.body.clientWidth || document.body.clientHeight ) ) { 
    //IE 4 compatible 
    myWidth = document.body.clientWidth; 
    myHeight = document.body.clientHeight;
  } 
if(myWidth<"900"){
	SizeRes=true;
  $(".MenuHolderHero").attr("class", "MenuHolderHeroRes");
  $(".MenuItem").attr("class", "MenuItemRes");
  $(".MenuHolder").attr("class", "MenuHolderRes");
  $('.Belonas').css('color','#fff');
  $('.Belonas').css('marginLeft','-15px');
  if($(".ProfInfo")){
      $(".ProfInfo").fadeOut("Slow");
      $(".EjList").css('left','10%');
      $(".EjList").css('width','80%');
      $("#NameHero").fadeIn("Slow");
  }
  if($(".LatBar")){
      $(".LatBar").fadeOut("Slow");
      $(".TopicC").css('width','100%');
  }
    
	$(".MenuHolderHero").mouseover(function(){
	if(myWidth<"900" && SizeRes==true){
    alert('hola');
    $(".MenuItem").css('display','block');
	}
	});
}else{
	SizeRes=false;
 if($(".ProfInfo")){
      $(".ProfInfo").fadeIn("Slow");
      $(".EjList").css('left','600px');
      $(".EjList").css('width','calc(100% - 800px)');
      $("#NameHero").fadeOut("Slow");
  }
   if($(".LatBar")){
      $(".LatBar").fadeIn("Slow");
      $('.TopicC').removeAttr('style');
  }
	$(".MenuHolderHeroRes").attr("class", "MenuHolderHero");
  $(".MenuItemRes").attr("class", "MenuItem");
  $(".MenuHolderRes").attr("class", "MenuHolder");
  $('.Belonas').css('color','#3d3d3d');
  $('.Belonas').css('marginLeft','15px');
}
}

$( window ).resize(function() {
ResponsiveStuff();
});
$( window ).load(function() {
ResponsiveStuff();
});