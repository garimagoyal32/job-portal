using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Login1 : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
        if (IsPostBack == false)
        {
            select();
        }    
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        check();
    }
    public void select()
    {
        SqlDataAdapter sd1;
        DataSet ds = new DataSet();
        sd1 = new SqlDataAdapter("select distinct User_Name from Jlogin", con);
        sd1.Fill(ds);
        if (ds != null)
        {
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DropDownList1.Items.Add(ds.Tables[0].Rows[i]["User_Name"].ToString());
            }
        }

    }
    public void check()
    {

        SqlDataAdapter sd2;
        DataSet ds = new DataSet();
        sd2 = new SqlDataAdapter("select User_Name,Password from Jlogin where User_Name='" + DropDownList1.SelectedItem.ToString() + "'and Password='" +txtPass_a.Text + "'", con);
        sd2.Fill(ds);
        string s = DropDownList1.SelectedValue;
        string s1 = txtPass_a.Text;
        

        string s3 = ds.Tables[0].Rows[0]["User_Name"].ToString();
        string s4 = ds.Tables[0].Rows[0]["Password"].ToString();


        if (s == s3 && s1 == s4)
        {
            Session["User"] = DropDownList1.SelectedValue.ToString();

            Response.Redirect("Admin_More.aspx");

        }
        else
        {
            Response.Write("Home.aspx");
        }
    }
} 
    
    /*SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        bool Flag = false;

        con.Open();

        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from Jlogin";
        dr = cmd.ExecuteReader();
        string Role = "";

        while (dr.Read())
        {
            string User_Name = dr[0].ToString();
            string Password = dr[1].ToString();

            if (txt_User.Text == User_Name && txt_Pass.Text == Password)
            {
                Role = dr[2].ToString();
                Flag = true;
            }


        }
        dr.Close();

        if (Flag == false)
        {
            Label4.Visible = true;
            Label4.Text = "Not authorized";

        }
        if (Flag == true)
        {

            if (Role == "Admin")
            {
                Label4.Visible = true;
                Label4.Text = "Authorized";
                Response.Redirect("Home.aspx");

            }

        }
        con.Close();
    }
}*/