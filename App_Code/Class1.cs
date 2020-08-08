using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    public static SqlConnection con;
    public Class1()
    {
        
    }
    public static void connection()
    {
        string str = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\MediTraxx1\App_Data\MEDDB.mdf;Integrated Security=True";
        con = new SqlConnection(str);
        con.Open();
    }
    public static bool execute(string s)
    {
        SqlCommand cmd = new SqlCommand(s, con);
        int i = cmd.ExecuteNonQuery();

        if (i > 0)
        {
            return true;
        }
        return false;
    }
    public static DataSet filldata(string q)
    {
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(q, con);
        da.Fill(ds);
        return ds;
    }
}