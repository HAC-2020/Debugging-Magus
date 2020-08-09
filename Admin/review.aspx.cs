using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_review : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1.connection();
        string  q = "select T1.Patname, T2.Docname, T3.Rating, T3.Description, T3.Rdate, T3.Rtime from Patient T1, Doctor T2, Review T3 where T3.Patid = T1.Patid and T3.Docid = T2.Docid";
        DataSet ds = Class1.filldata(q);
        Gridview1.EmptyDataText = "Data Not Fetched";
        Gridview1.DataSource = ds;
        Gridview1.DataBind();
    }
}