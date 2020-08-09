using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_Docmsg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Session["Patid"] = 1;
            string id = Session["Patid"].ToString();
            HiddenField1.Value = Session["Patid"].ToString();
            Class1.connection();
            string q = "select * from Patient where Patid=" + id.ToString();
            DataSet ds = Class1.filldata(q);
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            //Label2.Text = ds.Tables[0].Rows[0][2].ToString();
            Label2.Text = ds.Tables[0].Rows[0][7].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][11].ToString();
            //Session["abc"] = ds.Tables[0].Rows[0][3].ToString();
            //Session["Docid"] = id.ToString();
            //bindgrid();
            datalist();

        }
       
    }
    public void datalist()
    {
        Class1.connection();
        string q = "select * from Doctor";
        DataSet ds = Class1.filldata(q);
        // DataList1.EmptyDataText = "Data Not Fetch";

        DataList1.DataSource = ds;
        DataList1.DataBind();



    }
}
