using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doctor_Scheduletime : System.Web.UI.Page
{
    string Doctorid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Doctorid = Session["Docid"].ToString();
        //HiddenField1.Value = Session["Docid"].ToString();

        //string id = Request.QueryString["k"];
        //Doctor-id.Value = id.ToString();

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select t2.Aid,t1.Docid,t1.Docname,t2.Astatus,t2.Astarttime,t2.Aendtime,t2.Adate from Appointment t2 ,Doctor t1 where t1.Docid=t2.Docid";
        DataSet ds = Class1.filldata(q);
        Gridtime.EmptyDataText = "Data Not Fetched";
        Gridtime.DataSource = ds;
        Gridtime.DataBind();

    }

    protected void btntime_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string status = "Free";
        string q = "insert into Appointment(Docid,Astatus,Astarttime,Adate,Aendtime)values('" + Doctorid + "','" + status + "','" + txtstarttime.Text + "','" + txtdate.Text + "','" + txtendtime.Text + "')";
        Class1.execute(q);
        bindgrid();
        
    }

   
    protected void Button1_Click1(object sender, EventArgs e)
    {

        bindgrid();
    }

    protected void Gridtime_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lk = (LinkButton)e.Row.FindControl("LinkButton1");
            lk.Attributes.Add("onclick", "javascript:return del();");
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lk = sender as LinkButton;
        GridViewRow gr = lk.NamingContainer as GridViewRow;
        HiddenField hr = (HiddenField)gr.Cells[0].FindControl("HiddenField2");
        int id = Convert.ToInt32(hr.Value);
        Class1.connection();
        string q = "delete from Appointment where Aid=" + id.ToString();
        if (Class1.execute(q))
        {
            bindgrid();
        }
    }
}