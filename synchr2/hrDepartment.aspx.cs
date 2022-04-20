using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.Web.UI.DataVisualization.Charting;

namespace synchr2
{
    public partial class hrDepartment : System.Web.UI.Page
    {
        //DateTime today = DateTime.Today;
        string today = DateTime.UtcNow.ToString("MM-dd-yyyy");
        string connectionString = "Data Source=localhost;Initial Catalog=HrmsDatabase2;Integrated Security=True";
        //private string connectionstring;

        protected void Page_Load(object sender, EventArgs e)
        {
            //MultiViewSupervisor.ActiveViewIndex = 0;
            GetTainingNeed();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 0;
        }

        protected void btnAddemp_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 1;

        }

        protected void btnLabourrep_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 4;
        }

        protected void btnMonthlyrep_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 5;
        }

        protected void btnOutsideworkers_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 6;
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        protected void btnEvaluate_Click(object sender, EventArgs e)
        {
            if (DropDownListMonth.SelectedValue == "0" || txtWorkerID.Text == "")
            {

                Response.Write("<script>alert('Please Enter Month And Out Side Worker Id To Evaluate The Preformance......');</script>");

            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from OutSourceOrderTbl where Month='" + DropDownListMonth.SelectedItem.Text + "' and Id='" + txtWorkerID.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {
                        string worker_type = rdr.GetString(0);
                        string umbrella_code = rdr.GetString(4);
                        int cover_amount = Convert.ToInt32(rdr.GetValue(5));
                        int frame_amount = Convert.ToInt32(rdr.GetValue(6));
                        int thread_amount = Convert.ToInt32(rdr.GetValue(7));
                        double expected_umbrellas = Convert.ToInt32(rdr.GetValue(8));
                        double rejected_amount = Convert.ToInt32(rdr.GetValue(9));
                        Response.Write("<script>alert('" + expected_umbrellas + "');</script>");
                        //Response.Write("<script>alert('" + worker_type+ "');</script>");

                        double reject_precentage, cost_for_rawmaterials, payment_for_this_outside_worker, total_cost_for_this_outside_order, market_value_of_this_outside_order, profit_amount_from_this_outside_order, profit_precentage, profit_amount;
                        int valueble_goods;

                        if (umbrella_code == "bu1212")
                        {
                            reject_precentage = Math.Round(Convert.ToDouble((rejected_amount * 100) / expected_umbrellas), 2);
                            Response.Write("<script>alert('" + reject_precentage + "');</script>");
                            valueble_goods = (int)(expected_umbrellas - rejected_amount);
                            //Response.Write("<script>alert('" +valueble_goods+ "');</script>");
                            payment_for_this_outside_worker = valueble_goods * 50;
                            cost_for_rawmaterials = (cover_amount * 50) + (frame_amount * 50) + (thread_amount * 30);
                            payment_for_this_outside_worker = valueble_goods * 50;
                            total_cost_for_this_outside_order = cost_for_rawmaterials + payment_for_this_outside_worker;
                            market_value_of_this_outside_order = valueble_goods * 300;
                            profit_amount_from_this_outside_order = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            profit_precentage = Math.Round(Convert.ToDouble((profit_amount_from_this_outside_order * 100) / total_cost_for_this_outside_order), 2);
                            profit_amount = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            if (market_value_of_this_outside_order > total_cost_for_this_outside_order)
                            {
                                if (profit_precentage >= 25 && reject_precentage <= 30)
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "GOOD PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();



                                }
                                else
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "POOR PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();


                                }





                            }
                            else
                            {

                                txtProfitPrecentage.Text = "NO PROFITS";
                                txtReject.Text = reject_precentage.ToString();
                                txtFinalStatus.Text = "WARNING";
                                txtGrossProfit.Text = "00.00";




                            }









                        }
                        else if (umbrella_code == "lu1313")
                        {

                            reject_precentage = Math.Round(Convert.ToDouble((rejected_amount * 100) / expected_umbrellas), 2);
                            Response.Write("<script>alert('" + reject_precentage + "');</script>");
                            valueble_goods = (int)(expected_umbrellas - rejected_amount);
                            //Response.Write("<script>alert('" +valueble_goods+ "');</script>");
                            payment_for_this_outside_worker = valueble_goods * 100;
                            cost_for_rawmaterials = (cover_amount * 100) + (frame_amount * 100) + (thread_amount * 60);
                            payment_for_this_outside_worker = valueble_goods * 50;
                            total_cost_for_this_outside_order = cost_for_rawmaterials + payment_for_this_outside_worker;
                            market_value_of_this_outside_order = valueble_goods * 600;
                            profit_amount_from_this_outside_order = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            profit_precentage = Math.Round(Convert.ToDouble((profit_amount_from_this_outside_order * 100) / total_cost_for_this_outside_order), 2);
                            profit_amount = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            if (market_value_of_this_outside_order > total_cost_for_this_outside_order)
                            {
                                if (profit_precentage >= 25 && reject_precentage <= 30)
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "GOOD PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();



                                }
                                else
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "POOR PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();


                                }





                            }
                            else
                            {

                                txtProfitPrecentage.Text = "NO PROFITS";
                                txtReject.Text = reject_precentage.ToString();
                                txtFinalStatus.Text = "WARNING";
                                txtGrossProfit.Text = "00.00";




                            }

















                        }
                        else if (umbrella_code == "gu1617")
                        {
                            reject_precentage = Math.Round(Convert.ToDouble((rejected_amount * 100) / expected_umbrellas), 2);
                            Response.Write("<script>alert('" + reject_precentage + "');</script>");
                            valueble_goods = (int)(expected_umbrellas - rejected_amount);
                            //Response.Write("<script>alert('" +valueble_goods+ "');</script>");
                            payment_for_this_outside_worker = valueble_goods * 125;
                            cost_for_rawmaterials = (cover_amount * 125) + (frame_amount * 125) + (thread_amount * 75);
                            payment_for_this_outside_worker = valueble_goods * 50;
                            total_cost_for_this_outside_order = cost_for_rawmaterials + payment_for_this_outside_worker;
                            market_value_of_this_outside_order = valueble_goods * 800;
                            profit_amount_from_this_outside_order = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            profit_precentage = Math.Round(Convert.ToDouble((profit_amount_from_this_outside_order * 100) / total_cost_for_this_outside_order), 2);
                            profit_amount = market_value_of_this_outside_order - total_cost_for_this_outside_order;
                            if (market_value_of_this_outside_order > total_cost_for_this_outside_order)
                            {
                                if (profit_precentage >= 35.75 && reject_precentage <= 30)
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "GOOD PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();



                                }
                                else
                                {
                                    txtProfitPrecentage.Text = profit_precentage.ToString();
                                    txtReject.Text = reject_precentage.ToString();
                                    txtFinalStatus.Text = "POOR PREFORMANCE";
                                    txtGrossProfit.Text = profit_amount.ToString();


                                }





                            }
                            else
                            {

                                txtProfitPrecentage.Text = "NO PROFITS";
                                txtReject.Text = reject_precentage.ToString();
                                txtFinalStatus.Text = "WARNING";
                                txtGrossProfit.Text = "00.00";




                            }



                        }




                    }




                }
                catch (Exception ex)
                {


                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }





            }
        }

        protected void btnPersonClear_Click(object sender, EventArgs e)
        {
            txtInitials.Text = "";
            txtFirstName.Text = "";
            txtSurname.Text = "";
            txtFullName.Text = "";
            txtMiddleName.Text = "";
            DropDownListGender.SelectedValue = "0";
            DropDownListTitle.SelectedValue = "0";
            DropDownListMeritalStatus.SelectedValue = "0";
            DropDownListBloodGroup.SelectedValue = "0";
            txtDOB.Text = "";

            txtNICNumber.Text = "";
            txtDrivingLicenseNumber.Text = "";
            txtPassportNumber.Text = "";
            txtPassportExpryDate.Text = "";

            DropDownListReligonNumber.SelectedValue = "0";
            DropDownListRace.SelectedValue = "0";
            DropDownListNationality.SelectedValue = "0";

            DropDownListLivingStatus.SelectedValue = "0";
            txtNumberOfDepartment.Text = "0";
            txtNumberOfChildren.Text = "0";




        }

        protected void btnWorkClear_Click(object sender, EventArgs e)
        {
            txtEmployeeNumber.Text = "";
            txtNicsNumber.Text = "";
            txtEPFNumber.Text = "";
            txtPreviousEpfNumber.Text = "";

            DropDownListGroup.SelectedValue = "0";
            DropDownListCompany.SelectedValue = "0";
            DropDownListDeprtment.SelectedValue = "0";
            DropDownListDivision.SelectedValue = "0";
            DropDownListSecondedDepartment.SelectedValue = "0";

            DropDownListJobCategory.SelectedValue = "0";
            DropDownListCurrentDesignation.SelectedValue = "0";
            DropDownListJoinedDesignation.SelectedValue = "0";
            DropDownListReportingDesignation.SelectedValue = "0";
            DropDownListReportingPersion.SelectedValue = "0";
            DropDownListLocationBranch.SelectedValue = "0";

            txtBasicSalary.Text = " .00";
            DropDownListLKR.SelectedValue = "0";
            txtBudgetaryReliefAllowance02.Text = " .00";
            txtBudgetaryReliefAllowance01.Text = " .00";
            DropDownListEmployeementPlan.SelectedValue = "0";
            txtAnnualLeave.Text = "";
            txtCasualLeave.Text = "";

        }

        protected void btnNew_Click(object sender, EventArgs e)
        {
            if (txtInitials.Text == "" || txtFirstName.Text == "" || txtSurname.Text == "" || txtFullName.Text == "" || txtMiddleName.Text == "" || DropDownListGender.SelectedValue == "0" || DropDownListTitle.SelectedValue == "" || DropDownListMeritalStatus.SelectedValue == "" || DropDownListBloodGroup.SelectedValue == "0" || txtDOB.Text == "" || txtNICNumber.Text == "" || txtDrivingLicenseNumber.Text == "" || txtPassportNumber.Text == "" || txtPassportExpryDate.Text == "" || DropDownListReligonNumber.SelectedValue == "0" || DropDownListRace.SelectedValue == "0" || DropDownListNationality.SelectedValue == "0" || DropDownListLivingStatus.SelectedValue == "0" || txtNumberOfDepartment.Text == "" || txtNumberOfChildren.Text == "")
            {
                Response.Write("<script>alert('All fields are requireds......');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    FileUpload1.SaveAs(Server.MapPath("~/empImgs/") + Path.GetFileName(FileUpload1.FileName));
                    string link = "empImgs/" + Path.GetFileName(FileUpload1.FileName);
                    string queary = "insert into personTbl values('" + txtNICNumber.Text + "','" + txtInitials.Text + "','" + txtFirstName.Text + "','" + txtSurname.Text + "','" + txtFullName.Text + "','" + txtMiddleName.Text + "','" + DropDownListGender.SelectedValue + "','" + DropDownListTitle.SelectedValue + "','" + DropDownListMeritalStatus.SelectedValue + "','" + DropDownListBloodGroup.SelectedValue + "','" + txtDOB.Text + "' ,'" + txtDrivingLicenseNumber.Text + "','" + txtPassportNumber.Text + "','" + txtPassportExpryDate.Text + "','" + DropDownListReligonNumber.SelectedValue + "','" + DropDownListRace.SelectedValue + "','" + DropDownListNationality.SelectedValue + "','" + DropDownListLivingStatus.SelectedValue + "','" + txtNumberOfDepartment.Text + "','" + txtNumberOfChildren.Text + "','" + link + "')";
                    SqlCommand cmd = new SqlCommand(queary, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Inserted....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        protected void btnSaveWork_Click(object sender, EventArgs e)
        {
            if (txtEmployeeNumber.Text == "" || txtNicsNumber.Text == "" || txtEPFNumber.Text == "" || txtPreviousEpfNumber.Text == "" || DropDownListGroup.SelectedValue == "0" || DropDownListCompany.SelectedValue == "0" || DropDownListDeprtment.SelectedValue == "0" || DropDownListDivision.SelectedValue == "0" || DropDownListSecondedDepartment.SelectedValue == "0" || DropDownListJobCategory.SelectedValue == "0" || DropDownListCurrentDesignation.SelectedValue == "0" || DropDownListJoinedDesignation.SelectedValue == "0" || DropDownListReportingDesignation.SelectedValue == "0" || DropDownListReportingPersion.SelectedValue == "0" || DropDownListLocationBranch.SelectedValue == "0" || txtBasicSalary.Text == "" || txtBudgetaryReliefAllowance02.Text == "" || txtBudgetaryReliefAllowance01.Text == "" || DropDownListEmployeementPlan.SelectedValue == "0" || txtAnnualLeave.Text == "" || txtCasualLeave.Text == "")
            {
                Response.Write("<script>alert('All fields are requireds......');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string queary = "insert into workTbl values('" + txtEmployeeNumber.Text + "','" + txtNicsNumber.Text + "','" + txtEPFNumber.Text + "','" + txtPreviousEpfNumber.Text + "','" + DropDownListGroup.SelectedValue + "','" + DropDownListCompany.SelectedValue + "','" + DropDownListDeprtment.SelectedValue + "','" + DropDownListDivision.SelectedValue + "','" + DropDownListSecondedDepartment.SelectedValue + "','" + DropDownListJobCategory.SelectedValue + "','" + DropDownListCurrentDesignation.SelectedValue + "','" + DropDownListJoinedDesignation.SelectedValue + "','" + DropDownListReportingDesignation.SelectedValue + "','" + DropDownListReportingPersion.SelectedValue + "','" + DropDownListLocationBranch.SelectedValue + "','" + txtBasicSalary.Text + "','" + txtBudgetaryReliefAllowance02.Text + "','" + txtBudgetaryReliefAllowance01.Text + "','" + DropDownListEmployeementPlan.SelectedValue + "','" + txtAnnualLeave.Text + "','" + txtCasualLeave.Text + "')";
                    SqlCommand cmd = new SqlCommand(queary, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Data Inserted....')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        protected void btnViewProfile_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 2;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            if (txtEmployeeIdsearch.Text == "" && txtNicsearch.Text == "")
            {

                Response.Write("<script>alert('Enter Nic Or EmployeeId....')</script>");

            }
            else {

                if (txtNicsearch.Text == "")
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(connectionString);


                        string quary = "select * from workTbl where employee_number='" + txtEmployeeIdsearch.Text + "'";
                        SqlCommand cmd = new SqlCommand(quary, con);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read() == true)
                        {
                            String nicNumber = rdr.GetString(1);
                            txtNicsearch.Text = nicNumber.ToString();
                            //Response.Write("<script>alert('" +nicNumber+ "');</script>");
                            txtPersonDetailNicNo.Text = nicNumber;
                            txtEmpId.Text = txtEmployeeIdsearch.Text;


                        }
                        else
                        {

                            Response.Write("<script>alert('No Nic Relevant To This Employee Id Please Check Again  ....')</script>");
                        }


                    }
                    catch (Exception ex)
                    {

                        Response.Write("<script>alert('" + ex.Message + "');</script>");


                    }


                }
                else {

                    try
                    {
                        SqlConnection con = new SqlConnection(connectionString);


                        string quary = "select * from workTbl where NIC_no='" + txtNicsearch.Text + "'";
                        SqlCommand cmd = new SqlCommand(quary, con);
                        con.Open();
                        SqlDataReader rdr = cmd.ExecuteReader();

                        if (rdr.Read() == true)
                        {
                            String employeeid = rdr.GetString(0);
                            txtEmployeeIdsearch.Text = employeeid.ToString();



                        }
                        else
                        {

                            Response.Write("<script>alert('No Nic Relevant To This Employee Id Please Check Again  ....')</script>");
                        }


                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }



                }




            }


        }

        protected void btnEmpDetailsView_Click(object sender, EventArgs e)
        {//employeement details
            if (txtEmpId.Text == "")
            {
                Response.Write("<script>alert('Please give EmployeeId  To Find Employeement Details of An Employee  ....')</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "Select * from workTbl where employee_number='" + txtEmpId.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.Read() == true)
                    {
                        String epfnumber = rdr.GetString(2);
                        String previousEpfNum = rdr.GetString(3);
                        String group = rdr.GetString(4);
                        String company = rdr.GetString(5);
                        String department = rdr.GetString(6);
                        String division = rdr.GetString(7);
                        String jobcat = rdr.GetString(9);
                        String currentDesignation = rdr.GetString(10);
                        String annualLeave = rdr.GetString(19);
                        String casulLeave = rdr.GetString(20);
                        //Response.Write("<script>alert('" + epfnumber + "');</script>");

                        txtEmpDetailsEPFNo.Text = epfnumber;
                        txtEmpDetailsPreviousEPFNo.Text = previousEpfNum;
                        txtEmpDetailsGroup.Text = group;
                        txtEmpDetailsCompany.Text = company;
                        txtEmpDetailsDepartment.Text = department;
                        txtEmpDetailsDivision.Text = division;
                        txtEmpDetailsJobCategory.Text = jobcat;
                        txtEmpDetailsCurrentDesignation.Text = currentDesignation;
                        txtEmpDetailsAnnualLeave.Text = annualLeave;
                        txtEmpDetailsCasulaLeave.Text = casulLeave;

                    }
                    else {


                        Response.Write("<script>alert('Check Again There Are No Details Relevant To This Id ....')</script>");
                    }

                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }


            }

        }

        protected void btnPersonalDataView_Click(object sender, EventArgs e)
        {
            if (txtPersonDetailNicNo.Text == "")
            {


                Response.Write("<script>alert('Please Enter Nic Number To Find Personal Details of An Employee  ....')</script>");

            }
            else {

                try
                {

                    SqlConnection con = new SqlConnection(connectionString);


                    string quary = "Select * from personTbl where NIC_number='" + txtPersonDetailNicNo.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();

                    if (rdr.Read() == true)
                    {

                        String fullName = rdr.GetString(4);
                        String gender = rdr.GetString(6);
                        String meritalStatus = rdr.GetString(8);
                        String bloodGroup = rdr.GetString(9);
                        //String dateOfBirth = Convert.ToString(rdr.GetValue(10));
                        String newdate = rdr.GetString(10);
                        String nationality = rdr.GetString(16);
                        String race = rdr.GetString(15);
                        String childrens = rdr.GetString(18);
                        String livingStatus = rdr.GetString(17);
                        String religon = rdr.GetString(14);


                        txtFullNames.Text = fullName;
                        txtGenders.Text = gender;
                        txtMaritalStatus.Text = meritalStatus;
                        txtBloodGroup.Text = bloodGroup;
                        txtDoBs.Text = newdate;
                        txtNationalitys.Text = nationality;
                        txtRace.Text = race;
                        txtNoOfChildrens.Text = childrens;
                        txtLivingStatuss.Text = livingStatus;
                        txtReligones.Text = religon;



                    }
                    else
                    {

                        Response.Write("<script>alert('Check Again There Are No Details Relevant To This Nic ....')</script>");
                    }

                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");

                }



            }

        }

        protected void btnActiveInactive_Click(object sender, EventArgs e)
        {
            MultiViewSupervisor.ActiveViewIndex = 3;
        }

        protected void LinkButtonViewImage_Click(object sender, EventArgs e)
        {
            Response.Redirect("imageView.aspx");
        }

        protected void btnDeleteEmp_Click(object sender, EventArgs e)
        {

            if (txtDateDel.Text == "" || txtEmployeIdDel.Text == "" || txtNicNumberesDel.Text == "")
            {
                Response.Write("<script>alert('Please Enter Employee Id ,Nic Number and Current Date To Inactive Employee Profile  ....')</script>");

            }
            else
            {
                Response.Write("<script>alert('" + workerTryCatch() + "');</script>");
                Response.Write("<script>alert('" + PersonTryCatch() + "');</script>");


                ////workerTryCatch();
                //PersonTryCatch();

                if (workerTryCatch() == 1 || PersonTryCatch() == 1)

                {
                    //workerTryCatch();
                    //PersonTryCatch();
                    workerTblDel();
                    personTblDelete();
                    Response.Write("<script>alert('Inactive Process Successful!!!  ....')</script>");
                    try
                    {
                        SqlConnection con = new SqlConnection(connectionString);
                        string query = "insert into inactiveTbl values('" + txtDateDel.Text + "','" + txtNicNumberesDel.Text + "','" + txtEmployeIdDel.Text + "')";
                        SqlCommand cmd = new SqlCommand(query, con);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Data Saved....')</script>");
                        GridView3.DataBind();


                    }
                    catch (Exception ex)
                    {


                        Response.Write("<script>alert('" + ex.Message + "');</script>");

                    }


                }
                else {

                    Response.Write("<script>alert('  This Is Not Active Profile Try Again!!!  ....')</script>");

                }



                // workerTblDel();
                //personTblDelete();


                //Response.Write("<script>alert('Inactive Process Successful!!!  ....')</script>");




            }
        }

        public void personTblDelete()
        {
            // Response.Write("<script>alert('personTbl....');</script>");
            //Response.Write("<script>alert('" + txtNicNumberesDel.Text + "');</script>");
            try
            {

                SqlConnection con = new SqlConnection(connectionString);
                string query = "delete from personTbl where NIC_number='" + txtNicNumberesDel.Text + "' ";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Write("<script>alert('Deleted....');</script>");


            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }

        }
        public void workerTblDel()
        {
            //Response.Write("<script>alert('WorkerTbl....');</script>");
            //Response.Write("<script>alert('" + txtEmployeIdDel.Text + "');</script>");
            try
            {


                SqlConnection con = new SqlConnection(connectionString);
                string query = "delete from workTbl  where employee_number='" + txtEmployeIdDel.Text + "' ";
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                con.Close();
                //Response.Write("<script>alert('Deleted....');</script>");





            }
            catch (Exception ex)
            {


                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }




        }
        public int workerTryCatch()
        {
            //Response.Write("<script>alert(' workertry ....')</script>");
            int returnvale = 0;
            try
            {
                //Response.Write("<script>alert(' workertrycatch ....')</script>");

                SqlConnection con = new SqlConnection(connectionString);


                string quary = "Select * from workTbl where employee_number='" + txtEmployeIdDel.Text + "'and NIC_no='" + txtNicNumberesDel.Text + "'";
                SqlCommand cmd = new SqlCommand(quary, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read() == true)
                {
                    //String epf = rdr.GetString(2);
                    //Response.Write("<script>alert('" + epf + "');</script>");
                    returnvale = 1;
                    //workerTblDel();
                    //Response.Write("<script>alert('read worker ....')</script>");




                }
                else
                {
                    //Response.Write("<script>alert('This Is Not Active Profile Try Again!!!  ....')</script>");
                    returnvale = 0;

                }





            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }
            return returnvale;







        }
        public int PersonTryCatch()
        {
            int returnvalue2 = 0;

            try
            {

                SqlConnection con = new SqlConnection(connectionString);


                string quary = "Select * from personTbl where NIC_number='" + txtNicNumberesDel.Text + "'";
                SqlCommand cmd = new SqlCommand(quary, con);
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read() == true)
                {
                    returnvalue2 = 1;
                    //personTblDelete();
                    //Response.Write("<script>alert('read personal  ....')</script>");


                }
                else
                {
                    //Response.Write("<script>alert('This Is Not Active Profile Try Again!!!  ....')</script>");
                    returnvalue2 = 0;
                }





            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");


            }
            return returnvalue2;





        }

        protected void btnLabourRepotView_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionString);
            string queary = "select * from inactiveTbl where date between '" + txtStartDate.Text + "' and '" + txtEndDate.Text + "'";
            SqlCommand cmd = new SqlCommand(queary, con);
            con.Open();
            SqlDataAdapter sdp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sdp.Fill(dt);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('No record founds ....')</script>");
            }
            con.Close();
        }

        protected void btnConvertPdf_Click(object sender, EventArgs e)
        {
            PdfPTable pdftbl = new PdfPTable(GridView1.HeaderRow.Cells.Count);

            foreach (TableCell headercell in GridView1.HeaderRow.Cells)
            {
                Font fon = new Font();
                fon.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);

                PdfPCell pdfcel = new PdfPCell(new Phrase(headercell.Text, fon));
                pdfcel.BackgroundColor = new BaseColor(GridView1.HeaderStyle.BackColor);
                pdftbl.AddCell(pdfcel);
            }

            foreach (GridViewRow gridvrow in GridView1.Rows)
            {
                foreach (TableCell tblcell in gridvrow.Cells)
                {
                    Font fon = new Font();
                    fon.Color = new BaseColor(GridView1.RowStyle.ForeColor);

                    PdfPCell pdfcel = new PdfPCell(new Phrase(tblcell.Text));
                    pdfcel.BackgroundColor = new BaseColor(GridView1.RowStyle.BackColor);
                    pdftbl.AddCell(pdfcel);
                }
            }
            Document pdfDocumnet = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            Paragraph p = new Paragraph("LABOUR TURNOVER REPORT");
            p.SetAlignment("center");

            PdfWriter.GetInstance(pdfDocumnet, Response.OutputStream);

            pdfDocumnet.Open();
            pdfDocumnet.Add(p);
            pdfDocumnet.Add(pdftbl);
            pdfDocumnet.Close();

            Response.ContentType = "application/pdf";
            Response.AppendHeader("content-disposition", "attachment;filename=inactive.pdf");
            Response.Write(pdfDocumnet);
            Response.Flush();
            Response.End();
        }

        void GetTainingNeed()
        {
            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                string queary = "select * from TraninigNeedsTbl where date = '" + today + "'";
                SqlCommand cmd = new SqlCommand(queary, con);
                con.Open();
                SqlDataAdapter sdp = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sdp.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void btnViews_Click(object sender, EventArgs e)
        {

        }

        /* void maleFemale()
         {


             SqlConnection con = new SqlConnection(connectionString);
             string quary = "Select * from personTbl where NIC_number='" + txtPersonDetailNicNo.Text + "'";
             SqlCommand cmd = new SqlCommand(quary, con);
             Series serie = Chart1.Series["Series1"];
             con.Open();
             SqlDataReader rdr = cmd.ExecuteReader();

             while(rdr.Read())
             {
                 string males, females;

                 if (DropDownListGender.SelectedValue == "Male")
                 {
                    males = Convert.ToString(rdr.GetValue(6));
                 }
                 else if(DropDownListGender.SelectedValue == "Female")
                 {
                    females = Convert.ToString(rdr.GetValue(6));
                 }

                 _ = serie.Points.AddXY(males, females);
             }
         }*/
    }
}






