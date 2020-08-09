using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doctor_Dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Doctorid = Session["Docid"].ToString();
        //HiddenField1.Value = Session["Docid"].ToString();
        Class1.connection();
        //string id = Request.QueryString["k"];
        //HiddenField1.Value = id.ToString();
        string q1 = "select count(distinct(Aid)), count(distinct(Patid)) from Appointment where Docid = '"+Doctorid+"'";
        
       // string q = "select distinct(t3.Patid) from Doctor t2,Patient t1,Appointment t3 where t1.Patid=t3.Patid and t3.Docid=t2.Docid";
        DataSet ds = Class1.filldata(q1);
        Label1.Text = ds.Tables[0].Rows[0][1].ToString();
        Label2.Text = ds.Tables[0].Rows[0][0].ToString();
    }
}