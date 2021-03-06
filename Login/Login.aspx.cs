using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string patron = "LoginyRegistro";
        protected void BtnIngresar_Click (object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("ValidarUsuario", sqlConectar)
            {
                CommandType = CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            cmd.Parameters.Add("@Contraseña", SqlDbType.VarChar, 50).Value = tbPassword.Text;
            cmd.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //Se agrega una sesión de Usuario
                Session["usuariologueado"] = tbUsuario.Text;
                Response.Redirect("Index.aspx");
            }
            else
            {
                lblError.Attributes.Add("style", "display:block !important");
                lblError.Text = "Error de Usuario o Contraseña";
            }
            cmd.Connection.Close();
        }
    }
}