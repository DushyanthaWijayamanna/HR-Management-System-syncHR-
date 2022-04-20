<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productionManager.aspx.cs" Inherits="synchr2.productionManager" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/supervisorcss.css" rel="stylesheet" />
    <link href="boostrap/css/bootstrap.min.css" rel="stylesheet" />
    
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="table/css/jquery.dataTables.min.css" rel="stylesheet" />

    <script src="boostrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="boostrap/js/popper.min.js"></script>
    <script src="boostrap/js/bootstrap.min.js"></script>
    <link href="css/supervisorcss.css" rel="stylesheet" />

    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>

   <!-- Bootstrap for Date picker-->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
    <!-- Bootstrap -->
    <!-- Bootstrap DatePicker -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/css/bootstrap-datepicker.css"
    type="text/css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.4/js/bootstrap-datepicker.js"
    type="text/javascript"></script>
    <!-- Bootstrap DatePicker -->

    <script type="text/javascript">
        $(function () {
            $('[id*=txtDate]').datepicker({
                changeMonth: true,
                changeYear: true,
                format: "dd/mm/yyyy",
                language: "tr"
            });
        });
    </script>

    

</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
    <div class="sidebar" style="width:300px">
        
            <img src="imgs/MicrosoftTeams-image%20(11).png" />
        
        <ul>
            <li><asp:LinkButton ID="btnHome" runat="server" class="fas fa-home" OnClick="btnHome_Click"> Home</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnStatus" runat="server" class="fas fa-umbrella" OnClick="btnStatus_Click"> Daily Production Efficiency and Status </asp:LinkButton></li>
            <li><asp:LinkButton ID="btnExpenses" runat="server" class="fas fa-child" OnClick="btnExpenses_Click"> Chart Demonstrations</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnExit" runat="server" class="fas fa-hand-point-left" OnClick="btnExit_Click"> Exit</asp:LinkButton></li>

       
            
        </ul> 
        
    </div>
    <div class="main_content">


        <asp:MultiView ID="MultiViewProduction" runat="server" ActiveViewIndex="0">



            <asp:View ID="ViewHome" runat="server">
                <div style="font-family:'Segoe UI';font-size:3rem; color:black; margin-left:30%; margin-top:3%">
                <asp:Label ID="lblGreetings" runat="server" Text="Label" ></asp:Label>
               </div>
                <br />
                <br />
                    <center>
                    <img src="Animation/Productionmngerr.gif" style="width:80rem"/> 
                     </center>
               

            </asp:View>


            <asp:View ID="ViewStatus" runat="server">




                <div class="container" id="ConViewStatus">
                <div class="row justify-content-start">
                <div class="col-4">
                          <div class="card" style="height:60rem; width: 38rem;background-color:#194C43; margin-left:5px; margin-top:60px">
                                           <div class="card-body">
                                             <h3 class="card-title" id="cardtitle" style="color:black;text-align:center;font-family:Segoe UI;color:aliceblue; margin-bottom:30px" >Analytical Details</h3>

                                              
                                            <ul>
                                                <li>
                                                    <label style="color:aliceblue; margin-top:20px; margin-bottom:20px"><b>Unit</b></label>&nbsp<asp:DropDownList ID="selectUnit" class="form-group" runat="server" style="float: right; margin-top:20px; width: 200px; margin-bottom:30px">
                                                        <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                        <asp:ListItem Value="1">Print Unit </asp:ListItem>  
                                                        <asp:ListItem Value="2">Handle Unit</asp:ListItem>  
                                                        <asp:ListItem Value="3">Cutting Unit</asp:ListItem> 
                                                        <asp:ListItem Value="4">Bordering Unit</asp:ListItem>
                                                        <asp:ListItem Value="5">Tailoring Unit</asp:ListItem>
                                                        <asp:ListItem Value="6">Complete Unit</asp:ListItem>
                                                  </asp:DropDownList>
                                               </li>
                                             </ul>
                                       
    <ul>                                    

<li>
                                            
    <label style="color:aliceblue; margin-bottom:30px"><b>Date</b></label><asp:TextBox ID="txtProductionManagerDate" runat="server" style="float:right;width:200px;height:25px;margin-bottom:10px" TextMode="Date"></asp:TextBox>
 
