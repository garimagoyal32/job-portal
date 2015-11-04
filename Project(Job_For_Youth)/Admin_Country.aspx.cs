using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Country : System.Web.UI.Page
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

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "Country_Name";
        DropDownList1.DataValueField = "Country_Id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void state()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from State";
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "State_Name";
        DropDownList2.DataValueField = "State_Id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            country();
            state();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into Country(Country_Name) values ('" + TextBox1.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        clear();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into State(Country_Id,State_Name) values (" + DropDownList1.SelectedValue + ",'" + TextBox2.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        clear();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into City(State_Id,City_Name) values (" + DropDownList2.SelectedValue + ",'" + TextBox3.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        clear();
    }
    public void clear()
    {

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";

    }
    
}