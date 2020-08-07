using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register_doctorregister : System.Web.UI.Page
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



    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        if(rb1.Checked == true)
        {
            string q = "insert into Doctor(Docname, Docpwd, Docemail, Docgender, Daddress, Doceducationdegree, Docspeciality) values ('" + TextBox1.Text + "', '" + TextBox6.Text + "','" + TextBox2.Text + "','" + rb1.Text + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            if (Class1.execute(q))
            {
                Response.Redirect("doctorregister1.aspx");
            }
        }

        else
        {
            string q = "insert into Doctor(Docname, Docpwd, Docemail, Docgender, stateid, cityid,  Daddress, Doceducationdegree, Docspeciality) values ('" + TextBox1.Text + "', '" + TextBox6.Text + "','" + TextBox2.Text + "','" + rb2.Text + "','" + DropDownList1.SelectedValue +"', '" + DropDownList2.SelectedValue + "','" + TextBox3.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
            if (Class1.execute(q))
            {
                Response.Redirect("doctorregister1.aspx");
            }
        }
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

    public void clrtxt()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox6.Text = "";
        TextBox8.Text = "";
        TextBox9.Text = "";
        DropDownList2.SelectedIndex = 0;
        DropDownList1.SelectedIndex = 0;

    }
}