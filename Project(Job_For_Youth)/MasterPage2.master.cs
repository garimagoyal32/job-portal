using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //for slider
        if (!IsPostBack)
        {
            SetTmageUrl();
        }
        if (Session["Login"] == null)
        {
            lblLogin.Visible = false;
            LinkButton1.Text = "Login";
        }
        else
        {
            lblLogin.Text = "Welcome" + Session["Login"];
            lblLogin.Visible = true;
            LinkButton1.Text = "Logout";
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        //for slider
        SetTmageUrl();
    }
    //for slider
    private void SetTmageUrl()
    {
        Random _rand = new Random();
        int i = _rand.Next(1, 5);
        Image1.ImageUrl = "~/image/" + i.ToString() + ".jpg";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["User"]="";
    }
}
