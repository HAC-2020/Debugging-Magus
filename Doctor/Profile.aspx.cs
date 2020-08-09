using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Doctor_Profile : System.Web.UI.Page
{
    string Doctorid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Doctorid = Session["Docid"].ToString();
            //HiddenField1.Value = Session["Docid"].ToString();
            //string id = Request.QueryString["k"];
            //HiddenField1.Value = id.ToString();
            //dropcity.Items.Insert(0, "  --Select City--  ");
            //dropstate.Items.Insert(0, "  --Select State--  ");
            //dropspecial.Items.Insert(0, "  --Select--  ");
            binddrop();
            binddrop2();
            Class1.connection();

            string q = "select * from Doctor where Docid='" + Doctorid + "'";
            DataSet ds = Class1.filldata(q);
            string[] v1 = ds.Tables[0].Rows[0][10].ToString().Split('/');
            txtfile.Text= v1[3];
            txtusername.Text = ds.Tables[0].Rows[0][28].ToString();
            txtemail.Text = ds.Tables[0].Rows[0][2].ToString();
            txtname.Text = ds.Tables[0].Rows[0][1].ToString();
            txtmobile.Text = ds.Tables[0].Rows[0][4].ToString();
            txtdob.Text = ds.Tables[0].Rows[0][9].ToString();
            dropgender.Text= ds.Tables[0].Rows[0][16].ToString();
            txtbio.Text = ds.Tables[0].Rows[0][17].ToString();
            txthcname.Text = ds.Tables[0].Rows[0][18].ToString();
            Txtpricing.Text = ds.Tables[0].Rows[0][24].ToString();
            txtaddress.Text = ds.Tables[0].Rows[0][5].ToString();
            txtcode.Text = ds.Tables[0].Rows[0][8].ToString();
            dropcity.Text = ds.Tables[0].Rows[0][6].ToString();
            dropstate.Text = ds.Tables[0].Rows[0][7].ToString();
            dropspecial.Text = ds.Tables[0].Rows[0][13].ToString();
            getCity();
            
        }

    }
    public void binddrop()
    {
        Class1.connection();
        string q = "select * from State";

        DataSet ds = Class1.filldata(q);

        dropstate.DataSource = ds;
        dropstate.DataTextField = "statename";
        dropstate.DataValueField = "stateid";
        dropstate.DataBind();
        dropstate.Items.Insert(0, "  --Select State--  ");
    }
    public void binddrop2()
    {
        Class1.connection();
        string q = "select * from speciality";

        DataSet ds = Class1.filldata(q);

        dropspecial.DataSource = ds;
        dropspecial.DataTextField = "SP_Name";
        dropspecial.DataValueField = "SP_Id";
        dropspecial.DataBind();
        dropspecial.Items.Insert(0, "  --Select--  ");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string rpath = Server.MapPath("Image") + "/";
        if(FileUpload1.HasFile)
        { 
           FileUpload1.SaveAs(rpath + FileUpload1.FileName);
            string ipath = "~/Doctor/Image/" + FileUpload1.FileName;

            Class1.connection();
            string q = "update Doctor set Docname='" + txtname.Text + "',Docmobile='" + txtmobile.Text + "',Docgender='" + dropgender.Text + "',Docdob='" + txtdob.Text + "',Docbio='" + txtbio.Text + "',Doc_hcname='" + txthcname.Text + "',Daddress='" + txtaddress.Text + "',docpincode='" + txtcode.Text + "',Docphoto='"+ipath+"',cityid='"+dropcity.SelectedValue+ "',stateid='" + dropstate.SelectedValue + "',Docspeciality='" + dropspecial.SelectedValue + "',Docpricing='"+Txtpricing.Text+"' where Docid='" + Doctorid + "'";
            
            if (Class1.execute(q))
            {
                 ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Update Success!!.');window.location ='../Doctor/Profile.aspx';", true);

                //Label1.Text = "Updated";
            }
            else
            {
                //Label1.Text = "not Updated";
            }
        }
        else
        {
            string ipath = "~/Doctor/Image/" + txtfile.Text;

            Class1.connection();
            string q = "update Doctor set Docname='" + txtname.Text + "',Docmobile='" + txtmobile.Text + "',Docgender='" + dropgender.Text + "',Docdob='" + txtdob.Text + "',Docbio='" + txtbio.Text + "',Doc_hcname='" + txthcname.Text + "',Daddress='" + txtaddress.Text + "',docpincode='" + txtcode.Text + "',Docphoto='" + ipath + "',cityid='" + dropcity.SelectedValue + "',stateid='" + dropstate.SelectedValue + "',Docspeciality='" + dropspecial.SelectedValue + "',Docpricing='" + Txtpricing.Text + "' where Docid='" + Doctorid + "'" ;

            if (Class1.execute(q))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Update Success!!.');window.location ='../Doctor/Profile.aspx';", true);

                //Label1.Text = "Updated";
            }
            else
            {
                //Label1.Text = "not Updated";
            }
        }


    }



    protected void dropstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        getCity();
    }

    protected void getCity()
    {
        Class1.connection();

        string q = "select * from City where  stateid=" + dropstate.SelectedValue.ToString();

        DataSet ds = Class1.filldata(q);

        dropcity.DataSource = ds;
        dropcity.DataTextField = "cityname";
        dropcity.DataValueField = "cityid";
        dropcity.DataBind();
        dropcity.Items.Insert(0, new ListItem("Select City", "0"));
    }
}