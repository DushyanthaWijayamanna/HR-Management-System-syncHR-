using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace synchr2
{
    public partial class adminPage : System.Web.UI.Page
    {
        string connectionstring = "Data Source=localhost;Initial Catalog=HrmsDatabase2;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewHrDepartment.DataBind();
            GridViewSupervisor.DataBind();

            GridViewProductionMan.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (deleteDropdown.SelectedValue == "0")
            {
                Response.Write("<script>alert('Please Select Employee Type....');</script>");

            }
            else if (deleteDropdown.SelectedValue == "1")
            {
                if (txtDelete.Text == "")
                {
                    Response.Write("<script>alert('Pleaae Enter Employee Id....');</script>");

                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "delete from hrDepartmentTbl where employeeid='" + txtDelete.Text + "'";
                        con.Open();
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Deleted....');</script>");
                        GridViewHrDepartment.DataBind();


                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }

                }

            }
            else if (deleteDropdown.SelectedValue == "2")
            {

                if (txtDelete.Text == "")
                {
                    Response.Write("<script>alert('Pleaae Enter Employee Id....');</script>");

                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "delete from supervisorTbl where employeeid='" + txtDelete.Text + "'";
                        con.Open();
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Deleted....');</script>");
                        GridViewSupervisor.DataBind();


                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }

                }


            }
            else if (deleteDropdown.SelectedValue == "3")
            {
                if (txtDelete.Text == "")
                {
                    Response.Write("<script>alert('Pleaae Enter Employee Id....');</script>");

                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "delete from productionManagerTbl where employeeid='" + txtDelete.Text + "'";
                        con.Open();
                        SqlCommand cmd = new SqlCommand(query, con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Deleted....');</script>");
                        GridViewProductionMan.DataBind();


                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }

                }




            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            GridViewHrDepartment.DataBind();
            GridViewSupervisor.DataBind();

            GridViewProductionMan.DataBind();
            try
            {

                SqlConnection con = new SqlConnection(connectionstring);
                string query = "select * from hrDepartmentTbl";
                SqlDataAdapter adp = new SqlDataAdapter(query,con);
                con.Open();
                DataTable tb = new DataTable();
                adp.Fill(tb);
                con.Close();
                GridViewHrDepartment.DataSource = tb;


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (txtEmployeeId.Text == "" || txtUserName.Text == "" || txtPassword.Text==""|| DropDownListSecurityQuestion.SelectedValue=="0"|| txtAnswer.Text=="")

            {
                Response.Write("<script>alert('Please fill The All Fields....')</script>");
            }
            else
            {
                if (selectDepartment.SelectedValue == "1")
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into hrDepartmentTbl values('" + txtEmployeeId.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "','" + DropDownListSecurityQuestion.SelectedItem.Text + "','" + txtAnswer.Text + "')";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('You successfully Add An operator To The System....')</script>");
                        GridViewHrDepartment.DataBind();
                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }
                    


                }
                else if (selectDepartment.SelectedValue == "2")
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into supervisorTbl values('" + txtEmployeeId.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "','" + DropDownListSecurityQuestion.SelectedItem.Text + "','" + txtAnswer.Text + "')";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('You successfully Add An operator To The System....')</script>");
                        GridViewSupervisor.DataBind();
                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }


                }
                else if (selectDepartment.SelectedValue == "3")
                {


                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into productionManagerTbl values('" + txtEmployeeId.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "','" + DropDownListSecurityQuestion.SelectedItem.Text + "','" + txtAnswer.Text + "')";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('You successfully Add An operator To The System....')</script>");
                        GridViewProductionMan.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }





                }


            }
          
            

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (selectDepartment.SelectedValue == "0" || txtEmployeeId.Text == "")
            {
                Response.Write("<script>alert('Please Select Type And Enter Employee Id....')</script>");

            }
            else {

                if (selectDepartment.SelectedValue == "1")
                {

                    try
                    {

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update  hrDepartmentTbl set username='" + txtUserName.Text + "',password='" + txtPassword.Text + "',security_question='" + DropDownListSecurityQuestion.SelectedItem.Text + "',answer='" + txtAnswer.Text + "'where employeeid='" + txtEmployeeId.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewHrDepartment.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }





                }
                else if (selectDepartment.SelectedValue == "2")
                {

                    try
                    {

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update  supervisorTbl set username='" + txtUserName.Text + "',password='" + txtPassword.Text + "',security_question='" + DropDownListSecurityQuestion.SelectedItem.Text + "',answer='" + txtAnswer.Text + "'where employeeid='" + txtEmployeeId.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewSupervisor.DataBind();


                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }
                else if (selectDepartment.SelectedValue == "3")
                {

                    try
                    {

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update  supervisorTbl set username='" + txtUserName.Text + "',password='" + txtPassword.Text + "',security_question='" + DropDownListSecurityQuestion.SelectedItem.Text + "',answer='" + txtAnswer.Text + "'where employeeid='" + txtEmployeeId.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewProductionMan.DataBind();


                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }





                }





            }

        }

        protected void btnClearr_Click(object sender, EventArgs e)
        {
            txtEmployeeId.Text = "";
            txtAnswer.Text = "";
            txtPassword.Text = "";
            txtUserName.Text = "";
            selectDepartment.SelectedValue = "0";
            DropDownListSecurityQuestion.SelectedValue = "0";
            

        }

        protected void txtViewTable_Click(object sender, EventArgs e)
        {
            if (DropDownListViewDataTable.SelectedValue == "0")
            {
                Response.Write("<script>alert('Select Unit....')</script>");


            }
            else if (DropDownListViewDataTable.SelectedValue == "1")
            {
                MultiViewTables.ActiveViewIndex = 1;

            }
            else if (DropDownListViewDataTable.SelectedValue == "2")
            {

                MultiViewTables.ActiveViewIndex = 2;
            }
            else if (DropDownListViewDataTable.SelectedValue == "3")
            {

                MultiViewTables.ActiveViewIndex = 3;
            }
        }
    }
}