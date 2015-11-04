using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;


public partial class Search_By_Category : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter adp;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            category();
            DropDownList2.Items.Insert(0, new ListItem("select", "0"));
        }

    }
    public void category()
    {
        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Category";
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

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
        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);

        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "Area_Name";
        DropDownList2.DataValueField = "Area_Id";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("select", "0"));

        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        con = new SqlConnection("Data Source=VIPIN-PC;Initial Catalog=Projectdatabase;Integrated Security=True");
        con.Open();

        string query = "select * from Job_Post where Area_Id=" + DropDownList2.SelectedValue;

        adp = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
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
                String a = GridView1.Rows[i].Cells[2].Text;
                string query = "insert into Saved_Jobs (Candidate_Id,Jobpost_Id) values (" + cid + "," + a + ")";
                cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
            }
        }

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        area();
    }
}