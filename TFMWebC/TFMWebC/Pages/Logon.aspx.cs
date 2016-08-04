using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using MySql.Data.MySqlClient;

namespace TFMWebC.Pages
{
    public partial class Logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.cmdLogin.ServerClick += new System.EventHandler(this.cmdLogin_ServerClick);
        }
        private bool ValidateUser(string userName, string passWord)
        {
            MySqlConnection conn = new MySqlConnection();
            MySqlCommand cmd = conn.CreateCommand();

            string lookupPassword = null;

            // Buscar nombre de usuario no válido.
            // el nombre de usuario no debe ser un valor nulo y debe tener entre 1 y 15 caracteres.
            if ((null == userName) || (0 == userName.Length) || (userName.Length > 50))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of userName failed.");
                return false;
            }

            // Buscar contraseña no válida.
            // La contraseña no debe ser un valor nulo y debe tener entre 1 y 25 caracteres.
            if ((null == passWord) || (0 == passWord.Length) || (passWord.Length > 25))
            {
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Input validation of passWord failed.");
                return false;
            }

            try
            {
                // Consultar con el administrador de SQL Server para obtener una conexión apropiada
                // cadena que se utiliza para conectarse a su SQL Server local.
                //conn = new SqlConnection("server=localhost;Integrated Security=SSPI;database=pubs");
                string _cadenaConexion = "server = localhost; user id = root; database = tfm;Password='nelita711'";
                conn.ConnectionString = _cadenaConexion;
                conn.Open();

                // Crear SqlCommand para seleccionar un campo de contraseña desde la tabla de usuarios dado el nombre de usuario proporcionado.
                //cmd = new MySqlCommand("Select Usuario from Usuarios where Email=@userName", conn);
                MySqlCommand cmda = conn.CreateCommand();
                ComprobarUsuario(cmda, "select  PassWord from Usuarios where Email LIKE ?email", userName);
                
                // Ejecutar el comando y capturar el campo de contraseña en la cadena lookupPassword.
                lookupPassword = (string)cmda.ExecuteScalar();

                // Comando de limpieza y objetos de conexión.
                cmda.Dispose();
                conn.Dispose();
            }
            catch (Exception ex)
            {
                // Agregar aquí un control de errores para la depuración.
                // Este mensaje de error no debería reenviarse al que realiza la llamada.
                System.Diagnostics.Trace.WriteLine("[ValidateUser] Exception " + ex.Message);
            }

            // Si no se encuentra la contraseña, devuelve false.
            if (null == lookupPassword)
            {
                // Para más seguridad, puede escribir aquí los intentos de inicio de sesión con error para el registro de eventos.
                return false;
            }

            // Comparar lookupPassword e introduzca passWord, usando una comparación que distinga mayúsculas y minúsculas.
            return (0 == string.Compare(lookupPassword, passWord, false));

        }

        public void ComprobarUsuario(MySqlCommand command, string comando, string email)
        {
            command.CommandText = comando;
            command.Parameters.AddWithValue("?email", email);
        }

        private void cmdLogin_ServerClick(object sender, System.EventArgs e)
        {
            if (ValidateUser(txtUserName.Value, txtUserPass.Value))
            {
                FormsAuthenticationTicket tkt;
                string cookiestr;
                HttpCookie ck;
                tkt = new FormsAuthenticationTicket(1, txtUserName.Value, DateTime.Now,
          DateTime.Now.AddMinutes(30), chkPersistCookie.Checked, "your custom data");
                cookiestr = FormsAuthentication.Encrypt(tkt);
                ck = new HttpCookie(FormsAuthentication.FormsCookieName, cookiestr);
                if (chkPersistCookie.Checked)
                    ck.Expires = tkt.Expiration;
                ck.Path = FormsAuthentication.FormsCookiePath;
                Response.Cookies.Add(ck);

                string strRedirect;
                strRedirect = Request["ReturnUrl"];
                if (strRedirect == null)
                    strRedirect = "Actividad.aspx";
                Response.Redirect(strRedirect, true);
            }
            else
                Response.Redirect("logon.aspx", true);
        }
    }
   
}