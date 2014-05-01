//------------------------------------------------------------------------------------------------------------------------------------------------------
//Validaciones para el formulario "document.Profesor"
//------------------------------------------------------------------------------------------------------------------------------------------------------
function Prof(){
        
		var A=document.Profe.Num.value, 
            B=document.Profe.Nom.value,
            C=document.Profe.Pat.value,
            D=document.Profe.Mat.value,
            E=document.Profe.Cor.value,
            F=document.Profe.Cont.value,
            expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/,
            let = "ABCDEFGHIJKLMNOPQRSTUVWXYZ \u00e1\u00e9 \u00ed \u00f3 \u00fa \u00c1 \u00c9 \u00cd \u00d3 \u00da \u00f1 \u00d1" + "abcdefghijklmnopqrstuvwxyz\u00e1\u00e9 \u00ed \u00f3 \u00fa \u00c1 \u00c9 \u00cd \u00d3 \u00da \u00f1 \u00d1",
            num="0123456789",
            esp="\\/:*?\"<>|",
            all = true,
            txt="";

	if (A==""){
		txt="El campo \"Numero de empleado\" esta vacio\n";
		txt+="Coloque uno...\n";
		alert(txt);
		document.Profe.Num.focus();
		return (false);
		all=false;
	}
	else{

	for (i = 0; i < A.length; i++) {
		chi = A.charAt(i);
		for (j = 0; j < num.length; j++)
			if (chi == num.charAt(j))
		break;
		if (j == num.length) {
		all = false;
		break;
		}
	}
		
	if (!all) {
		txt="Escriba solo numeros en el campo \"Numero de empleado\"";
		alert(txt);
		document.Profe.Num.focus();
		return (false);}

	if (B=="") {
		txt="El campo \"Nombre\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Profe.Nom.focus();
		return (false);
		all=false;
	}
	else{

	for (i = 0; i < B.length; i++) {
		chi = B.charAt(i);
		for (j = 0; j < let.length; j++)
			if (chi == let.charAt(j))
		break;
		if (j == let.length) {
		all = false;
		break;
		}
	}		
	if (!all) {
		txt="Escriba solo letras en el campo \"Nombre\"";
		alert(txt);
		document.Profe.Nom.focus();
		return (false);}
        if (C=="") {
		txt="El campo \"Apellido paterno\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Profe.Pat.focus();
		return (false);
		all=false;
	}
	else{

	for (i = 0; i < C.length; i++) {
		chi = C.charAt(i);
		for (j = 0; j < let.length; j++)
			if (chi == let.charAt(j))
		break;
		if (j == let.length) {
		all = false;
		break;
		}
	}		
	if (!all) {
		txt="Escriba solo letras en el campo \"Apellido paterno\"";
		alert(txt);
		document.Profe.Pat.focus();
		return (false);}
        if (D=="") {
		txt="El campo \"Apellido materno\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Profe.Mat.focus();
		return (false);
		all=false;
	}
	else{

	for (i = 0; i < D.length; i++) {
		chi = D.charAt(i);
		for (j = 0; j < let.length; j++)
			if (chi == let.charAt(j))
		break;
		if (j == let.length) {
		all = false;
		break;
		}
	}		
	if (!all) {
		txt="Escriba solo letras en el campo \"Apellido materno\"";
		alert(txt);
		document.Profe.Mat.focus();
		return (false);}

  	if (E=="") {
		txt="El campo \"Correo\" esta vacio\n";
		txt+="Este campo es obligatorio";
		alert(txt);
		document.Profe.Cor.focus();
		return (false);
		all=false;
		}

	else{

	if ( !expr.test(E) ){
	        all=false;}

	if (!all) {
	    txt="Error: La direcci&oacute;n de correo \"" + E + "\" es incorrecta.\n";
	    txt+="Evite colocar lo siguiente en el campo de correo: \n";
	    txt+="www.  -  Los correos no comenzan con www \n";
	    txt+="@@  -  Los correos no contienen dos @ \n";
	    txt+="O cualquier tipo de caracter especial.";
	    txt+="La manera correcta de escribir un correo es:"
	    txt+= "usuario@dominio.xx";
	    alert(txt);
	    document.Profe.correo.focus();
	    return (false);
	              }

  	if (F=="") {
		txt="El campo \"Comtraseña\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Profe.Cont.focus();
		return (false);
		all=false;
		}

	else{

	for (i = 0; i < F.length; i++) {
		chi = F.charAt(i);
		for (j = 0; j < esp.length; j++)
			if (chi == esp.charAt(j))
		break;
		if (j == esp.length) {
		all = false;
		break;
		}
	}
		
	if (!all) {
		txt="Evite colocar los siguientes caracteres en contraseña:\n";
		txt+=esp;
		alert(txt);
		document.Profe.Cont.focus();
		return (false);
			  }
        }}}}}}
			
	if (all!=false){
		document.Profe.submit();
	}
}

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//Validaciones para el document.Morro
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
function Alumnos(){

	var A = document.Morro.Nom.value,
        B = document.Morro.Pat.value,
        C = document.Morro.Mat.value,
        D = document.Morro.User.value,
        E = document.Morro.Pass.value;

    var expr = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var let = "ABCDEFGHIJKLMNOPQRSTUVWXYZ \u00e1\u00e9 \u00ed \u00f3 \u00fa \u00c1 \u00c9 \u00cd \u00d3 \u00da \u00f1 \u00d1" + "abcdefghijklmnopqrstuvwxyz\u00e1\u00e9 \u00ed \u00f3 \u00fa \u00c1 \u00c9 \u00cd \u00d3 \u00da \u00f1 \u00d1";
	var esp="\\/:*?\"<>|";
	var all = true;
	var txt="";
        
    if (A=="") {
		txt="El campo \"Nombre\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Morro.Nom.focus();
		return (false);
		all=false;
	}
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
		txt="Escriba solo letras en el campo \"Nombre\"";
		alert(txt);
		document.Morro.Nom.focus();
		return (false);}
        if (B=="") {
		txt="El campo \"Apellido paterno\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Morro.Pat.focus();
		return (false);
		all=false;
	}
	else{

	for (i = 0; i < B.length; i++) {
		chi = B.charAt(i);
		for (j = 0; j < let.length; j++)
			if (chi == let.charAt(j))
		break;
		if (j == let.length) {
		all = false;
		break;
		}
	}		
	if (!all) {
		txt="Escriba solo letras en el campo \"Apellido paterno\"";
		alert(txt);
		document.Morro.Pat.focus();
		return (false);}
        if (C=="") {
		txt="El campo \"Apellido materno\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Morro.Mat.focus();
		return (false);
		all=false;
	}
	else{

	for (i = 0; i < C.length; i++) {
		chi = C.charAt(i);
		for (j = 0; j < let.length; j++)
			if (chi == let.charAt(j))
		break;
		if (j == let.length) {
		all = false;
		break;
		}
	}		
	if (!all) {
		txt="Escriba solo letras en el campo \"Apellido materno\"";
		alert(txt);
		document.Morro.Mat.focus();
		return (false);}
            
	if (D==""){
		txt="El campo \"Correo\" esta vacio\n";
		txt+="Coloque uno...\n";
		alert(txt);
		document.Morro.User.focus();
		return (false);
		all=false;
	}
	else{

	if (D.indexOf("www.") == 0){
		txt="Los correos no contienen \"www\"";
		alert(txt);
		document.Morro.User.focus();
	    return false;
	}
	else if ( !expr.test(D) ){
	        all=false;
	    }

	if (!all) {
	    txt="Error: La dirección de correo \"" + D + "\" no es valida.\n";
	    txt+="Evite colocar lo siguiente en el campo de correo: \n";
	    txt+="@@  -  Los correos no contienen dos @ \n";
	    txt+="O cualquier tipo de caracter especial.";
	    txt+="La manera correcta de escribir un correo es:"
	    txt+= "Usuario@dominio.xx";
	    alert(txt);
	    document.Morro.User.focus();
	    return (false);
	              }

  	if (E=="") {
		txt="El campo \"Password\" esta vacio\n";
		txt+="Este campo es obligatorio\n";
		alert(txt);
		document.Morro.Pass.focus();
		return (false);
		all=false;
	}
	else{

	for (i = 0; i < E.length; i++) {
		chi = E.charAt(i);
		for (j = 0; j < esp.length; j++)
			if (chi == esp.charAt(j))
		break;
		if (j == esp.length) {
		all = false;
		break;
		}
	}
		
	if (!all) {
		txt="Evite los siguientes caracteres en el campo \"Password\" \n";
        txt+=esp;
		alert(txt);
		document.Morro.Pass.focus();
		return (false);}

        }}}}}
			
	if (all!=false){
		txt="tus datos se han enviado correctamente"
		alert(txt);
		Morro.submit();
		Morro.reset();
	}
}