using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login_forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clrtxt();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Visible = true;
        Button2.Visible = true;
        RequiredFieldValidator2.Visible = true;
        TextBox1.Visible = false;
        Button1.Visible = false;
        RequiredFieldValidator1.Visible = false;
    }

    public void clrtxt()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox1.Visible = true;
        TextBox2.Visible = false;
        Button1.Visible = true;
        Button2.Visible = false;


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string q2 = "select * from Patient where Patemail='" + TextBox1.Text + "'";
        DataSet ds5 = Class1.filldata(q2);
        if (ds5.Tables[0].Rows.Count > 0)
        {
            TextBox2.Visible = true;
            if (TextBox2.Text != null)
            {
                string q3 = "update Patient set Patpwd='" + TextBox2.Text + "'";
                if (Class1.execute(q3))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password changed');window.location ='loginpage.aspx';", true);
                    clrtxt();
                }
            }
        }
        else
        {
            string q4 = "select * from Doctor where Docemail= '" + TextBox1.Text + "'";
            DataSet ds6 = Class1.filldata(q4);
            if (ds6.Tables[0].Rows.Count > 0)
            {
                TextBox2.Visible = true;
                if (TextBox2.Text != null)
                {
                    string q5 = "update Doctor set Docpwd='" + TextBox2.Text + "'";
                    if (Class1.execute(q5))
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Password changed');window.location ='loginpage.aspx';", true);
                        clrtxt();
                    }
                }
            }

        }
    }
}
