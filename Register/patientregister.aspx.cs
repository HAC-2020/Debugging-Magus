using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register_patientregister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            binddrop();
            DropDownList1.Items.Insert(0, "--select state--");
            DropDownList2.Items.Insert(0, "--select city--");
        }
    }


   
    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string v1 = TextBox1.Text;
        string v2 = TextBox2.Text;

        string q2 = "select * from Patient where Patname='" + v1 + "'and Patpwd='" + v2 + "'";
        DataSet ds5 = Class1.filldata(q2);
        if (ds5.Tables[0].Rows.Count > 0)
        {
          
        }
        else
        {
            string q = "insert into Patient(Patname,Patpwd,Patemail,stateid,cityid )values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "', '"+ DropDownList2.SelectedValue + "')";
            if (Class1.execute(q))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Registered successfully... Have a nice day!');window.location ='../Login/loginpage.aspx';", true);
                clrtxt();
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('sorry error occurred...Try after sometime');window.location ='../Register/patientregister.aspx';", true);

            }
        }
    }
        public void clrtxt()
    {
       
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        DropDownList2.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;
        }

    public void binddrop()
    {
        Class1.connection();
        string q = "select * from State";

        DataSet ds = Class1.filldata(q);

        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "statename";
        DropDownList1.DataValueField = "stateid";
        DropDownList1.DataBind();
    }




    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Class1.connection();

        string q = "select * from City where  stateid=" + DropDownList1.SelectedValue.ToString();

        DataSet ds = Class1.filldata(q);

        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "cityname";
        DropDownList2.DataValueField = "cityid";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, "  --Select City--  ");
    }
}