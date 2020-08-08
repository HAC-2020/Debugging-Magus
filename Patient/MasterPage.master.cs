using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Patient_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["Patid"].ToString() == "")
            {
                Response.Redirect("../Login/loginpage.aspx");

            }

        }
        catch (Exception ex)
        {
            Response.Redirect("../Login/loginpage.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["Patid"] = "";
        Session.Abandon();
        Response.Redirect("../Login/loginpage.aspx");
    }
}
