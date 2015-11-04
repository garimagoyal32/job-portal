using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class jobseeker_ForgetPassword : System.Web.UI.Page
{

    SqlConnection con;
    SqlDataAdapter sda;

    public void que()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Question";
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "Question";
        DropDownList1.DataValueField = "Que_Id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
        con.Close();

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Visible = false;
        if (!IsPostBack)
        {
            que();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {


        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select User_Name from Candidate_info where Ans='" + TextBox1.Text + "' and Que_Id=" + DropDownList1.SelectedValue;
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        Label5.Text = ds.Tables[0].Rows[0]["User_Name"].ToString();
        TextBox2.Enabled = true;
        TextBox3.Enabled = true;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select User_Name from Candidate_info where Ans='" + TextBox1.Text + "' and Que_Id=" + DropDownList1.SelectedValue;
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        string u = null;
        u = ds.Tables[0].Rows[0]["User_Name"].ToString();

        if (TextBox2.Text == TextBox3.Text)
        {
            Label6.Visible = false;
            string query2 = "update jlogin set Password= '" + TextBox2.Text + "' where User_Name='" + u + "'";
            SqlCommand cmd = new SqlCommand(query2, con);

            //Label6.Text = "Password change sucssfully ----->>>>>>";
            cmd.ExecuteNonQuery();
            //Response.Write("Password change sucssfully ----->>>>>>");
        }

        else
        {
            Label6.Visible = true;
            Label6.Text = "Password did not matched";
        }

    }
}

