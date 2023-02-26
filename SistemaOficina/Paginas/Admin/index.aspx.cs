using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaOficina.Paginas.Admin
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var sqlConnect = new SqlConnection("data source = VM-DEV; database = OldRepairDB; integrated security = SSPI");
            var sqlCmd = new SqlCommand("SELECT * FROM Usuarios", sqlConnect);
            sqlConnect.Open();
            SqlDataReader sqlReader = sqlCmd.ExecuteReader();
            GridViewUser.DataSource = sqlReader;
            GridViewUser.DataBind();
            sqlConnect.Close();

        }

        protected void GridViewUser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}