using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_invoice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["k"];
        //string uname = Session["username"].ToString();
        Class1.connection();


        string q = "select P.Patname,D.Docname,A.Adate,A.Astarttime,D.Daddress,PY.cardname,A.Aendtime from Appointment A,Patient P,Doctor D,payment PY where A.Patid=P.Patid and A.Docid=D.Docid and A.Aid=PY.Aid and A.Aid=" + id.ToString();

        DataSet ds = Class1.filldata(q);

        Label1.Text = ds.Tables[0].Rows[0][0].ToString();
        Label2.Text = ds.Tables[0].Rows[0][1].ToString();
        Label5.Text = id.ToString();
        Label3.Text = ds.Tables[0].Rows[0][4].ToString();
        Label4.Text = ds.Tables[0].Rows[0][5].ToString();
        Label6.Text = ds.Tables[0].Rows[0][6].ToString();
        Label7.Text = ds.Tables[0].Rows[0][2].ToString();
        Label8.Text = ds.Tables[0].Rows[0][3].ToString();
        //Label9.Text = ds.Tables[0].Rows[0][14].ToString();
    }
}