using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_finalpay : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["k"];
            HiddenField1.Value = id.ToString();


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Class1.connection();
        string q = "select * from Appointment where Aid=" + HiddenField1.Value;
        DataSet ds = Class1.filldata(q);
        if (ds.Tables[0].Rows.Count > 0)
        {
            
            // Label1.Text = "Already Exist";
            string v1 = ds.Tables[0].Rows[0][2].ToString();
            string v2 = ds.Tables[0].Rows[0][1].ToString();
            string v3 = HiddenField1.Value;
            string v4 = ds.Tables[0].Rows[0][1].ToString();
            string v5 = TextBox2.Text;
            string v6 = DropDownList1.SelectedValue;
            string v7 = TextBox3.Text;
            string v8 = TextBox4.Text;
            string v9 = TextBox5.Text;
            string v10 = DateTime.Now.ToString("MM-dd-yy");

            //string q="select "
            string ins1 = "insert into Invoice values('" + v1 + "','" + v2 + "','" + v4 + "','" + v10 + "','" + v3 + "','" + v10 + "','" + v7 + "','" + v8 + "','" + v9 + "','" + v10 + "')";



            string ins = "insert into payment values('" + v1 + "','" + v2 + "','" + v3 + "','" + v4 + "','" + v5 + "','" + v6 + "','" + v7 + "','" + v8 + "','" + v9 + "','" + v10 + "')";
            //string d = DateTime.Now.ToString("MM-dd-yy");
            //string un = "select * from usermaster where U_Id=" + v1;
            //DataSet dsun = Class1.filldata(un);
            //string username = dsun.Tables[0].Rows[0][2].ToString();
            if (Class1.execute(ins))
            {
                string pn = "select * from Patient where Patid=" + v1;
                DataSet dpn = Class1.filldata(pn);
                string Patname = dpn.Tables[0].Rows[0][4].ToString();


                string dn = "select * from Doctor where Docid=" + v2;
                DataSet ddn = Class1.filldata(dn);
                string Docname = ddn.Tables[0].Rows[0][1].ToString();

                string upd = "update Appointment set Astatus='Paid' where Aid=" + Convert.ToInt32(v3);
                //Label1.Text = "Your oreder will be delivered soon";


              
                if (Class1.execute(upd))
                {
                    RadioButtonList1.Visible = false;

                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";//Label1.Text = "Your order will be delivered soon";
                    Response.Redirect("http://www.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + Patname + "@paypal.com&item_name=" + Docname + "&amount=" + v4 + "&currency_code=INR");
                }
              


            }
        }

    }

   
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
    }
}