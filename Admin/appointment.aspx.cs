using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindgrid();
    }

    public void bindgrid()
    {
        string q5 = "select T1.Docid, T1.Docname, T1.Docspeciality, T2.Patid, T2.Patname, T3.Atime, T3.Astatus, T3.Aamount from Doctor T1, Patient T2, Appointment T3 where T3.Docid = T1.Docid and T3.Patid = T2.Patid";
        DataSet ds2 = Class1.filldata(q5);

        GridView3.EmptyDataText = "Data Not Fetched";
        GridView3.DataSource = ds2;
        GridView3.DataBind();
    }
}