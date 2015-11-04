using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;

public partial class Admin_Question : System.Web.UI.Page
{
    SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into Question(Question) values ('" + TextBox1.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        clear();

    }

    public void clear()
    {

        TextBox1.Text = "";
    }

}
