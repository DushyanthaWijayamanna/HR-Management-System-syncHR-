using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace synchr2
{
    public partial class login : System.Web.UI.Page
    {
        string connectionString = "Data Source=localhost;Initial Catalog=HrmsDatabase2;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            dplDepartment.SelectedIndex = 0;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if(dplDepartment.SelectedValue == "admin")
                {
                    if(txtUserName.Text == "" || txtPassword.Text == "")
                    {
                        Response.Write("<script>alert('All Field must be inserted....');</script>");
                    }
                    else if (txtUserName.Text == "admin" && txtPassword.Text == "1234")
                    {
                        Response.Redirect("adminPage.aspx");
                    }
                }
                else if(dplDepartment.SelectedValue == "HrDepartment")
                {
                    if(txtUserName.Text == "" || txtPassword.Text == "")
                    {
                        Response.Write("<script>alert('All Field must be inserted....');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('okkk')</script>");
                        try
                            
                        {
                          //  string connectionString = "Data Source=DESKTOP-M9R4O4O;Initial Catalog=hrmsdatabase;Integrated Security=True";
                            SqlConnection con = new SqlConnection(connectionString);
                            string quary = "SELECT * FROM [dbo].[hrDepartmentTbl] WHERE username='"+txtUserName.Text+"' AND password='"+txtPassword.Text+"'";
                            SqlCommand cmd = new SqlCommand(quary,con);
                            con.Open();
                            SqlDataReader rdr = cmd.ExecuteReader();
                            
                            //con.Close();

                            if (rdr.HasRows)
                            {
                                while(rdr.Read())
                                {
                                    string username = txtUserName.Text;
                                    string password = txtPassword.Text;
                                    


                                    if (username == rdr.GetValue(1).ToString() && password == rdr.GetValue(2).ToString())
                                    {
                                        Response.Redirect("hrDepartment.aspx");
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('Invalied Username and Password')</script>");
                                    }
                                    con.Close();
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Invalied credentials')</script>");
                            }
                        }
                        catch(Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                        }
                    }
                   
                }
                else if(dplDepartment.SelectedValue == "supervisor")
                {
                    if (txtUserName.Text == "" || txtPassword.Text == "")
                    {
                        Response.Write("<script>alert('All Field must be inserted....');</script>");
                    }
                    else
                    {
                        try
                        {
                           
                            SqlConnection con = new SqlConnection(connectionString);
                            string quary = "SELECT * FROM [dbo].[supervisorTbl] WHERE username='" + txtUserName.Text + "' AND password='" + txtPassword.Text + "'";
                            SqlCommand cmd = new SqlCommand(quary, con);
                            con.Open();
                            SqlDataReader rdr = cmd.ExecuteReader();
                            //con.Close();

                            if (rdr.HasRows)
                            {
                                while (rdr.Read())
                                {
                                    string username = txtUserName.Text;
                                    string password = txtPassword.Text;

                                    if (username == rdr.GetValue(1).ToString() && password == rdr.GetValue(2).ToString())
                                    {
                                        Response.Redirect("supervisor.aspx");
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('Invalied Username and Password')</script>");
                                    }
                                    con.Close();
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Invalied credentials')</script>");
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                        }
                    }
                }
                else if(dplDepartment.SelectedValue == "ProductionManager")
                {
                    if (txtUserName.Text == "" || txtPassword.Text == "")
                    {
                        Response.Write("<script>alert('All Field must be inserted....');</script>");
                    }
                    else
                    {
                        try
                        {
                          //  string connectionString = "Data Source=DESKTOP-M9R4O4O;Initial Catalog=hrmsdatabase;Integrated Security=True";
                            SqlConnection con = new SqlConnection(connectionString);
                            string quary = "SELECT * FROM [dbo].[productionManagerTbl] WHERE username='" + txtUserName.Text + "' AND password='" + txtPassword.Text + "'";
                            SqlCommand cmd = new SqlCommand(quary, con);
                            con.Open();
                            SqlDataReader rdr = cmd.ExecuteReader();
                            //con.Close();

                            if (rdr.HasRows)
                            {
                                while (rdr.Read())
                                {
                                    string username = txtUserName.Text;
                                    string password = txtPassword.Text;

                                    if (username == rdr.GetValue(1).ToString() && password == rdr.GetValue(2).ToString())
                                    {
                                        Response.Redirect("productionManager.aspx");
                                    }
                                    else
                                    {
                                        Response.Write("<script>alert('Invalied Username and Password')</script>");
                                    }
                                    con.Close();
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('Invalied credentials')</script>");
                            }
                        }
                        catch (Exception ex)
                        {
                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }
    }
}