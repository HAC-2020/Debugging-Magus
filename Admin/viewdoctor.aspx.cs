using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_viewdoctor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();

            Class1.connection();

            string q = "select T1.Docphoto, T1.Docname, T1.Docdob, T1.Docemail, T1.Daddress, T1.Docmobile, T2.statename, T3.cityname, T1.Docverify from Doctor T1, State T2, City T3  where T2.stateid=T1.stateid, T3.cityid=T1.cityid and Docid=" + id.ToString();
            DataSet ds = Class1.filldata(q);

            DetailsView1.EmptyDataText = "Data Not Fetched";
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }

    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}