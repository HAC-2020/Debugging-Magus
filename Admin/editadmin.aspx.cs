using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_editadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            Class1.connection();
            string q = "select * from Admin ";
            DataSet ds = Class1.filldata(q);
            TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
            TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string v1 = TextBox1.Text;
        string v2 = TextBox2.Text;
        string v3 = TextBox3.Text;
        string q = "update Admin set Adminname='" + v1 + "',Adminpwd='" + v2 + "',Adminemail='" + v3 + "' ";
        if (Class1.execute(q))
        {
            Response.Redirect("Profile.aspx");
        }
        else
        {
            Label1.Text = "Error..please try after sometime";
        }
    }
}