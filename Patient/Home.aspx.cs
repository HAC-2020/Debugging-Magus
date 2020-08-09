using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Patient_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddrop1();
            binddrop3();
            DropDownList2.Items.Insert(0, "--City--");
        }
    }
    public void binddrop1()
    {


        Class1.connection();

        string q = "select * from State";

        DataSet ds = Class1.filldata(q);

        DropDownList1.DataSource = ds;
        DropDownList1.DataValueField = "stateid";
        DropDownList1.DataTextField = "statename";
        DropDownList1.DataBind();

        DropDownList1.Items.Insert(0, "--State--");
    }
    public void binddrop3()
    {


        Class1.connection();

        string q = "select * from Speciality";

        DataSet ds = Class1.filldata(q);

        DropDownList3.DataSource = ds;
        DropDownList3.DataValueField = "SP_Id";
        DropDownList3.DataTextField = "SP_Name";
        DropDownList3.DataBind();

        DropDownList3.Items.Insert(0, "--Speciality--");
    }

    

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {





        string q1 = "select D.*,S.SP_Name from Doctor D,Speciality S where D.Docspeciality = S.SP_Id and cityid= " + DropDownList2.SelectedValue.ToString() + " and Docspeciality = " + DropDownList3.SelectedValue.ToString();

        DataSet ds1 = Class1.filldata(q1);
        DataList1.DataSource = ds1;
        DataList1.DataBind();
    }

    protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        Class1.connection();
        string q = "select * from City where stateid= " + DropDownList1.SelectedValue.ToString();

        DataSet ds = Class1.filldata(q);


        DropDownList2.DataSource = ds;
        DropDownList2.DataValueField = "cityid";
        DropDownList2.DataTextField = "cityname";
        DropDownList2.DataBind();

        DropDownList2.Items.Insert(0, "--City--");
    }
}