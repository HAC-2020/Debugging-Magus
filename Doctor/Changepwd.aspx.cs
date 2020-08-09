using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doctor_Changepwd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Doctorid = Session["Docid"].ToString();

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();

        string q = "select * from Patient where Patid='" + Session["Patid"] + "' and Patpwd = '" + TextBox1.Text + "'";

        DataSet ds = Class1.filldata(q);

        if (ds.Tables[0].Rows.Count > 0)
        {
            if (TextBox2.Text == TextBox3.Text)
            {
                string upd = "update Patient set Patpwd= '" + TextBox2.Text + "' where Patid='" + Session["Patid"] + "'";
                //Label1.Text = "Your oreder will be delivered soon";



                if (Class1.execute(upd))
                {
                    Label1.Text = "Your Password is updated :)";
                    clrtxt();
                }

            }


            else
            {
                Label1.Text = "Your NewPassword and ConformPassword does not match :(";
                clrtxt();
            }

        }
        else
        {
            Label1.Text = "Invalid Old Password :(";
            clrtxt();
        }
    }
    public void clrtxt()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
    }
}