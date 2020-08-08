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
            string extension = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
            {
                if (FileUpload2.HasFile)
                {
                    string extensions = System.IO.Path.GetExtension(FileUpload2.FileName);
                    if (extensions == ".jpg" || extensions == ".png" || extensions == ".jpeg")
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
                    else
                    {
                        Label2.Text = "jpg,png,jpeg files only!";
                    }
            }
            else
            {
                Label1.Text = "jpg,png,jpeg files only!";
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