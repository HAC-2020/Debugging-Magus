using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Patientlist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1.connection();
        string q4 = "select Patname,Patemail from Patient";
        DataSet ds1 = Class1.filldata(q4);
        GridView2.EmptyDataText = "Data Not Fetched";
        GridView2.DataSource = ds1;
        GridView2.DataBind();

    }
}