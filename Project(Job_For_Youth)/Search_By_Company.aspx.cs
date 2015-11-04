using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class Search_By_Company : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter adp;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            company();
        }
    }
    public void company()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Job_Post j1, Company c1 where j1.Company_Id = c1.Company_Id";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "Company_Name";
        DropDownList1.DataValueField = "Company_Id";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        int cid = 0;
        cid = Convert.ToInt32(Session["Cid"].ToString());

        int rws = 0;
        rws = Convert.ToInt32(GridView1.Rows.Count.ToString());
        // Label22.Text = GridView1.Rows.Count.ToString();

        for (int i = 0; i < rws; i++)
        {
            CheckBox chk = (CheckBox)GridView1.Rows[i].FindControl("CheckBox3");

            if (chk.Checked == true)
            {
                String a = GridView1.Rows[i].Cells[19].Text;
                string query = "insert into Saved_Jobs (Candidate_Id,Jobpost_Id) values (" + cid + "," + a + ")";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select Jobpost_Id,Company_Id,Job_Title,Area_Id,City_Id,Post,No_Vacancy,Start_Date,End_Date,Expr_Req,Skills_Req,Edu_Req,Basic_Req,Salary_Min,salary_max from Job_Post,Area,Category,City,State,Country,Company where Job_Post.Area_Id=Area.Area_Id and Area.Category_Id=Category.Category_Id and Job_Post.City_id=City.city_id and State.State_Id=City.State_Id and Country.Country_Id=State.Country_Id and Job_Post.Company_Id=Company.Company_Id and Job_Post.Company_Id=" + DropDownList1.SelectedValue;
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}