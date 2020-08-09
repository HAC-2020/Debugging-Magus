using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1.connection();
         string q = "select Adminname from Admin";
        DataSet ds = Class1.filldata(q);

        FormView1.EmptyDataText = "Data Not Fetched";
        FormView1.DataSource = ds;
        FormView1.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("editadmin.aspx");
    }
}