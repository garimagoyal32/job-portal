using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class jobseeker_profile : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter ada;
    SqlDataAdapter ada2;
    SqlDataAdapter ada3;

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

        string query = "select * from Candidate_info where User_Name='" + us + "'";
        ada = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        DetailsView1.DataSource = ds;
        DetailsView1.DataBind();


        string query2 = "select * from Candidate_Education c1, Candidate_info c2 where c1.Candidate_Id = c2.Candidate_Id and User_Name='" + us + "'";
        ada2 = new SqlDataAdapter(query2, con);
        DataSet ds2 = new DataSet();
        ada2.Fill(ds2);
        DetailsView2.DataSource = ds2;
        DetailsView2.DataBind();


        string query3 = "select * from Candidate_Professional c1, Candidate_info c2 where c1.Candidate_Id = c2.Candidate_Id and User_Name='" + us + "'";
        ada3 = new SqlDataAdapter(query3, con);
        DataSet ds3 = new DataSet();
        ada3.Fill(ds3);
        DetailsView3.DataSource = ds3;
        DetailsView3.DataBind();


    }
}