using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection con;
    SqlDataAdapter sda;

    public void country()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Country";
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataTextField = "Country_Name";
        DropDownList3.DataValueField = "Country_Id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void state()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from State where State.Country_Id=" + DropDownList3.SelectedValue;
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "State_Name";
        DropDownList4.DataValueField = "State_Id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));

        con.Close();

    }
    public void city()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        SqlDataAdapter sda;
        string query = "select * from City where City.State_Id=" + DropDownList4.SelectedValue;

        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList5.DataSource = ds.Tables[0];
        DropDownList5.DataTextField = "City_Name";
        DropDownList5.DataValueField = "City_Id";
        DropDownList5.DataBind();
        DropDownList5.Items.Insert(0, new ListItem("select", "0"));
        con.Close();
    }

    public void category()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Category";
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "Category_Name";
        DropDownList1.DataValueField = "Category_Id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void area()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Area where Area.Category_Id=" + DropDownList1.SelectedValue;
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "Area_Name";
        DropDownList2.DataValueField = "Area_Id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            country();
            DropDownList4.Items.Insert(0, new ListItem("select", "0"));

            DropDownList5.Items.Insert(0, new ListItem("select", "0"));

            category();
            DropDownList2.Items.Insert(0, new ListItem("select", "0"));
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        area();
    }
}