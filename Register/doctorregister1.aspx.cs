using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register_doctorregister1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string rpath = Server.MapPath("Doctor-verification") + "/";
        if (FileUpload1.HasFile)
        {
            if (FileUpload2.HasFile)
            {
                FileUpload1.SaveAs(rpath + FileUpload1.FileName);
                string ipath = "~/Register/Doctor-verification/" + FileUpload1.FileName;
                FileUpload2.SaveAs(rpath + FileUpload2.FileName);
                string ipath2 = "~/ Register/Doctor-verification/" + FileUpload2.FileName;

                string q = "update Doctor set Docexperience='" + TextBox1.Text + "', Docdob = '" + TextBox2.Text + "', Docmobile='" + TextBox4.Text + "', Docphoto= '" + ipath + "', Docverify= '" + ipath2 + "'"; 
                    if (Class1.execute(q))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registered successfully... Have a nice day!');window.location ='../Doctor/Dashboard.aspx';", true);
                    clrtxt();

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert(' Sorry error occurred....Try after sometime');window.location ='../Register/doctorregister.aspx';", true);
                    clrtxt();
                }

            }
        }
            }

    public void clrtxt()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
    }
}