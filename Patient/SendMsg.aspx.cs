using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Patient_SendMsg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //Session["Patid"] = 1;
            //string id = Session["Patid"].ToString();
            HiddenField1.Value = Session["Patid"].ToString();
            Class1.connection();
            string q = "select * from Patient where Patid=" + Session["Patid"].ToString();
            DataSet ds = Class1.filldata(q);
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            //Label2.Text = ds.Tables[0].Rows[0][2].ToString();
            Label2.Text = ds.Tables[0].Rows[0][7].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][11].ToString();
            //Session["abc"] = ds.Tables[0].Rows[0][3].ToString();
            //Session["Docid"] = id.ToString();
            //bindgrid();

            string id = Request.QueryString["k"];
            string q4 = "select * from Doctor where Docid=" + id.ToString();
            DataSet ds4 = Class1.filldata(q4);

            string pn = "select * from Patient where Patid=" + Session["Patid"].ToString();
            DataSet dpn = Class1.filldata(pn);
            TextBox2.Text = dpn.Tables[0].Rows[0][1].ToString();
            TextBox3.Text = ds4.Tables[0].Rows[0][1].ToString();
            bindmsg();

        }
        //string id = Request.QueryString["k"];

        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Send Message
        string id = Request.QueryString["k"];
        try
        {
            string ipath = Server.MapPath("msgpic") + "/";
            string v7 = "";
            string v8 = "";
            string v9 = "";
            //Label1.Text = ipath;
            
            Class1.connection();
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(ipath + FileUpload1.FileName);
                v7 = "~/Patient/msgpic/" + FileUpload1.FileName;
            }
            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(ipath + FileUpload2.FileName);
                v8 = "~/Patient/msgpic/" + FileUpload2.FileName;
            }
            if (FileUpload3.HasFile)
            {
                FileUpload3.SaveAs(ipath + FileUpload3.FileName);
                v9 = "~/Patient/msgpic/" + FileUpload3.FileName;
            }
            

            string v1 = Session["Patid"].ToString();
            string v2 = TextBox2.Text;
            string v3 = id.ToString();
            string v4 = TextBox3.Text;
            string v5 = TextBox1.Text;
            string v6 = "";
           
            string v10 = "";
            string q = "insert into messagetab values('" + v1 + "','" + v2 + "','" + v3 + "','" + v4 + "','" + v5 + "', '" + v6 + "','" + v7 + "','" + v8 + "','" + v9 + "','" + v10 + "')";

            if (Class1.execute(q))
            {
                Label5.Text = "Message Sent";
                clrtxt();
                bindmsg();
            }
            else
            {
                Label5.Text = "Message Not Sent";
            }
            
        }
        catch (Exception ex)
        {
            Label5.Text = ex.ToString();
        }
    }
    public void clrtxt()
    {
        TextBox1.Text = "";
    }
    public void bindmsg()
    {
        string u = Session["Patid"].ToString();
        string id = Request.QueryString["k"];
        Class1.connection();

        //string q = "select * from messagetab where senderid=" + u + "and receiverid=" + u;
        string q = "select * from messagetab where Patid = '" + u + "' and Docid = '" + id + "'";
        //Label1.Text = q;
        DataSet ds = Class1.filldata(q);

        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
}