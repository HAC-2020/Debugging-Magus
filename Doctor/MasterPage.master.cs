using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doctor_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string id = Session["Docid"].ToString();
        //HiddenField1.Value = Session["Docid"].ToString();
        //string id = Request.QueryString["k"];
        //HiddenField1.Value = id.ToString();
        Class1.connection();
        string q="select * from Doctor where Docid="+'4';
        DataSet ds = Class1.filldata(q);
        lblname.Text = ds.Tables[0].Rows[0][1].ToString();
        Image2.ImageUrl = ds.Tables[0].Rows[0][10].ToString();
        Image3.ImageUrl = ds.Tables[0].Rows[0][10].ToString();
        Image1.ImageUrl = ds.Tables[0].Rows[0][10].ToString();
        string q1 = "select * from DoctorEdu where Docid=" + '4';
        DataSet ds1 = Class1.filldata(q1);
        lbledu.Text = ds1.Tables[0].Rows[0][1].ToString();
    }
}
