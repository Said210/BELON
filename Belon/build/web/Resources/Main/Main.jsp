<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-9">
            <span class="sr-only"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"><span class="BSBelonas" onclick="launchB('index.jsp')">B E L &Oslash; N</span></a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
          <ul class="nav navbar-nav">
             <li><a href="index.jsp">Inicio</a></li>
            <li><a href="UA.jsp">Unidades de aprendizaje</a></li>
             <%
            HttpSession Ses = request.getSession();
            try{
             String PA=(String) Ses.getAttribute("Ap");
             String MA=(String) Ses.getAttribute("Am");
             String Name=(String) Ses.getAttribute("Nombre");
             String TU = (String) Ses.getAttribute("TU");
             
              out.print("<li class='dropdown'>"+
          "<a href='#' class='dropdown-toggle' data-toggle='dropdown'>"+PA+" "+MA+" "+Name+"<b class='caret'></b></a>"+
          "<ul class='dropdown-menu'>"+
            "<li><a href=\"Profile.jsp\">Perfil</a></li>"+
             "<li class='divider'></li>");
              if("2".equals(TU)){    
                    out.print("<li><a href='Prog.jsp'>Ver Progreso del grupo</a></li><li class='divider'></li>");
                }else{
                  out.print("<li><a href='Progreso.jsp'>Progreso</a></li><li class='divider'></li>");
              }
              out.print("<li><a href='LogOut'>Sair</a></li>");
              out.print("</ul></li>");
             if("2".equals(TU)){
            out.print("<li><a href='#'>Usuario: Profesor</a></li>");
          }else{
            out.print("<li><a href='#'>Usuario: Alumno</a></li>");
          }
            }catch(Exception e){
                System.out.print("Problema en Main "+e);
            }
            
        %>
            
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>