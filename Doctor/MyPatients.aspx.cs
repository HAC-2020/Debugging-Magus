using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Doctor_MyPatients : System.Web.UI.Page
{
    string Doctorid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Doctorid = Session["Docid"].ToString();
        //HiddenField1.Value = Session["Docid"].ToString();
        bindgrid();
    }

    public void bindgrid()
    {
        Class1.connection();
        string q = "select * from Patient";
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        GridView1.EmptyDataText = "Data Not Fetched";
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
}