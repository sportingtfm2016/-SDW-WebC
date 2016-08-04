<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="TFMWebC.Pages.Logon" %>

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
                                  <li class="active"><a href="#">Iniciar Sesión</a></li>
                                  <li><a href="registro.aspx">Regístrate</a></li>
                              </ul>
                          </div>
                      </div>
                  </nav>
              </div>
          </div>
           <div class="site-wrapper" style="position: absolute; top:10px">
              <div class="site-wrapper-inner">
                  <div class="cover-container">


                      <div class="inner cover">
                              <h2 class="form-signin-heading">Iniciar sesión</h2>
                              <label for="txtUserName" class="sr-only">Email</label>
                              <input type="text" runat="server" id="txtUserName" class="form-control" placeholder="Email" required autofocus>
                              <ASP:RequiredFieldValidator ControlToValidate="txtUserName" Display="Static" ErrorMessage="*" runat="server" ID="vUserName" />
                              <label for="txtUserPass" class="sr-only">Contraseña</label>
                              <input type="password" runat="server" id="txtUserPass" class="form-control" placeholder="Contraseña" required>
                              <ASP:RequiredFieldValidator ControlToValidate="txtUserPass" Display="Static" ErrorMessage="*" runat="server" ID="vUserPass" />
                              <div class="checkbox">
                                  <label>
                                      <%--<input type="checkbox" value="remember-me"> Recuerdamé--%>
                                      <ASP:CheckBox id="chkPersistCookie" runat="server" autopostback="false" />Recuerdamé
                                  </label>
                                  
                              </div>
                              <button class="btn btn-lg btn-primary btn-block" type="submit" runat="server" id="cmdLogin">Iniciar</button>
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
<%--    <div>
    <h3>
  Logon Page
</h3>
<table>
   <tr>
      <td>Email:</td>
      <td><input id="txtUserName" type="text" runat="server"/></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserName"
           Display="Static" ErrorMessage="*" runat="server" 
           ID="vUserName" /></td>
   </tr>
   <tr>
      <td>Password:</td>
      <td><input id="txtUserPass" type="password" runat="server"/></td>
      <td><ASP:RequiredFieldValidator ControlToValidate="txtUserPass"
          Display="Static" ErrorMessage="*" runat="server" 
          ID="vUserPass" />
      </td>
   </tr>
   <tr>
      <td>Persistent Cookie:</td>
      <td><ASP:CheckBox id="chkPersistCookie" runat="server" autopostback="false" /></td>
      <td></td>
   </tr>
</table>
<input type="submit" value="Logon" runat="server" id="cmdLogin"/><p></p>
<asp:Label id="lblMsg" ForeColor="red" Font-Name="Verdana" Font-Size="10" runat="server" />
    </div>--%>
    </form>
</body>
</html>
