using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class Recruiter_Regi : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter adp;

    public void que()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Question";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "question";
        DropDownList4.DataValueField = "que_id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));
        con.Close();

    }
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            que();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;
        SqlCommand cmd2;

        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string qry = "insert into Company (Company_Name, User_Name, Que_Id, Ans, Contact_Person, Company_Contact,Company_Addres,Company_Email, Company_Details) values ('" + TextBox15.Text + "','" + TextBox1.Text + "','" + DropDownList4.SelectedValue + "','" + TextBox14.Text + "','" + TextBox16.Text + "','" + TextBox18.Text + "','" + TextBox19.Text + "','" + TextBox11.Text + "','" + TextBox17.Text + "')";
        cmd = new SqlCommand(qry, con);
        cmd.ExecuteNonQuery();

        string qry1 = "insert into Jlogin (User_Name,Password,Role) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','Recruiter')";
        cmd2 = new SqlCommand(qry1, con);
        cmd2.ExecuteNonQuery();

        con.Close();

        //clear();
    }
}
