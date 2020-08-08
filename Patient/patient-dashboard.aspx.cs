using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_patient_dashboard : System.Web.UI.Page
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
            Session["Docid"] = id.ToString();
            bindgrid1();
            bindgrid2();


        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("priya"))
        {
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('hi')</script>");

            Class1.connection();
            string n = e.CommandArgument.ToString();
            string st = "select * from Appointment where Aid=" + n.ToString();
            DataSet dsst = Class1.filldata(st);
            //int q2 = Convert.ToInt32(dsst.Tables[0].Rows[0][6]);
            //string proname = dsst.Tables[0].Rows[0][4].ToString();
            string stat = dsst.Tables[0].Rows[0][3].ToString();
            if (stat != "Paid")
            {
              
                    string upd = "update Appointment set Astatus= 'Free',Patid=NULL where Aid=" + n.ToString();
                if (Class1.execute(upd))
                {
                    bindgrid1();
                    bindgrid2();
                }

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Appointment Is Already Paid')</script>");
                bindgrid1();
                bindgrid2();
            }
        }
    }
    public void bindgrid1()
    {
        Class1.connection();
        //string q = "select * from payment where userid=" + Convert.ToInt32(Session["vid"]);
        string q = "select A.*,D.Docid,P.Patid,D.Docname,D.Daddress from Patient P,Doctor D,Appointment A where D.Docid=A.Docid And P.Patid=A.Patid And A.Astatus!='Paid' And A.Patid=" + Convert.ToInt32(Session["Patid"]);
        DataSet ds = Class1.filldata(q);
        GridView1.EmptyDataText = "No Pending Appointments";
        GridView1.DataSource = ds;
        GridView1.DataBind();
        //Label1.Text = q;
    }
    public void bindgrid2()
    {
        Class1.connection();
        //string q = "select * from payment where userid=" + Convert.ToInt32(Session["vid"]);
        string q = "select A.*,D.Docid,P.Patid,D.Docname,D.Daddress from Patient P,Doctor D,Appointment A where D.Docid=A.Docid And P.Patid=A.Patid And A.Astatus='Paid' And A.Patid=" + Convert.ToInt32(Session["Patid"]);
        DataSet ds = Class1.filldata(q);
        GridView2.EmptyDataText = "No Pending Appointments";
        GridView2.DataSource = ds;
        GridView2.DataBind();
        //Label1.Text = q;
    }
}