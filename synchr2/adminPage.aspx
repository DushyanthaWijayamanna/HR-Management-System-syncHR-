<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminPage.aspx.cs" Inherits="synchr2.adminPage" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
    <link href="boostrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/CustmCss.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <link href="table/css/jquery.dataTables.min.css" rel="stylesheet" />

    <script src="boostrap/js/jquery-3.3.1.slim.min.js"></script>
    <script src="boostrap/js/popper.min.js"></script>
    <script src="boostrap/js/bootstrap.min.js"></script>


    <style>
        body
        {
            background-color:gainsboro;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Nav Bar--%>
            <nav class="navbar navbar-expand-lg navbar-light" id="demoNav">
                 <div class="collapse navbar-collapse" id="navbarSupportedContent" style="color: #FFD700;font-family: 'Trocchi', serif;font-size: 45px;font-weight: normal;line-height: 48px;margin-left:500px">
                  <h1 style="margin-top:15px; text-align:center;margin-left:150px;color:aliceblue">Admin Platform</h1>
                </div>
            </nav>

                        <div class="container">
                           <div class="row">
                              <div class="col-sm" id="1stcol">
                                    <%--card add operator --%>
                                      <div class="card" style="width: 22rem;background-color:#194C43; margin-left:-30%; margin-top:20px; margin-bottom:20px">
                                           <div class="card-body">
                                             <h3 class="card-title" id="cardtitle" style="color:black;text-align:center;font-family:Segoe UI;color:white; margin-bottom:25px" >Create Account</h3>
                                               <center>
                                                  <asp:DropDownList ID="selectDepartment" runat="server">
                                                  <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                  <asp:ListItem Value="1">HR Department </asp:ListItem>  
                                                  <asp:ListItem Value="2">Supervisor</asp:ListItem>  
                                                  <asp:ListItem Value="3">Production Manager</asp:ListItem>  
                                                 </asp:DropDownList>
                                               </center>
                                               <br />
                                               <div class="form-group">
                                                  <label style="color:white"><b>Employee Id</b></label>&nbsp<asp:TextBox style="height:30px" CssClass="form-control" ID="txtEmployeeId" runat="server"></asp:TextBox>
                                                   <br />
                                                   <label style="color:white"><b>Username</b></label>&nbsp<asp:TextBox style="height:30px;" CssClass="form-control" ID="txtUserName" runat="server"></asp:TextBox>
                                                   <br />
                                                   <label style="color:white"><b>Password</b></label>&nbsp<asp:TextBox style="height:30px;" CssClass="form-control" ID="txtPassword" runat="server"></asp:TextBox>
                                                   <br />
                                                   <label style="color:white"><b>Security Question</b></label>&nbsp<asp:DropDownList ID="DropDownListSecurityQuestion" CssClass="form-control" runat="server">
                                                  <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                  <asp:ListItem Value="1">In Which city were you born?</asp:ListItem>  
                                                  <asp:ListItem Value="2">What is the name of your favorite pet?</asp:ListItem>  
                                                  <asp:ListItem Value="3">Which high school did you attend?</asp:ListItem>  
                                                  <asp:ListItem Value="4">What was your favorite food as a child?</asp:ListItem>
                                                  <asp:ListItem Value="5">What is your favorite car?</asp:ListItem> 
                                                 </asp:DropDownList>
                                                   <br />
                                                   <label style="color:white"><b>Answer</b></label>&nbsp<asp:TextBox style="height:30px;" CssClass="form-control" ID="txtAnswer" runat="server"></asp:TextBox>
                                                  <br />
                                                    <center>
                                                        <div class="btn-group btn-group-lg" role="group" aria-label="Basic example" style="margin-left:-200px">
                                                         <asp:Button ID="btnAdd" runat="server" Text="Add" class="btn btn-secondary" OnClick="btnAdd_Click"  />
                                                            <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-secondary" OnClick="btnUpdate_Click" />
                                                             <asp:Button ID="btnClearr" runat="server" Text="Clear" class="btn btn-secondary" OnClick="btnClearr_Click" />
                                                        </div>
                                                    </center>
                                                        
                                               </div>
                                                
                                             
                                             
                                          </div>
                                        </div>



                              </div>
                             <div class="col-sm">
                                 

                                     <div id="deleteOperator">
                                       
                                           <div class="card" style="width: 18rem; margin-left:-16%; background-color:#194C43; margin-top:20px">
                                            <div class="card-body">
                                                <center>
                                                    <h5 class="card-title" style="color:white">Remove Operator</h5>
                                                </center>
                                                
                                                
                                                 <center>
                                                  <asp:DropDownList ID="deleteDropdown" runat="server">
                                                  <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                  <asp:ListItem Value="1">HR Department </asp:ListItem>  
                                                  <asp:ListItem Value="2">Supervisor</asp:ListItem>  
                                                  <asp:ListItem Value="3">Production Manager</asp:ListItem>  
                                                 </asp:DropDownList>
                                               </center>
                                                <br />
                                                <br />
                                                <table>
                                                    <tr>
                                                        <td>
                                                            <label style="width:100px; color:white"><b>Employee ID</b></label>
                                                        </td>
                                                            
                                                        <td>
                                                            <asp:TextBox style="height:30px;" CssClass="form-control" ID="txtDelete" runat="server"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                     
                                                   <%-- <tr>
                                                        <td>
                                                           
                                                        </td>
                                                             
                                                        <td>
                                                           <button style="width:130px; margin-top:10px; width:150px" type="button" class="btn btn-danger">Delete</button>
                                                        </td>
                                                    </tr>--%>
                                                </table>
                                                <br />
                                                <center>
                                                 <asp:Button ID="btnDelete" runat="server" Text="Delete" style="width:130px; margin-top:10px; width:150px" type="button" class="btn btn-danger" OnClick="btnDelete_Click" />
                                              
                                                </center>
                                         </div>
                                    </div>
                             

                                     </div>
                            </div>


             <div class="col-sm">
                                <div class="row" style="margin-top:20px">
                                   <div class="col">
                                       
                                       
                                        <div id="viewTables">
                                       
                                           <div class="card" style="width: 25rem; margin-left:5%; background-color:#194C43; margin-top:20px; border-radius:15px">
                                            <div class="card-body">
                                                <h5 class="card-title" style="margin-top:-10px;text-align:center;color:white">Employee Outlook</h5>
                                                
                                                 <left>
                                                  <asp:DropDownList ID="DropDownListViewDataTable" runat="server" style="margin-top:10px">
                                                  <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                  <asp:ListItem Value="1">HR Department </asp:ListItem>  
                                                  <asp:ListItem Value="2">Supervisor</asp:ListItem>  
                                                  <asp:ListItem Value="3">Production Manager</asp:ListItem>  
                                                 </asp:DropDownList>
                                               </left>
                                                <br />
                                                
                                                <right>
                                                 <asp:Button ID="txtViewTable" runat="server" Text="View" style="background-color:lightskyblue;border-radius:10px;float:right;width:130px; margin-top:-30px; width:150px" type="button" OnClick="txtViewTable_Click"/>
                                              
                                                </right>
                                         </div>
                                      </div>
                             

                                     </div>






                                   </div>
                               </div>
                                <div class="row">
                                    <div class="col">
                                      <hr style="margin-left:39px"/>
                                    </div>
                                 </div>


                        
                      <asp:MultiView ID="MultiViewTables" runat="server" ActiveViewIndex="0">
                                
                               <asp:View ID="ViewNull" runat="server">

                               </asp:View>
                               <asp:View ID="ViewHrTable" runat="server">

                                   <div class="row" style="width:150px">
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabase2ConnectionString %>" SelectCommand="SELECT [employeeid], [username], [password], [security_question], [answer] FROM [hrDepartmentTbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridViewHrDepartment" style="margin-left:-35px; background-color:#2f3640; color:#f5f6fa" class="table table-hover table-white" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="employeeid" HeaderText="employeeid" ReadOnly="True" SortExpression="employeeid" />
                                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="security_question" HeaderText="security_question" SortExpression="security_question" />
                                                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                               </div>

                               </asp:View>



                               <asp:View ID="ViewSupervisorTable" runat="server">
                                    
                                   <div class="row" style="width:150px"> 
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabase2ConnectionString %>" SelectCommand="SELECT [employeeid], [username], [password], [security_question], [answer] FROM [supervisorTbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridViewSupervisor" style="margin-left:-35px;background-color:#2f3640; color:#f5f6fa" class="table table-hover table-white" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="employeeid" HeaderText="employeeid" ReadOnly="True" SortExpression="employeeid" />
                                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="security_question" HeaderText="security_question" SortExpression="security_question" />
                                                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>

                               </div>

                               </asp:View>


                               <asp:View ID="ViewProductionTable" runat="server">

                                    
                                   <div class="row" style="width:150px">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabase2ConnectionString %>" SelectCommand="SELECT [employeeid], [username], [password], [security_question], [answer] FROM [productionManagerTbl]"></asp:SqlDataSource>
                                    <div class="col">
                                        <asp:GridView ID="GridViewProductionMan" style="margin-left:-35px; background-color:#2f3640; color:#f5f6fa" class="table table-hover table-white" runat="server" AutoGenerateColumns="False" DataKeyNames="employeeid" DataSourceID="SqlDataSource3">
                                            <Columns>
                                                <asp:BoundField DataField="employeeid" HeaderText="employeeid" ReadOnly="True" SortExpression="employeeid" />
                                                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                                                <asp:BoundField DataField="security_question" HeaderText="security_question" SortExpression="security_question" />
                                                <asp:BoundField DataField="answer" HeaderText="answer" SortExpression="answer" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                </div>

                               </asp:View>
                         </asp:MultiView>

</div>
                            
            </div>        






            <%--footer--%>
            <footer style="width:1550px;margin-left:-199px">
                <div id="footer1" class="container-fluid">
                    <div align="center">
                        <h5>&copy All Right Reserved.<a class="footerlinks" href="#" target="_blank">E Rats</a></h5>
                    </div>
                
                </div>
           </footer>
            
        </div>
            </div>

        
          
    </form>
</body>
</html>



