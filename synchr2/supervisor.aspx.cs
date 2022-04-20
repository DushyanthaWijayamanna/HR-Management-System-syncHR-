using System;
using System.Data;
using System.Data.SqlClient;

namespace synchr2
{
    public partial class supervisor : System.Web.UI.Page
    {

        string connectionstring = "Data Source=localhost;Initial Catalog=HrmsDatabase2;Integrated Security=True";
        string connectionstring1 = "Data Source=localhost;Initial Catalog=HrmsDatabase2;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
           // DateTime today = DateTime.Today;

            if (!IsPostBack)
            {
                MultiViewSupervisor.ActiveViewIndex = 0;
            }

            if (!IsPostBack)
            {
                MultiViewunittables.ActiveViewIndex = 0;
            }


            GridViewPrintunit.DataBind();
            GridVewHandleunit.DataBind();

            int hour = DateTime.Now.Hour;

            
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        protected void btnProduction_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 1;
        }

        protected void btnTrain_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 2;
        }

        protected void btnLeaves_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 3;
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 4;

            
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 0;
        }

        protected void txtSaveSup_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('" + txtdatenew.Text + "')</script>");
            if (selectUnit.SelectedValue == "0")
            {

                Response.Write("<script>alert('Please Select Unit Type....');</script>");

            }
            else if (selectUnit.SelectedValue == "1")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {

                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else
                {

                    try
                    {



                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into printunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewPrintunit.DataBind();



                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }







                }

                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into chartTbl values('"+txtdatenew.Text+"','"+selectUnit.SelectedItem.Text+"',"+txtTotalProduction.Text+")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                   // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch(Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into damageCountTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," +txtDamageCount.Text+ ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }





            }
            else if (selectUnit.SelectedValue == "2")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into handleunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridVewHandleunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }



                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into chartTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtTotalProduction.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into damageCountTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtDamageCount.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else if (selectUnit.SelectedValue == "3")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");

                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into cuttingunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewCuttingunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }


                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into chartTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtTotalProduction.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into damageCountTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtDamageCount.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
            else if (selectUnit.SelectedValue == "4")
            {



                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");

                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into borderingunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewborderingunit.DataBind();


                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }


                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into chartTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtTotalProduction.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                 //   Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into damageCountTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtDamageCount.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }


            }
            else if (selectUnit.SelectedValue == "5")
            {
                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into tailoringunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewTailoringunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }




                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into chartTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtTotalProduction.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into damageCountTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtDamageCount.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }




            }
            else if (selectUnit.SelectedValue == "6")
            {

                if (txtdatenew.Text == "" || txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields......');</script>");
                }
                else
                {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "insert into completeunitTbl values('" + txtdatenew.Text + "','" + txtEmployeeId.Text + "'," + txtPresentEmployees.Text + "," + txtAbsenceEmployees.Text + "," + txtTotalProduction.Text + "," + txtDamageCount.Text + ")";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Inserted....')</script>");
                        GridViewCompleteunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }




                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into chartTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtTotalProduction.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
                try
                {
                    SqlConnection con = new SqlConnection(connectionstring);
                    string queary = "insert into damageCountTbl values('" + txtdatenew.Text + "','" + selectUnit.SelectedItem.Text + "'," + txtDamageCount.Text + ")";
                    SqlCommand cmd = new SqlCommand(queary, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    // Response.Write("<script>alert('Data Inserted another table....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connectionstring);
                string query = "select * from hrDepartmentTbl";
                SqlDataAdapter adp = new SqlDataAdapter(query, con);
                con.Open();
                DataTable tb = new DataTable();
                adp.Fill(tb);
                con.Close();
                //GridView1.DataSource = tb;

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");

            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnViewGrid_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "0")
            {
                Response.Write("<script>alert('Select Unit....')</script>");


            }
            else if (DropDownList1.SelectedValue == "1")
            {
                MultiViewunittables.ActiveViewIndex = 1;

            }
            else if (DropDownList1.SelectedValue == "2")
            {

                MultiViewunittables.ActiveViewIndex = 2;
            }

            else if (DropDownList1.SelectedValue == "3")
            {

                MultiViewunittables.ActiveViewIndex = 3;
            }

            else if (DropDownList1.SelectedValue == "4")
            {

                MultiViewunittables.ActiveViewIndex = 4;
            }
            else if (DropDownList1.SelectedValue == "5")
            {

                MultiViewunittables.ActiveViewIndex = 5;
            }

            else if (DropDownList1.SelectedValue == "6")
            {

                MultiViewunittables.ActiveViewIndex = 6;
            }
        }

        protected void btnUpdateSup_Click(object sender, EventArgs e)
        {
            if (selectUnit.SelectedValue == "0")
            {
                Response.Write("<script>alert('please Select Unit to Update Data....')</script>");

            }
            else if (selectUnit.SelectedValue == "1")
            {
                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update printunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }


            }
            else if (selectUnit.SelectedValue == "2")
            {
                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update handleunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }

            }
            else if (selectUnit.SelectedValue == "3")
            {

                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update cuttingunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }





            }
            else if (selectUnit.SelectedValue == "4")
            {
                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update borderingunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }








            }
            else if (selectUnit.SelectedValue == "5")
            {


                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update TailoringunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }







            }
            else if (selectUnit.SelectedValue == "6")
            {

                if (txtEmployeeId.Text == "" || txtPresentEmployees.Text == "" || txtAbsenceEmployees.Text == "" || txtTotalProduction.Text == "" || txtDamageCount.Text == "")
                {
                    Response.Write("<script>alert('Please Fill All Fields....')</script>");
                }
                else
                {


                    try
                    {
                        //Response.Write("<script>alert(' Data Updated....')</script>");

                        SqlConnection con = new SqlConnection(connectionstring);
                        string query = "update completeunitTbl set Supervisor_Id='" + txtEmployeeId.Text + "',Present_Employees=" + txtPresentEmployees.Text + ",Absence_Employees=" + txtAbsenceEmployees.Text + ",Total_Production=" + txtTotalProduction.Text + ",Damage_Count=" + txtDamageCount.Text + " where Date='" + txtdatenew.Text + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert(' Data Updated....')</script>");
                        GridViewPrintunit.DataBind();

                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }





            }




        }

        protected void btnClearSupervisor_Click(object sender, EventArgs e)
        {
            txtdatenew.Text = "";
            txtEmployeeId.Text = "";
            txtPresentEmployees.Text = "";
            txtAbsenceEmployees.Text = "";
            txtTotalProduction.Text = "";
            txtDamageCount.Text = "";
            selectUnit.SelectedValue = "0";
        }

        protected void btnSubmitTrain_Click(object sender, EventArgs e)
        {
            if (txttrainingNeedDate.Text == "" || DropDownListTrainingNeeds.SelectedValue == "0" || txttrainnigNeedId.Text == "" || txtEmployeeTraininNeedName.Text == "")
            {


                Response.Write("<script>alert(' Enter The Relevant Data ....')</script>");


            }
            else
            {
                //Response.Write("<script>alert('" +DropDownListTrainingNeeds.SelectedItem.Text + "');</script>");
                try
                {

                    SqlConnection con = new SqlConnection(connectionstring);
                    string query = "insert into TraninigNeedsTbl values('"+txttrainingNeedDate.Text+"','"+DropDownListTrainingNeeds.SelectedItem.Text+"','"+txttrainnigNeedId.Text+"','"+txtEmployeeTraininNeedName.Text+"')";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Inserted....')</script>");
                    //GridViewPrintunit.DataBind();
                    btnclear();


                }
                catch (Exception ex)
                {


                    Response.Write("<script>alert('" + ex.Message + "');</script>");


                }






            }
        }
        void btnclear()
        {
            txtEmployeeTraininNeedName.Text = "";
            DropDownListTrainingNeeds.SelectedValue="0";
            txttrainingNeedDate.Text = "";
            txttrainnigNeedId.Text = "";


        
        }

        void outsideworkerclear()
        {
            DropDownListType.SelectedValue = "0";
            txtWorkerName.Text = "";
            txtWorkerId.Text = "";
            DropDownListSelectMonth.SelectedValue = "0";
            txtUmbrellaCode.Text = "";
            txtCoverAmount.Text = "";
            txtFrameAmount.Text = "";
            txtThreadAmount.Text = "";
            txtExpected.Text = "";
            txtRejected.Text = "";




        }

        //protected void btnTrainingNeedClear_Click(object sender, EventArgs e)
        //{

        //}

        protected void btnOutSourceSubmit_Click(object sender, EventArgs e)
        {
            if (DropDownListType.SelectedValue == "0" || txtWorkerName.Text == "" || txtWorkerId.Text == "" || DropDownListSelectMonth.SelectedValue == "0" || txtUmbrellaCode.Text == "" || txtCoverAmount.Text == "" || txtFrameAmount.Text == "" || txtThreadAmount.Text == "" || txtExpected.Text == "" || txtRejected.Text == "")
            {
                Response.Write("<script>alert('Please Fill All Fields....')</script>");
            }
            else
            {
                try
                {
                  

                    SqlConnection con = new SqlConnection(connectionstring);
                    string query = "insert into OutSourceOrderTbl values('" + DropDownListType.SelectedItem.Text + "','"+txtWorkerName.Text+"','"+txtWorkerId.Text+"','"+DropDownListSelectMonth.SelectedItem.Text+"','"+txtUmbrellaCode.Text+"',"+txtCoverAmount.Text+","+txtFrameAmount.Text+","+txtThreadAmount.Text+","+txtExpected.Text+","+txtRejected.Text+")";
                    SqlCommand cmd = new SqlCommand(query, con);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Inserted....')</script>");
                    outsideworkerclear();

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }
            
            
            
            
            }
        }

        protected void btnLeave_Click(object sender, EventArgs e)
        {
            if (DropDownListUnit.SelectedValue == "0" || txtLeaveEmployeeid.Text == "" || txtLeaveDate.Text == "" || DropDownListLeaveType.SelectedValue == "0")
            {
                Response.Write("<script>alert('Please Fill All Fields....')</script>");

            }
            else {
                if (DropDownListLeaveType.SelectedValue == "1")
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string quary = "Select * from workTbl where employee_number='" + txtLeaveEmployeeid.Text + "'";
                        SqlCommand cmd = new SqlCommand(quary, con);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        if (rdr.Read() == true)
                        {

                            int anualleave = Convert.ToInt32(rdr.GetValue(19));
                            int casulleave = Convert.ToInt32(rdr.GetValue(20));

                            //Response.Write("<script>alert('" + anualleave + "');</script>");

                            try
                            {
                                int updatevalue;

                                if (anualleave > 0)

                                {
                                    updatevalue = anualleave - 1;
                                    //Response.Write("<script>alert('" + updatevalue + "');</script>");

                                    SqlConnection sqlConnection = new SqlConnection(connectionstring1);
                                    //Response.Write("<script>alert('" + txtLeaveEmployeeid.Text + "');</script>");

                                    string query = "update  workTbl set annual_leave='" + updatevalue + "'where employee_number='" + txtLeaveEmployeeid.Text + "'";
                                    SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
                                    sqlConnection.Open();
                                    sqlCommand.ExecuteNonQuery();
                                    sqlConnection.Close();
                                    Response.Write("<script>alert(' Leave Requset Approved....')</script>");
                                    if (updatevalue > 0)
                                    {

                                        try
                                        {


                                            SqlConnection con1 = new SqlConnection(connectionstring);
                                            string query1 = "insert into leaveDataTbl values('" + DropDownListUnit.Text + "','" + txtLeaveEmployeeid.Text + "','" + txtLeaveDate.Text + "','" + DropDownListLeaveType.SelectedItem.Text + "')";
                                            SqlCommand cmd1 = new SqlCommand(query1, con1);

                                            con1.Open();
                                            cmd1.ExecuteNonQuery();
                                            con1.Close();
                                            //Response.Write("<script>alert('inserted....')</script>");


                                        }
                                        catch (Exception ex)
                                        {

                                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                                        }




                                    }
                                    else
                                    {



                                    }


                                }
                                else
                                {


                                    Response.Write("<script>alert('No Annual Leaves AnyMore....')</script>");

                                }










                            }
                            catch (Exception ex)
                            {

                                Response.Write("<script>alert('" + ex.Message + "');</script>");

                            }



                        }
                        else
                        {

                            Response.Write("<script>alert('Invalid EmployeeId Check Again....')</script>");


                        }


                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }


                }
                else if (DropDownListLeaveType.SelectedValue == "2")
                {


                    try
                    {
                        SqlConnection con = new SqlConnection(connectionstring);
                        string quary = "Select * from workTbl where employee_number='" + txtLeaveEmployeeid.Text + "'";
                        SqlCommand cmd = new SqlCommand(quary, con);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();
                        if (rdr.Read() == true)
                        {

                           // int anualleave = Convert.ToInt32(rdr.GetValue(19));
                            int casulleave = Convert.ToInt32(rdr.GetValue(20));

                            //Response.Write("<script>alert('" + casulleave + "');</script>");

                            try
                            {
                                int updatevalue;

                                if (casulleave > 0)

                                {
                                    updatevalue = casulleave - 1;
                                    //Response.Write("<script>alert('" + updatevalue + "');</script>");

                                    SqlConnection sqlConnection = new SqlConnection(connectionstring1);
                                    //Response.Write("<script>alert('" + txtLeaveEmployeeid.Text + "');</script>");

                                    string query = "update  workTbl set casual_leave='" + updatevalue + "'where employee_number='" + txtLeaveEmployeeid.Text + "'";
                                    SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
                                    sqlConnection.Open();
                                    sqlCommand.ExecuteNonQuery();
                                    sqlConnection.Close();
                                    Response.Write("<script>alert(' Leave Requset Approved....')</script>");
                                    if (updatevalue > 0)
                                    {

                                        try
                                        {


                                            SqlConnection con1 = new SqlConnection(connectionstring);
                                            string query1 = "insert into leaveDataTbl values('" + DropDownListUnit.Text + "','" + txtLeaveEmployeeid.Text + "','" + txtLeaveDate.Text + "','" + DropDownListLeaveType.SelectedItem.Text + "')";
                                            SqlCommand cmd1 = new SqlCommand(query1, con1);

                                            con1.Open();
                                            cmd1.ExecuteNonQuery();
                                            con1.Close();
                                            //Response.Write("<script>alert('inserted....')</script>");


                                        }
                                        catch (Exception ex)
                                        {

                                            Response.Write("<script>alert('" + ex.Message + "');</script>");
                                        }




                                    }
                                    else
                                    {



                                    }


                                }
                                else
                                {


                                    Response.Write("<script>alert('No Casual Leaves AnyMore....')</script>");

                                }










                            }
                            catch (Exception ex)
                            {

                                Response.Write("<script>alert('" + ex.Message + "');</script>");

                            }



                        }
                        else
                        {

                            Response.Write("<script>alert('Invalid EmployeeId Check Again....')</script>");


                        }


                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }







                }

                leaveClear();

            }
        }
        public void leaveClear()
        {

            DropDownListUnit.SelectedValue = "0";
            txtLeaveEmployeeid.Text = "";
            txtLeaveDate.Text = "";
            DropDownListLeaveType.SelectedValue = "0";
        
        }
        
        
    }
}
