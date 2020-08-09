using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doctor_Experience : System.Web.UI.Page
{
    string Doctorid;
    protected void Page_Load(object sender, EventArgs e)
    {
     
              Doctorid = Session["Docid"].ToString();
        //string id = Session["Docid"].ToString();
        //HiddenField1.Value = Session["Docid"].ToString();
        //bindgrid();
    }

    protected void Btnedu_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string q = "insert into DoctorExperience(hospitalname,yearfrom,yearto,designation,Docid)values('" + txthospital.Text + "','" + txtfrom.Text + "','" + txtto.Text + "','" + txtdesign.Text + "','" + Doctorid + "')";
        Class1.execute(q);
        bindgrid();
        clrtxt();
    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select * from DoctorExperience";
        DataSet ds = Class1.filldata(q);

        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        LinkButton lk = sender as LinkButton;
        GridViewRow gr = lk.NamingContainer as GridViewRow;
        HiddenField hr = (HiddenField)gr.Cells[0].FindControl("HiddenField1");
        int id = Convert.ToInt32(hr.Value);
        Class1.connection();
        string q = "delete from DoctorExperience where expid=" + id.ToString();
        if (Class1.execute(q))
        {
            bindgrid();
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            LinkButton lk = (LinkButton)e.Row.FindControl("LinkButton1");
            lk.Attributes.Add("onclick", "javascript:return del();");
        }
    }

    public void clrtxt()
    {
        txtdesign.Text = "";
        txtfrom.Text = "";
        txtto.Text = "";
        txthospital.Text = "";
    }
}