using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Patient_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["Docid"] = "";
        if (Page.IsPostBack == false)
        {
            Bind_CheckList1();
            Bind_CheckList2();// Call CheckBox List Bind Method.  
        }
    }
    protected void Bind_CheckList1() // Method for Binding The Checkbox List  
    {
        List<string> listContents = new List<string>();// Create a List of String Elements  
        listContents.Add("Male");
        listContents.Add("Female");
        listContents.Add("Others");


        CheckboxList1.DataSource = listContents;//Set Datasource to CheckBox List  
        CheckboxList1.DataBind(); // Bind the checkboxList with String List.  

    }
    public void Bind_CheckList2()
    {
        Class1.connection();
        string q = "select * from speciality";
        //string q = "select * from city";
        DataSet ds = Class1.filldata(q);

        //CheckboxList2.EmptyDataText = "Data Not Fetched";
        CheckboxList2.DataSource = ds;
        CheckboxList2.DataValueField = "SP_Id";
        CheckboxList2.DataTextField = "SP_Name";
        CheckboxList2.DataBind();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string gender = "";
        for (int i = 0; i < CheckboxList1.Items.Count; i++)
        {

            if (CheckboxList1.Items[i].Selected)
            {
                gender += "'" + CheckboxList1.Items[i].Text + "',";
            }
        }
       

        string speciality = "";
        for (int i = 0; i < CheckboxList2.Items.Count; i++)
        {

            if (CheckboxList2.Items[i].Selected)
            {
                speciality += "'" + CheckboxList2.Items[i].Text + "',";
            }
        }

        speciality = speciality.Remove(speciality.Length - 1, 1);
        string qsid= "select * from Speciality where SP_Name in (" + speciality + ")";
        DataSet dsqsid = Class1.filldata(qsid);

        //ds.Tables[0].Rows[0][0].ToString();
        string q1 = "select D.*,S.SP_Name from Doctor D,Speciality S where D.Docspeciality=S.SP_Id";
        if (gender == "" && speciality == "")
        {

        }
        else if (gender != "" && speciality == "")
        {
            gender = gender.Remove(gender.Length - 1, 1);
            q1 += " and Docgender in (" + gender + ")";
        }
        else if (gender == "" && speciality != "")
        {
            speciality = speciality.Remove(speciality.Length - 1, 1);
            q1 += " and Docspeciality in (" + dsqsid.Tables[0].Rows[0][0].ToString() + ")";
        }
        else if (gender != "" && speciality != "")
        {
            gender = gender.Remove(gender.Length - 1, 1);
            speciality = speciality.Remove(speciality.Length - 1, 1);
            q1 += " and Docgender in (" + gender + ") and Docspeciality in (" + dsqsid.Tables[0].Rows[0][0].ToString() + ")";
        }
        DataSet ds1 = Class1.filldata(q1);
        DataList1.DataSource = ds1;
        DataList1.DataBind();
    }
}