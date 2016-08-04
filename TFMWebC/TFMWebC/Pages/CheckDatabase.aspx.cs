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
    public partial class CheckDatabase : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //CheckMysqlConnection();
            }
            ListView1.DataSource = Obtener(Consultas.consultarEmpleados);
            ListView1.DataBind();
        }
        private void CheckMysqlConnection()
        {
            string conecS = @"Data Source=localhost; Database=tfm; User ID=root; Password='nelita711'";
            using (MySqlConnection cn = new MySqlConnection(conecS))
            {
                cn.Open();
                Response.Write("Conectado con la Base de Datos");
            }
        }
        public static MySqlCommand CrearComando()
        {
            string _cadenaConexion = "server = localhost; user id = root; database = tfm;Password='nelita711'";
            MySqlConnection _conexion = new MySqlConnection();
            _conexion.ConnectionString = _cadenaConexion;
            MySqlCommand _comando = _conexion.CreateCommand();
            _comando.CommandType = CommandType.Text;
            return _comando;
        }
        public static DataTable EjecutarComandoSelect(MySqlCommand comando)
        {
            DataTable _tabla;
            try
            {
                comando.Connection.Open();
                MySqlDataReader _lector = comando.ExecuteReader();
                _tabla = new DataTable();
                _tabla.Load(_lector);
                _lector.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                comando.Connection.Close();
            }
            return _tabla;
        }
        public static DataTable Obtener(string consulta)
        {
            MySqlCommand _comando = CrearComando();
            _comando.CommandText = consulta;
            return EjecutarComandoSelect(_comando);
        }
        public class Consultas
        {

            public static string consultarEmpleados = "SELECT * FROM usuarios";
        }

    }
}