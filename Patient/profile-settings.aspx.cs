using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class Patient_profile_settings : System.Web.UI.Page
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
            //Image2.ImageUrl = ds.Tables[0].Rows[0][11].ToString();
            //Session["abc"] = ds.Tables[0].Rows[0][3].ToString();
            //Session["Docid"] = id.ToString();
            //bindgrid();

            binddrop3();
            binddrop2();




            //Fectching Data For Update

            string q1 = "select P.Patname,P.Patdob,P.Patbg,P.Patemail,P.Patmobile,P.Pataddress,C.cityname,S.statename,P.patpincode from Patient P,State S,City C where S.stateid=P.stateid and C.cityid=P.cityid and P.Patid=" + id.ToString();


            DataSet ds1 = Class1.filldata(q1);

            
            TextBox1.Text = ds1.Tables[0].Rows[0][0].ToString();
            TextBox3.Text = ds1.Tables[0].Rows[0][1].ToString();
            DropDownList1.Text = ds1.Tables[0].Rows[0][2].ToString();
            TextBox4.Text = ds1.Tables[0].Rows[0][3].ToString();
            TextBox5.Text = ds1.Tables[0].Rows[0][4].ToString();
            TextBox6.Text = ds1.Tables[0].Rows[0][5].ToString();
            DropDownList2.Text = ds1.Tables[0].Rows[0][6].ToString();
            DropDownList3.Text = ds1.Tables[0].Rows[0][7].ToString();
            TextBox9.Text = ds1.Tables[0].Rows[0][8].ToString();
            //Image2.ImageUrl = ds.Tables[0].Rows[0][9].ToString();




        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string i = Image1.ImageUrl;


        string rpath = Server.MapPath("Image") + "/";
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(rpath + FileUpload1.FileName);

            Image1.ImageUrl = "~/Patient/Image/" + FileUpload1.FileName;
             i = "~/Patient/Image/" + FileUpload1.FileName;
        }



        string v1 = TextBox1.Text;
        string v2 = TextBox3.Text;
        string v3 = DropDownList1.Text;
        string v4 = TextBox4.Text;
        string v5 = TextBox5.Text;
        string v6 = TextBox6.Text;
        string v7 = DropDownList2.SelectedValue.ToString();
        string v8 = DropDownList3.SelectedValue.ToString();
        string v9 = TextBox9.Text;

       
     

        string q = "update Patient set Patname='" + v1 + "',Patdob='" + v2 + "',Patbg='" + v3 + "',Patemail='" + v4 + "',Patmobile='" + v5 + "',Pataddress='" + v6 + "',cityid='" + v7 + "',stateid='" + v8 + "',patpincode='" + v9 + "',Patphoto='" + i + "' where Patid=" + HiddenField1.Value;

        if (Class1.execute(q))
        {
            Label3.Text = "Data  Updated";
            Response.Redirect("profile-settings.aspx");
        }
        else
        {
            Label3.Text = "Data Not Updated";
        }
    }
    public void binddrop3()
    {
        Class1.connection();
        string q = "select * from state";

        DataSet ds = Class1.filldata(q);

        DropDownList3.DataSource = ds;
        DropDownList3.DataValueField = "stateid";
        DropDownList3.DataTextField = "statename";
        DropDownList3.DataBind();

        //DropDownList3.Items.Insert(0, "--Select--");
    }
    public void binddrop2()
    {
        Class1.connection();
        string q = "select * from city where stateid= '"+ DropDownList3.SelectedValue.ToString() + "'";

        DataSet ds = Class1.filldata(q);

        DropDownList2.DataSource = ds;
        DropDownList2.DataValueField = "cityid";
        DropDownList2.DataTextField = "cityname";
        DropDownList2.DataBind();

        //DropDownList2.Items.Insert(0, "--Select--");
    }
}