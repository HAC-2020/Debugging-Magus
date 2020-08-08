using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Login_loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        LogAdmin();
        LogDoctor();
        LogPatient();

    }

    public void LogAdmin()
    {
        string q = "select * from Admin where Adminname='" + TextBox1.Text + "' and Adminpwd='" + TextBox2.Text + "'";
        DataSet ds = Class1.filldata(q);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("/Admin/index1.aspx");
        }
    }

    public void LogDoctor()
    {
        string q1 = "select * from Doctor where Docname= '" + TextBox1.Text + "' and Docpwd='" + TextBox2.Text + "'";
        DataSet ds = Class1.filldata(q1);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("/Doctor/Dashboard.aspx");
        }

    }

    public void LogPatient()
    {
        string q2 = " select * from Patient where Patname='" + TextBox1.Text + "' and patpwd='" + TextBox2.Text + "'";
        DataSet ds = Class1.filldata(q2);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("/Patient/search.aspx");
        }
    }
}