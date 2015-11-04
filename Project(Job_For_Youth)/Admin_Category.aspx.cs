using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class admin_category : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter sda;

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

        string query = "select * from Area";
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
            category();
            area();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into Category(Category_Name) values ('" + TextBox1.Text + "')";

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
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into Area(Category_Id,Area_Name) values (" + DropDownList1.SelectedValue + ",'" + TextBox2.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        clear();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into Post(Area_Id,Post_Name) values (" + DropDownList2.SelectedValue + ",'" + TextBox3.Text + "')";

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();

        clear();
    }
}
