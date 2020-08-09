using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Doctor_Message : System.Web.UI.Page
{
    TextBox type;
    string Doctorid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Doctorid = Session["Docid"].ToString();
            bindgrid();
            bindmsg();
        }
    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select t1.Patphoto,t2.msgid,t2.Pmessage from messagetab t2, Patient t1 where t1.Patid=t2.Patid ";
        DataSet ds = Class1.filldata(q);

        gridchat.DataSource = ds;
        gridchat.DataBind();

    }

    public void bindmsg()
    {
        //string u = Session["Docid"].ToString();
        string id = Request.QueryString["k"];
        Class1.connection();

        //string q = "select * from messagetab where senderid=" + u + "and receiverid=" + u;
        string q = "select t1.Patname,t1.Patphoto,t2.* from messagetab t2, Patient t1 where t1.Patid=t2.Patid";
        //Label1.Text = q;
        DataSet ds = Class1.filldata(q);

        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item)
        {
            Button lk = (Button)e.Item.FindControl("btnsend");
            type = (TextBox)e.Item.FindControl("txttype");
        }
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        Button b = sender as Button;
        DataList dl = b.NamingContainer as DataList;
        String qty = type.Text;
        Class1.connection();
     
        string id = Request.QueryString["k"];
        string q4 = "select * from Patient where Patid=" + id.ToString();
        DataSet ds4 = Class1.filldata(q4);
        string patientid = ds4.Tables[0].Rows[0][0].ToString();
        string q = "insert into messagetab(Patid,Docid,Dmessage) values('" + patientid + "','" + Doctorid + "','" + qty + "')";
        Class1.execute(q);
    }

    protected void gridchat_RowDataBound(object sender, GridViewRowEventArgs e)
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
        HiddenField hr = (HiddenField)gr.Cells[0].FindControl("HiddenField1");
        int id = Convert.ToInt32(hr.Value);
        Class1.connection();
        string q = "delete from messagetab where msgid=" + id.ToString();
        if (Class1.execute(q))
        {
            bindgrid();
        }
    }
}