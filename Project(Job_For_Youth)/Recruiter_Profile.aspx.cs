using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class Recruiter_Profile : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;

    protected void Page_Load(object sender, EventArgs e)
    {

        string us = "";
        if (Session["User"] == null)
        {
            Label6.Visible = false;
            Label6.Text = Session["User"].ToString();

        }
        else
        {
            Label6.Text = "welcome" + Session["User"];
            Label6.Visible = true;
            us = Session["User"].ToString();

        }

        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Company where User_Name='" + us + "'";
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();
    }
}