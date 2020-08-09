using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_index1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Class1.connection();
        string q = "select * from Doctor";
        DataSet ds = Class1.filldata(q);
        Label1.Text = ds.Tables[0].Rows.Count.ToString();
        // Label1.Text = ds.ToString();ds2.Tables[0].Rows.Count

        string q1 = "select * from Patient";
        DataSet ds1 = Class1.filldata(q1);
        Label2.Text = ds1.Tables[0].Rows.Count.ToString();


        string q2 = "select * from Appointment";
        DataSet ds2 = Class1.filldata(q2);
        Label3.Text = ds2.Tables[0].Rows.Count.ToString();

        bindgrid();
        bindgrid1();
    }

    public void bindgrid()
    {
        Class1.connection();
        string q3 = "select Docphoto,Docname,Docspeciality,Docearned,Docreview, Docid from Doctor";
        DataSet ds = Class1.filldata(q3);
        GridView1.EmptyDataText = "Data Not Fetched";
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    public void bindgrid1()
    {
        Class1.connection();
        string q4 = "select T1.Patname,T1.Patemail,T2.totalamount, T1.Patid from Patient T1, payment T2 where T1.Patid=T2.Patid";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ";
        DataSet ds1 = Class1.filldata(q4);
        GridView2.EmptyDataText = "Data Not Fetched";
        GridView2.DataSource = ds1;
        GridView2.DataBind();

        string q5 = "select T1.Docid, T1.Docname, T1.Docspeciality, T2.Patid, T2.Patname, T3.Atime, T3.Astatus, T3.Aamount from Doctor T1, Patient T2, Appointment T3 where T3.Docid = T1.Docid and T3.Patid = T2.Patid";
        DataSet ds2 = Class1.filldata(q5);

        GridView3.EmptyDataText = "Data Not Fetched";
        GridView3.DataSource = ds2;
        GridView3.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}