using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Select_Package : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter adp;
    public void pcode()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Package";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "Package_Cost";
        DropDownList1.DataValueField = "Package_Id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
        con.Close();

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            pcode();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into Company_package(Company_Id,Package_Id) values ('1'," + DropDownList1.SelectedValue + ")";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        Response.Redirect("~/Post_Job.aspx");

        //clear();
    }
}