<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Actividad.aspx.cs" EnableEventValidation="true"  Inherits="TFMWebC.Pages.Actividad" %>

 <!DOCTYPE html>
      <html lang="es">
      <head>
          <meta charset="utf-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1">
          <meta name="description" content="Sporting">
          <meta name="author" content="Cristian PR">
          <link rel="icon" href="/favicon.ico">
          <title>Sporting</title>
          <!-- Bootstrap core CSS -->
          <link href="../CssB/dist/css/bootstrap.min.css" rel="stylesheet">
          <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
          <link href="../CssB/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">
          <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
          <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
          <script src="../CssB/assets/js/ie-emulation-modes-warning.js"></script>
          <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
          <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
          <!-- Custom styles for this template -->
          <link href="../Css/sporting.css" rel="stylesheet">
          <!-- Custom styles for this template -->
          <link href="../Css/cover.css" rel="stylesheet">
          <!-- Custom styles for this template -->
          <link href="signin.css" rel="stylesheet">
      </head>
<body>
    <form id="form1" runat="server">
<%--    <div>
    <input type="submit" value="SignOut" runat="server" id="cmdSignOut" />
    </div>--%>
                  <div class="navbar-wrapper">
              <div class="container">
                  <nav class="navbar navbar-inverse navbar-static-top">
                      <div class="container ">
                          <div class="navbar-header">
                              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                  <span class="sr-only">Panel Navegación</span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                                  <span class="icon-bar"></span>
                              </button>
                              <a class="navbar-brand" href="#">Sporting</a>
                          </div>
                          <div id="navbar" class="navbar-collapse collapse">
                              <ul class="nav navbar-nav">
                                  <li><a href="index.html">Inicio</a></li>
                                  <li class="active"><a href="#">Actividad</a></li>
                                  <li style="position: absolute; top:2px; right:2px" ><input class="btn btn-lg btn-primary btn-block" type="submit" value="Salir" runat="server" id="cmdSignOut"/></li>
                              </ul>
                          </div>
                      </div>
                  </nav>
              </div>
          </div>

          <div class="site-wrapper">
              <div class="site-wrapper-inner">
                  <div class="cover-container">


                      <div class="inner cover">

                              <h2 class="form-signin-heading">Iniciar sesión</h2>
                              <label for="inputEmail" class="sr-only">Email</label>
                              <input type="email" id="inputEmail" class="form-control" placeholder="Email" required autofocus>
                              <label for="inputPassword" class="sr-only">Contraseña</label>
                              <input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
                              <div class="checkbox">
                                  <label>
                                      <input type="checkbox" value="remember-me"> Recuerdamé
                                  </label>
                              </div>
                              <button class="btn btn-lg btn-primary btn-block" type="submit">Iniciar</button>
                      </div>

                  </div>
              </div>
          </div>
                <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
        <script src="../CssB/dist/js/bootstrap.min.js"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="../CssB/assets/js/vendor/holder.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../CssB/assets/js/ie10-viewport-bug-workaround.js"></script>
    </form>
</body>
</html>
