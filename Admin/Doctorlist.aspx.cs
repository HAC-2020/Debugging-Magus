using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Doctorlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1.connection();
        string q3 = "select Docphoto,Docname,Docspeciality,Docearned,Docreview, Docid from Doctor";
        DataSet ds = Class1.filldata(q3);
        GridView4.EmptyDataText = "Data Not Fetched";
        GridView4.DataSource = ds;
        GridView4.DataBind();

    }
}