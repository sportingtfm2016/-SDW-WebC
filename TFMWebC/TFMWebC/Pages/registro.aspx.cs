using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TFMWebC.Pages
{
    public partial class registro : System.Web.UI.Page
    {
        public string user;
        string email;
        string pass;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Registro(object sender, EventArgs e)
        {

            user = inputUsuario.Value.ToString();
            email = inputEmail.Value.ToString();
            pass = inputPassword.Value.ToString();


            MySqlConnection _conexion = new MySqlConnection();

            string _cadenaConexion = "server = localhost; user id = root; database = tfm;Password='nelita711'";
            _conexion.ConnectionString = _cadenaConexion;

            //Comprobar que no haya usuarios con user y email iguales
            MySqlCommand commandV = _conexion.CreateCommand();
            string comandoV = "select  Usuario or Email from Usuarios where Usuario LIKE ?user or Email LIKE ?email";
            ComprobarUsuario(commandV, comandoV);
            _conexion.Open();

            bool hay = false;

            if (commandV.ExecuteScalar() != null)
            {
                hay = true;
            }

            _conexion.Close();


            if (!hay)
            {
                MySqlCommand command = _conexion.CreateCommand();
                string comando = "INSERT INTO usuarios (Usuario, Password, Email) VALUES (?user,?pass,?email)";
                InsertarUsuario(command, comando);
                _conexion.Open();
                command.ExecuteNonQuery();

                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Has sido registrado')", true);

                //System.Threading.Thread.Sleep(5000);

                Response.Redirect("../Pages/login.html");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Ya hay un usuario registrado con esos datos')", true);
                //Response.Redirect("../Pages/registro.aspx");
            }
        }
        public void InsertarUsuario(MySqlCommand command, string comando)
        {
            command.CommandText = comando;
            command.Parameters.AddWithValue("?user", user);
            command.Parameters.AddWithValue("?email", email);
            command.Parameters.AddWithValue("?pass", pass);
        }
        public void ComprobarUsuario(MySqlCommand command, string comando)
        {
            command.CommandText = comando;
            command.Parameters.AddWithValue("?user", user);
            command.Parameters.AddWithValue("?email", email);
        }


    }


}

//select  Usuario from Usuarios where Usuario LIKE ""
