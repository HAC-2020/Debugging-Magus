using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Doctor_SocialMedia : System.Web.UI.Page
{
    string Doctorid;
    protected void Page_Load(object sender, EventArgs e)
    {
        Doctorid = Session["Docid"].ToString();
        //HiddenField1.Value = Session["Docid"].ToString();
        bindgrid();
        if (!IsPostBack)
        {

           // string id = Request.QueryString["k"];
            HiddenField1.Value = Doctorid;
          
        }
        }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string v1 = DropDownList1.Text;
        string v2 = DropDownList2.Text;
        string h = "select * from DoctorServices where Servicename='" + v1 + "'  ";
        DataSet ds3 = Class1.filldata(h);
        if (ds3.Tables[0].Rows.Count > 0)
        {
            Label1.Text = "Already Exists!";
        }
        else
        {
            string q = "insert into DoctorServices (Servicename,Docid,Servicerupees) values ('" + DropDownList1.Text + "','" + HiddenField1.Value + "','" + DropDownList2.Text + "')";

            if (Class1.execute(q))
            {
                bindgrid();
                Label1.Text = "Updated";
            }
            else
            {
                Label1.Text = "not updated";
            }
        }
    }
    public void bindgrid()
    {
        Class1.connection();
        string q = "select * from DoctorServices ";
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        GridView1.EmptyDataText = "Data Not Fetched";
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
}