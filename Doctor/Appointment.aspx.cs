using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doctor_Appointment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Doctorid = Session["Docid"].ToString();
        //HiddenField1.Value = Session["Docid"].ToString();
        bindgrid();
    }
        public void bindgrid()
    {
        Class1.connection();
        string q = "select t2.Aid,t1.Patid,t1.Patname,t1.Pataddress,t1.Patemail,t1.Patmobile,t2.Adate,t1.Patphoto,t2.Astatus,t2.Astarttime,t2.Aendtime from Appointment t2,Patient t1 where t1.Patid=t2.Patid ";
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        GridView1.EmptyDataText = "No Records";
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

 
    protected void btnconfirm_Click1(object sender, EventArgs e)
    {
        Button lk = sender as Button;
        GridViewRow gr = lk.NamingContainer as GridViewRow;
        HiddenField hr = (HiddenField)gr.Cells[0].FindControl("hiddenid");
        HiddenField hr1 = (HiddenField)gr.Cells[0].FindControl("HiddenField1");
        int id = Convert.ToInt32(hr.Value);
        Class1.connection();
        string v1 = "Confirmed";
        string q1 = "update Appointment set Astatus='" + v1 + "' where Aid="+id.ToString();
        Class1.execute(q1);
     
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Button lk = (Button)e.Row.FindControl("btndelete");
            lk.Attributes.Add("onclick", "javascript:return del();");
        }
    }



    protected void btndelete_Click(object sender, EventArgs e)
    {
        Button lk = sender as Button;
        GridViewRow gr = lk.NamingContainer as GridViewRow;
        HiddenField hr = (HiddenField)gr.Cells[0].FindControl("hiddenid");
        HiddenField hr1 = (HiddenField)gr.Cells[0].FindControl("HiddenField1");
        int id = Convert.ToInt32(hr.Value);
        Class1.connection();
        string v1 = "Cancelled";
        string q1 = "update Appointment set Astatus='"+v1+"' where Aid=" + id.ToString();
        Class1.execute(q1);
    }
}
