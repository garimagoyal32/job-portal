using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.IO;


public partial class Jobseeker_regi : System.Web.UI.Page
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

    public void country()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Country";
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "Country_Name";
        DropDownList2.DataValueField = "Country_Id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void state()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from State where State.Country_Id=" + DropDownList2.SelectedValue;
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataTextField = "State_Name";
        DropDownList3.DataValueField = "State_Id";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0, new ListItem("select", "0"));

        con.Close();

    }
    public void city()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        SqlDataAdapter sda;
        string query = "select * from City where City.State_Id=" + DropDownList3.SelectedValue;

        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        DropDownList4.DataSource = ds.Tables[0];
        DropDownList4.DataTextField = "City_Name";
        DropDownList4.DataValueField = "City_Id";
        DropDownList4.DataBind();
        DropDownList4.Items.Insert(0, new ListItem("select", "0"));
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

        DropDownList8.DataSource = ds.Tables[0];
        DropDownList8.DataTextField = "Category_Name";
        DropDownList8.DataValueField = "Category_Id";
        DropDownList8.DataBind();
        DropDownList8.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public void area()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Area where Area.Category_Id=" + DropDownList8.SelectedValue;
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        
        DropDownList9.DataSource = ds.Tables[0];
        DropDownList9.DataTextField = "Area_Name";
        DropDownList9.DataValueField = "Area_Id";
        DropDownList9.DataBind();
        DropDownList9.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    public int getcid(string unm, SqlConnection con)
    {

        int c;

        string query = "select Candidate_Id from Candidate_Info where User_Name='" + unm + "' ";
        sda = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);

        c = Convert.ToInt32(ds.Tables[0].Rows[0]["Candidate_Id"].ToString());

        return (c);

    }


    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            que();
            country();
            DropDownList3.Items.Insert(0, new ListItem("select", "0"));
            DropDownList4.Items.Insert(0, new ListItem("select", "0"));

            category();
            DropDownList9.Items.Insert(0, new ListItem("select", "0"));
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlCommand cmd3;
        SqlCommand cmd4;
        SqlCommand cmd5;
        SqlCommand cmd6;
        SqlCommand cmd7;

        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string gndr = null;
        string email = null;

        if (RadioButton1.Checked == true)
        {
            gndr = RadioButton1.Text;
        }
        else
        {
            gndr = RadioButton2.Text;
        }

        email = TextBox10.Text + "@" + TextBox11.Text + ".com";

        string qry1 = "insert into JLogin (User_Name, Password, Role) values ('" + TextBox1.Text + "','" + TextBox2.Text + "','jobseeker')";
        cmd1 = new SqlCommand(qry1, con);
        cmd1.ExecuteNonQuery();

        string qry2 = "insert into Candidate_info (User_Name, Que_Id, Ans, First_Name, Last_Name, Candidate_Addrs, City_Id, Gender, Contact_No, Email_Id) values ('" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + DropDownList1.SelectedValue + "','" + gndr + "','" + TextBox9.Text + "','" + email + "')";
        cmd2 = new SqlCommand(qry2, con);
        cmd2.ExecuteNonQuery();

        string unm = null;
        unm = TextBox1.Text;

        int c = getcid(unm, con);


            string qry3 = "insert into Candidate_Education(Candidate_Id ,Per10, Per12, Graduation, Institute_Grad, Perc_Grad, Post_Grad, Institute_Post_Grad, Perc_Post_gGrad, Dr_Phd, Institute_Dr_Phd, Perc_Dr_Phd, Certification) values (" + c + "," + Convert.ToInt32(TextBox13.Text) + "," + Convert.ToInt32(TextBox14.Text) + ",'" + DropDownList5.SelectedItem + "','" + TextBox15.Text + "'," + Convert.ToInt32(TextBox17.Text) + ",'" + DropDownList7.SelectedItem + "','" + TextBox8.Text + "'," + Convert.ToInt32(TextBox18.Text) + ",'" + DropDownList5.SelectedItem + "','" + TextBox19.Text + "'," + Convert.ToInt32(TextBox20.Text) + ",'" + TextBox21.Text + "')";
        cmd3 = new SqlCommand(qry3, con);
        cmd3.ExecuteNonQuery();

        string crnc = null;

        if (RadioButton3.Checked == true)
        {
            crnc = RadioButton3.Text;
        }
        else
        {
            crnc = RadioButton4.Text;
        }

        string slr = null;
        slr = DropDownList12.Text + " Lacs " + DropDownList13.Text + " Thousands " + crnc;

        string qry4 = "insert into Candidate_Professional(Candidate_Id, Area_Id, Expr_Yrs, Expr_Mth, Salary, Industry, Ind_Role, Skills) values (" + c + ", '" + DropDownList9.SelectedValue + "', '" + DropDownList10.Text + "', '" + DropDownList11.Text + "', '" + slr + "', '" + TextBox22.Text + "', '" + TextBox23.Text + "', '" + TextBox24.Text + "')";
        cmd4 = new SqlCommand(qry4, con);
        cmd4.ExecuteNonQuery();


        string File1 = File_Upload(FileUpload1);

        string qry5 = "insert into Resume(Candidate_Id, Resume_Headline, Path) values (" + c + ", '" + TextBox24.Text + "', '"+File1+ "')";
        cmd5 = new SqlCommand(qry5, con);
        cmd5.ExecuteNonQuery();


    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    protected void DropDownList8_SelectedIndexChanged(object sender, EventArgs e)
    {
        area();
    }

    public string File_Upload(System.Web.UI.WebControls.FileUpload fp)
    {
        string filepath, folderpath, savepath, folderpathnew, savepathnew;
        folderpath = System.Web.HttpContext.Current.Server.MapPath("Resumes");
        folderpathnew = "~\\Resumes";
        filepath = Path.GetFileName(fp.PostedFile.FileName);
        savepath = folderpath + "\\" + filepath;

        savepathnew = folderpathnew + "\\" + filepath;

        fp.SaveAs(savepath);
        return (savepathnew);
    }

    protected void DropDownList12_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}