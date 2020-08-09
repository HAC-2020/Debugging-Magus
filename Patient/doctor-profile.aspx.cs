using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_doctor_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();
            Class1.connection();
            string q = "select * from Doctor where Docid=" + id.ToString();
            DataSet ds = Class1.filldata(q);
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            Label2.Text = ds.Tables[0].Rows[0][19].ToString();
            Label3.Text = ds.Tables[0].Rows[0][13].ToString();
            Label4.Text = ds.Tables[0].Rows[0][23].ToString();
            Label5.Text = ds.Tables[0].Rows[0][5].ToString();
            Label6.Text = ds.Tables[0].Rows[0][24].ToString();
            Label7.Text = ds.Tables[0].Rows[0][17].ToString();
            Label16.Text = ds.Tables[0].Rows[0][13].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][10].ToString();
            Bind_DataList1();
            Bind_DataList2();
            Bind_DataList3();
            //Session["abc"] = ds.Tables[0].Rows[0][3].ToString();
            Session["Docid"] = id.ToString();
            //string cid = ds.Tables[0].Rows[0][1].ToString();
            //string cgid = "select * from categories where CAT_Id='" + cid + "'";
            //DataSet dscgid = Class1.filldata(cgid);
            //Session["cname"] = dscgid.Tables[0].Rows[0][1];
            //string q1 = "select * from stock where Pr_Id=" + id.ToString();
            //DataSet ds1 = Class1.filldata(q1);
            //Label2.Text = ds1.Tables[0].Rows[0][5].ToString();
            //Label3.Text = ds1.Tables[0].Rows[0][4].ToString();
            //Label5.Text = ds1.Tables[0].Rows[0][5].ToString();
            ////Image1.ImageUrl = ds.Tables[0].Rows[0][5].ToString();
            //Session["q"] = ds1.Tables[0].Rows[0][4];
            //Session["p"] = ds1.Tables[0].Rows[0][5];
            //datalist();
        }
        }
    public void Bind_DataList1()
    {
        Class1.connection();
        string q = "select * from DoctorEdu where Docid=" + HiddenField1.Value;
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        //CheckboxList2.EmptyDataText = "Data Not Fetched";
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
    public void Bind_DataList2()
    {
        Class1.connection();
        string q = "select * from DoctorExperience where Docid=" + HiddenField1.Value;
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        //CheckboxList2.EmptyDataText = "Data Not Fetched";
        DataList2.DataSource = ds;
        DataList2.DataBind();

    }
    public void Bind_DataList3()
    {
        Class1.connection();
        string q = "select * from DoctorAwards where Docid=" + HiddenField1.Value;
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        //CheckboxList2.EmptyDataText = "Data Not Fetched";
        DataList3.DataSource = ds;
        DataList3.DataBind();

    }
}