using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Session["Patid"] = 1;
            string id;
            if (Session["Docid"].ToString() == "")
            {
                Session["Docid"]= Request.QueryString["k"]; ;
                id = Request.QueryString["k"];
                HiddenField1.Value = id.ToString();
            }
            else
            {
                id = Session["Docid"].ToString();
                HiddenField1.Value = Session["Docid"].ToString();
            }
           
            Class1.connection();
            string q = "select * from Doctor where Docid=" + id.ToString();
            DataSet ds = Class1.filldata(q);
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            Label2.Text = ds.Tables[0].Rows[0][23].ToString();
            Label3.Text = ds.Tables[0].Rows[0][5].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][10].ToString();
            bindgrid();
        }
    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select * from Appointment where Docid=" + Convert.ToInt32(Session["Docid"]) + "and Astatus = 'Free' ";
        //string q = "select P.Pr_Id,C.CAT_Id,P.CAT_Id,C.CAT_Name,P.Pr_Name,P.Pr_Pic,Pr_Rdate,Pr_Qty,Pr_Price from product P,categories C where C.CAT_Id=P.CAT_Id And venderid=" + Convert.ToInt32(Session["vid"]);
        DataSet ds = Class1.filldata(q);
        GridView1.EmptyDataText = "Data Not Fetch";
        GridView1.DataSource = ds;
        GridView1.DataBind();
        //Label1.Text = q;
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("priya"))
        {

            Class1.connection();
            string n = e.CommandArgument.ToString();
            string upd = "update Appointment set Astatus= 'Pending',Patid=" + Session["Patid"] + " where Aid=" + n.ToString();
            if (Class1.execute(upd))
            {
                
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Your Request is pending.....Kindly see the Appointments Tab')</script>");
                bindgrid();
            }
        }
    }
}