</li>
</ul>



                                
                                          <div class="form-group">
                                            <ul>
                                                <li>
                                                  <label style="color:aliceblue; float: left; margin-top: 5px"><b>Meal Expenses</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 38px" CssClass="form-control" ID="txtMeal" runat="server" placeholder="Expenses" ReadOnly="True"></asp:TextBox>
                                                </li>
                                               
                                                 <li>
                                                   <label style="color:aliceblue; float: left; margin-top: 40px"><b>Production Efficiency</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 38px" CssClass="form-control" ID="txtEfficiency" runat="server" placeholder="Efficiency" ReadOnly="True"></asp:TextBox>
                                                 </li>
                                                 
                                                 <li>
                                                   <label style="color:aliceblue; float: left; margin-top: 40px"><b>Damage Percentage</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 38px" CssClass="form-control" ID="txtDamage" runat="server" placeholder="Percentage" ReadOnly="True"></asp:TextBox>
                                                 </li>
                                                 
                                                  <li>
                                                   <label style="color:aliceblue; float: left; margin-top: 45px"><b>Final Status</b></label>&nbsp<asp:TextBox style="float: right; height:30px; width:200px; margin-bottom: 38px" CssClass="form-control" ID="txtStatus" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                                  </li>

                                            </ul>
                                         </div>
                                        
                                              <div>
                                                  <ul>
                                                      <li>
                                               
                                                  <asp:Button class="btn btn-danger form-group" style=" float:right; width:150px; margin-top: 20px; margin-right: 100px" ID="btnProductionManagerShow" runat="server" Text="Show" OnClick="btnProductionManagerShow_Click" />
                                                        </li>
                                                            
                                                      </ul>
                                              </div>
                                            </div>
                                     
                                 </div>            
                            </div>
      
                 
                               

               <div class="col-4">
                    
                   
                    <div class="col">
                        <div style="margin-top:140px">
                            <img src="Animation/“1”.gif" style="width: 700px"/>
                        </div>
                        <div style="margin-top:-220px; margin-left:280px">
                            <img src="Animation/67012-404-error-animation.gif" style="width: 400px" />
                        </div>
                        
                    </div>
                           
               </div>
                      
</div>
    </div>
                    






            </asp:View>


            <asp:View ID="ViewExpenses" runat="server">
                
                    
                        <asp:TextBox ID="txtchdate" runat="server" style="margin-left:240px; margin-top:50px; height:32px; border-width:3px" TextMode="Date"></asp:TextBox>
                        <asp:Button ID="btnChartView" class="btn btn-danger" runat="server" Text="View" OnClick="btnChartView_Click" />
                   
               
                <div class="row">
                    <div class="col" style="">
                        <h3 style="margin-left:150px">Total production</h3>
                        <asp:Chart ID="Chart1" runat="server" style="margin-top:5px; margin-left:150px" Width="700px" BackColor="Silver" BackGradientStyle="LeftRight" BackImageTransparentColor="White" BackSecondaryColor="White" Palette="SeaGreen" PaletteCustomColors="Teal; Olive">
                            <Series>
                                <asp:Series Name="Series1" ChartType="Bar" YValuesPerPoint="6" LabelBackColor="Teal" LabelBorderColor="0, 64, 64" LabelForeColor="0, 64, 64"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col">
                        <h3 style="margin-left:150px">Damage count</h3>
                        <asp:Chart ID="Chart2" runat="server" style="margin-top:5px; margin-left:150px" Width="700px" BackColor="Silver" BackGradientStyle="LeftRight" BackImageTransparentColor="White" BackSecondaryColor="White" Palette="EarthTones" PaletteCustomColors="Teal; Olive">
                            <Series>
                                <asp:Series Name="Series1" ChartType="Bar" LabelBackColor="Teal" LabelBorderColor="0, 64, 64" LabelForeColor="0, 64, 64"></asp:Series>
                            </Series>
                            <ChartAreas>
                                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            </ChartAreas>
                        </asp:Chart>
                    </div>
                </div>
            </asp:View>



        </asp:MultiView>
        


    </div>
</div>
    </form>
</body>
    <script>
        var myDate = new Date();
        var hrs = myDate.getHours();

        var greet;

        if (hrs < 12)
            greet = 'Good Morning';
        else if (hrs >= 12 && hrs <= 17)
            greet = 'Good Afternoon';
        else if (hrs >= 17 && hrs <= 24)
            greet = 'Good Evening';

        document.getElementById('lblGreetings').innerHTML =
            '<b>' + greet + '</b> and welcome to Sync!';
    </script>
</html>
