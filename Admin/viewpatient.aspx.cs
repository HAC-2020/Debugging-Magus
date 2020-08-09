using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Admin_viewpatient : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();

            Class1.connection();

            string q = "select T1.Patname, T1.Patemail, T2.statename, T3.cityname from Patient T1, State T2, City T3 where T2.stateid= T1.stateid, T3.cityid=T1.cityid and Patid=" + id.ToString();
            DataSet ds = Class1.filldata(q);

            DetailsView1.EmptyDataText = "Data Not Fetched";
            DetailsView1.DataSource = ds;
            DetailsView1.DataBind();
        }
    }
}