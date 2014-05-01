function Validaciones(){
    var A=Morro.Nom.value;
    var B=Morro.Pat.value;
    var C=Morro.Mat.value;          
    var D=Morro.User.value;
    var E=Morro.Pass.value;
    var let = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚÄËÏÖÏÜ" + "abcdefghijklmnñopqrstuvwxyzáéíóúäëïöü";
    expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    var num = "0123456789";
    var all = true;
    var txt="";
    var Error={
        color:'rgb(255,10,10)',
        textDecoration:'underline'
    };

if (A=="") {
    alert("Campo nombre esta vacio, coloque un nombre");
    $('#Nom').css(Error);
    Registro.nombre.focus();
    all=false;}
else{

for (i = 0; i < A.length; i++) {
    chi = A.charAt(i);
    for (j = 0; j < let.length; j++)
            if (chi == let.charAt(j))
    break;
    if (j == let.length) {
    all = false;
    break;
    }
}

if (!all) {
    txt="Escriba solo letras en el campor Nombre";
    $('#Nom').css(Error);
    alert(txt);
    Registro.nombre.focus();
    return (false);
              }

if(B==""){
    alert("El campo de edad, esta vacio");
    Registro.edad.focus(); 
    $('#edadTXT').css(Error);
    all=false;
}
else if (B<3) {
    alert("Escriba una cantdad de años mayor a 3");
    Registro.edad.focus();
    $('#edadTXT').css(Error);
    all=false;
}
else{

for (i = 0; i < B.length; i++) {
    chi = B.charAt(i);
    for (j = 0; j < num.length; j++)
            if (chi == num.charAt(j))
    break;
    if (j == num.length) {
    all = false;
    break;
    }
}
if (!all) {
    txt="Escriba solo numeros en el campor edad";
    $('#edadTXT').css(Error);
    alert(txt);
    Registro.edad.focus();
    return (false);
              }

if(C==""){
    txt="El campo telefono, esta vacio \n";
    txt+= "Debe de colocar un numero telefonico de la forma: \n";
    txt+= "5512345678 / 57123456";
    alert(txt);
    $('#telefonoTXT').css(Error);
    Registro.telefono.focus();
    all=false;
}
else if (C.length<8){
    txt="El campo telefono, requiere minimo 8 digitos \n";
    txt+= "Debe de colocar un numero telefonico de la forma: \n";
    txt+= "5512345678 / 57123456";
    alert(txt);
    $('#telefonoTXT').css(Error);
    Registro.telefono.focus();
    all=false;   
}
else{

for (i = 0; i < C.length; i++) {
    chi = C.charAt(i);
    for (j = 0; j < num.length; j++)
            if (chi == num.charAt(j))
    break;
    if (j == num.length) {
    all = false;
    break;
    }
}

if (!all) {
    txt="Escriba solo numeros en el campo telefono";
    alert(txt);
    $('#telefonoTXT').css(Error);
    Registro.telefono.focus();
    return (false);
              }

if(D==""){
    txt="El campo correo, esta vacio \n";
    txt+= "Deve de colocar un correo de la forma: \n";
    txt+= "usuario@dominio";
    alert(txt);
    $('#correoTXT').css(Error);
    Registro.correo.focus();
    all=false;
}
else{

if ( !expr.test(D) ){
        all=false;
    }

if (!all) {
    txt="Error: La dirección de correo \"" + D + "\" es incorrecta.\n";
    txt+="Evite colocar lo siguiente en el campo de correo: \n";
    txt+="www.  -  Los correos no comenzan con www \n";
    txt+="@@  -  Los correos no contienen dos @ \n";
    txt+="O cualquier tipo de caracter especial.";
    alert(txt);
    $('#correoTXT').css(Error);
    Registro.correo.focus();
    return (false);
              }

if(E==""){
    txt="El campo asunto, esta vacio";
    alert(txt);
    Registro.asunto.focus();
    $('#asuntoTXT').css(Error);
    all=false;
}

else{
    for (i = 0; i < E.length; i++) {
    chi = E.charAt(i);
    for (j = 0; j < let.length; j++)
            if (chi == let.charAt(j))
    break;
    if (j == let.length) {
    all = false;
    break;
    }
}

if (!all) {
    txt="Evite los siguientes caracteres en asunto: \n";
    txt+="<>:Â¿Â¡/|*";
    alert(txt);
    $('#asuntoTXT').css(Error);
    Registro.asunto.focus();
    return (false);
              }

    }}}}}

if(all!=false){
    alert("Los datos se enviaron correctamente!");
    Registro.submit();
    }
}
function CleanAllBitches(){
    var JoseMariayPepe ={
        color:'#000',
        textDecoration:'none'
    }
    $('label').css(JoseMariayPepe);
}
