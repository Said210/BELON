function GoElement(who){
var json='{"opacity":"0"}';
var style = JSON.parse(json);
    $(who).css(style);    
} 
function indexLaunch(a){
    var dir=a;
GoElement('.Element1');
window.setTimeout('GoElement(".Element2")',400);
window.setTimeout('GoElement(".Element3")',800);
window.setTimeout(function(){window.location=dir;},1300); 
}


function launch(dir){
    window.location=dir;
}