using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
namespace synchr2
{
    public partial class productionManager : System.Web.UI.Page
    {
        string connectionString = "Data Source=localhost;Initial Catalog=HrmsDatabase2;Integrated Security=True";
        
        protected void Page_Load(object sender, EventArgs e)
        {
            //  MultiViewProduction.ActiveViewIndex = 0;
           /* if(!IsPostBack)
            {
                ViewChart();
            }*/
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            MultiViewProduction.ActiveViewIndex = 0;
        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            MultiViewProduction.ActiveViewIndex = 1;
        }

        protected void btnExpenses_Click(object sender, EventArgs e)
        {
            MultiViewProduction.ActiveViewIndex = 2;
        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/login.aspx");
        }

        // protected void txtUpdateSup_Click(object sender, EventArgs e)
        //{

        //}

        protected void btnProductionManagerShow_Click(object sender, EventArgs e)
        {
            if (selectUnit.SelectedValue == "0" || txtProductionManagerDate.Text == "")
            {

                Response.Write("<script>alert('Please Select Unit And Relevant Date......');</script>");



            }
            else if (selectUnit.SelectedValue == "1")
            {

                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from printunitTbl where Date='" + txtProductionManagerDate.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {

                        int presentEmployees = Convert.ToInt32(rdr.GetValue(2));
                        int absenceEmployees = Convert.ToInt32(rdr.GetValue(3));
                        double totalProduction = Convert.ToInt32(rdr.GetValue(4));
                        double damageProduction = Convert.ToInt32(rdr.GetValue(5));




                        double mealExpenses;
                        mealExpenses = (presentEmployees * 75) + (presentEmployees * 100) + (presentEmployees * 30 * 2);
                        txtMeal.Text = "Rs" + " " + mealExpenses.ToString() + ".00";

                        double productionefficiency;
                        productionefficiency = Convert.ToDouble((totalProduction * 100) / 1200);
                        double roundproductionefficiency = Math.Round(productionefficiency, 2);
                        txtEfficiency.Text = roundproductionefficiency.ToString() + " %";

                        double damagePrecentage;
                        damagePrecentage = Convert.ToDouble((damageProduction * 100) / totalProduction);
                        double newdamgeprecentage = Math.Round(damagePrecentage, 2);
                        txtDamage.Text = newdamgeprecentage.ToString() + " %";


                        if (productionefficiency >= 85 && damagePrecentage <= 20)
                        {

                            txtStatus.Text = "Greate";


                        }
                        else if (productionefficiency >= 75 && productionefficiency < 85 && damagePrecentage < 30 && damagePrecentage > 20)
                        {

                            txtStatus.Text = "Good";




                        }
                        else if (productionefficiency > 50 && productionefficiency < 75 && damagePrecentage > 30 && damagePrecentage < 35)
                        {


                            txtStatus.Text = "Poor";

                        }
                        else
                        {
                            txtStatus.Text = "Warning!!";
                            Response.Write("<script>alert('Indicate High Risk For Company Financial Health......');</script>");


                        }



                    }


                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");


                }






            }
            else if (selectUnit.SelectedValue == "2")
            {

                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from handleunitTbl where Date='" + txtProductionManagerDate.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {

                        int presentEmployees = Convert.ToInt32(rdr.GetValue(2));
                        int absenceEmployees = Convert.ToInt32(rdr.GetValue(3));
                        double totalProduction = Convert.ToInt32(rdr.GetValue(4));
                        double damageProduction = Convert.ToInt32(rdr.GetValue(5));




                        double mealExpenses;
                        mealExpenses = (presentEmployees * 75) + (presentEmployees * 100) + (presentEmployees * 30 * 2);
                        txtMeal.Text = "Rs" + " " + mealExpenses.ToString() + ".00";

                        double productionefficiency;
                        productionefficiency = Convert.ToDouble((totalProduction * 100) / 1000);
                        double roundproductionefficiency = Math.Round(productionefficiency, 2);
                        txtEfficiency.Text = roundproductionefficiency.ToString() + " %";

                        double damagePrecentage;
                        damagePrecentage = Convert.ToDouble((damageProduction * 100) / totalProduction);
                        double newdamgeprecentage = Math.Round(damagePrecentage, 2);
                        txtDamage.Text = newdamgeprecentage.ToString() + " %";


                        if (productionefficiency >= 85 && damagePrecentage <= 20)
                        {

                            txtStatus.Text = "Greate";


                        }
                        else if (productionefficiency >= 75 && productionefficiency < 85 && damagePrecentage < 30 && damagePrecentage > 20)
                        {

                            txtStatus.Text = "Good";




                        }
                        else if (productionefficiency > 50 && productionefficiency < 75 && damagePrecentage > 30 && damagePrecentage < 35)
                        {


                            txtStatus.Text = "Poor";

                        }
                        else
                        {
                            txtStatus.Text = "Warning!!";
                            Response.Write("<script>alert('Indicate High Risk For Company Financial Health......');</script>");


                        }



                    }


                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }








            }
            else if (selectUnit.SelectedValue == "3")
            {


                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from cuttingunitTbl where Date='" + txtProductionManagerDate.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {

                        int presentEmployees = Convert.ToInt32(rdr.GetValue(2));
                        int absenceEmployees = Convert.ToInt32(rdr.GetValue(3));
                        double totalProduction = Convert.ToInt32(rdr.GetValue(4));
                        double damageProduction = Convert.ToInt32(rdr.GetValue(5));




                        double mealExpenses;
                        mealExpenses = (presentEmployees * 75) + (presentEmployees * 100) + (presentEmployees * 30 * 2);
                        txtMeal.Text = "Rs" + " " + mealExpenses.ToString() + ".00";

                        double productionefficiency;
                        productionefficiency = Convert.ToDouble((totalProduction * 100) / 1500);
                        double roundproductionefficiency = Math.Round(productionefficiency, 2);
                        txtEfficiency.Text = roundproductionefficiency.ToString() + " %";

                        double damagePrecentage;
                        damagePrecentage = Convert.ToDouble((damageProduction * 100) / totalProduction);
                        double newdamgeprecentage = Math.Round(damagePrecentage, 2);
                        txtDamage.Text = newdamgeprecentage.ToString() + " %";


                        if (productionefficiency >= 85 && damagePrecentage <= 20)
                        {

                            txtStatus.Text = "Greate";


                        }
                        else if (productionefficiency >= 75 && productionefficiency < 85 && damagePrecentage < 30 && damagePrecentage > 20)
                        {

                            txtStatus.Text = "Good";




                        }
                        else if (productionefficiency > 50 && productionefficiency < 75 && damagePrecentage > 30 && damagePrecentage < 35)
                        {


                            txtStatus.Text = "Poor";

                        }
                        else
                        {
                            txtStatus.Text = "Warning!!";
                            Response.Write("<script>alert('Indicate High Risk For Company Financial Health......');</script>");


                        }



                    }


                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }










            }
            else if (selectUnit.SelectedValue == "4")
            {

                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from borderingunitTbl where Date='" + txtProductionManagerDate.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {

                        int presentEmployees = Convert.ToInt32(rdr.GetValue(2));
                        int absenceEmployees = Convert.ToInt32(rdr.GetValue(3));
                        double totalProduction = Convert.ToInt32(rdr.GetValue(4));
                        double damageProduction = Convert.ToInt32(rdr.GetValue(5));




                        double mealExpenses;
                        mealExpenses = (presentEmployees * 75) + (presentEmployees * 100) + (presentEmployees * 30 * 2);
                        txtMeal.Text = "Rs" + " " + mealExpenses.ToString() + ".00";

                        double productionefficiency;
                        productionefficiency = Convert.ToDouble((totalProduction * 100) / 1200);
                        double roundproductionefficiency = Math.Round(productionefficiency, 2);
                        txtEfficiency.Text = roundproductionefficiency.ToString() + " %";

                        double damagePrecentage;
                        damagePrecentage = Convert.ToDouble((damageProduction * 100) / totalProduction);
                        double newdamgeprecentage = Math.Round(damagePrecentage, 2);
                        txtDamage.Text = newdamgeprecentage.ToString() + " %";


                        if (productionefficiency >= 85 && damagePrecentage <= 20)
                        {

                            txtStatus.Text = "Greate";


                        }
                        else if (productionefficiency >= 75 && productionefficiency < 85 && damagePrecentage < 30 && damagePrecentage > 20)
                        {

                            txtStatus.Text = "Good";




                        }
                        else if (productionefficiency > 50 && productionefficiency < 75 && damagePrecentage > 30 && damagePrecentage < 35)
                        {


                            txtStatus.Text = "Poor";

                        }
                        else
                        {
                            txtStatus.Text = "Warning!!";
                            Response.Write("<script>alert('Indicate High Risk For Company Financial Health......');</script>");


                        }



                    }


                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }


            }
            else if (selectUnit.SelectedValue == "5")
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from TailoringunitTbl where Date='" + txtProductionManagerDate.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {

                        int presentEmployees = Convert.ToInt32(rdr.GetValue(2));
                        int absenceEmployees = Convert.ToInt32(rdr.GetValue(3));
                        double totalProduction = Convert.ToInt32(rdr.GetValue(4));
                        double damageProduction = Convert.ToInt32(rdr.GetValue(5));




                        double mealExpenses;
                        mealExpenses = (presentEmployees * 75) + (presentEmployees * 100) + (presentEmployees * 30 * 2);
                        txtMeal.Text = "Rs" + " " + mealExpenses.ToString() + ".00";

                        double productionefficiency;
                        productionefficiency = Convert.ToDouble((totalProduction * 100) / 1200);
                        double roundproductionefficiency = Math.Round(productionefficiency, 2);
                        txtEfficiency.Text = roundproductionefficiency.ToString() + " %";

                        double damagePrecentage;
                        damagePrecentage = Convert.ToDouble((damageProduction * 100) / totalProduction);
                        double newdamgeprecentage = Math.Round(damagePrecentage, 2);
                        txtDamage.Text = newdamgeprecentage.ToString() + " %";


                        if (productionefficiency >= 85 && damagePrecentage <= 20)
                        {

                            txtStatus.Text = "Greate";


                        }
                        else if (productionefficiency >= 75 && productionefficiency < 85 && damagePrecentage < 30 && damagePrecentage > 20)
                        {

                            txtStatus.Text = "Good";




                        }
                        else if (productionefficiency > 50 && productionefficiency < 75 && damagePrecentage > 30 && damagePrecentage < 35)
                        {


                            txtStatus.Text = "Poor";

                        }
                        else
                        {
                            txtStatus.Text = "Warning!!";
                            Response.Write("<script>alert('Indicate High Risk For Company Financial Health......');</script>");


                        }



                    }


                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }






            }
            else if (selectUnit.SelectedValue == "6")
            {
                try
                {
                    SqlConnection con = new SqlConnection(connectionString);
                    string quary = "select * from completeunitTbl where Date='" + txtProductionManagerDate.Text + "'";
                    SqlCommand cmd = new SqlCommand(quary, con);
                    con.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.Read() == true)
                    {

                        int presentEmployees = Convert.ToInt32(rdr.GetValue(2));
                        int absenceEmployees = Convert.ToInt32(rdr.GetValue(3));
                        double totalProduction = Convert.ToInt32(rdr.GetValue(4));
                        double damageProduction = Convert.ToInt32(rdr.GetValue(5));




                        double mealExpenses;
                        mealExpenses = (presentEmployees * 75) + (presentEmployees * 100) + (presentEmployees * 30 * 2);
                        txtMeal.Text = "Rs" + " " + mealExpenses.ToString() + ".00";

                        double productionefficiency;
                        productionefficiency = Convert.ToDouble((totalProduction * 100) / 1200);
                        double roundproductionefficiency = Math.Round(productionefficiency, 2);
                        txtEfficiency.Text = roundproductionefficiency.ToString() + " %";

                        double damagePrecentage;
                        damagePrecentage = Convert.ToDouble((damageProduction * 100) / totalProduction);
                        double newdamgeprecentage = Math.Round(damagePrecentage, 2);
                        txtDamage.Text = newdamgeprecentage.ToString() + " %";


                        if (productionefficiency >= 85 && damagePrecentage <= 20)
                        {

                            txtStatus.Text = "Greate";


                        }
                        else if (productionefficiency >= 75 && productionefficiency < 85 && damagePrecentage < 30 && damagePrecentage > 20)
                        {

                            txtStatus.Text = "Good";




                        }
                        else if (productionefficiency > 50 && productionefficiency < 75 && damagePrecentage > 30 && damagePrecentage < 35)
                        {


                            txtStatus.Text = "Poor";

                        }
                        else
                        {
                            txtStatus.Text = "Warning!!";
                            Response.Write("<script>alert('Indicate High Risk For Company Financial Health......');</script>");


                        }



                    }


                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");



                }




            }
        }

        protected void btnChartView_Click(object sender, EventArgs e)
        {
            try
            {


                SqlConnection con = new SqlConnection(connectionString);
                string quary = "select * from chartTbl where Date='" + txtchdate.Text + "'";
                SqlCommand cmd = new SqlCommand(quary, con);
                Series seri = Chart1.Series["Series1"];
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    string unit = Convert.ToString(rdr.GetValue(1));
                    int product = Convert.ToInt32(rdr.GetValue(2));

                    seri.Points.AddXY(unit, product);


                    // Response.Write("<script>alert('"+unit+"');</script>");
                    // Response.Write("<script>alert('" + product + "');</script>");

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            try
            {


                SqlConnection con = new SqlConnection(connectionString);
                string quary = "select * from damageCountTbl where Date='" + txtchdate.Text + "'";
                SqlCommand cmd = new SqlCommand(quary, con);
                Series seri = Chart2.Series["Series1"];
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    string unit = Convert.ToString(rdr.GetValue(1));
                    int damage = Convert.ToInt32(rdr.GetValue(2));

                    seri.Points.AddXY(unit, damage);


                    // Response.Write("<script>alert('"+unit+"');</script>");
                    // Response.Write("<script>alert('" + product + "');</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
   
}


