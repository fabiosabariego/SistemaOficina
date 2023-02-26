using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaOficina.Paginas.Admin
{
    public partial class CadastroUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string cmdCadastro = "INSERT INTO Usuarios (usuario, nome, telefone, cargo, acesso, senha) VALUES (@usuario, @nome, @telefone, @cargo, @acesso, @senha)";
            var sqlConnect = new SqlConnection("data source = VM-DEV; database = OldRepairDB; integrated security = SSPI");
            var sqlCmd = new SqlCommand(cmdCadastro, sqlConnect);
            sqlCmd.Parameters.AddWithValue("usuario", txtBoxUser.Text);
            sqlCmd.Parameters.AddWithValue("nome", txtBoxNome.Text);
            sqlCmd.Parameters.AddWithValue("telefone", txtBoxTelefone.Text);
            sqlCmd.Parameters.AddWithValue("cargo", txtBoxCargo.Text);
            sqlCmd.Parameters.AddWithValue("senha", txtBoxSenha.Text);
            sqlCmd.Parameters.AddWithValue("acesso", ddlSelAcesso.SelectedValue);
            sqlConnect.Open();
            sqlCmd.ExecuteNonQuery();
            sqlConnect.Close();
            GridViewUser.DataBind();
        }
    }
}