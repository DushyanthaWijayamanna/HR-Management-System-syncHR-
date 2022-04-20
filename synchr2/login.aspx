<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="synchr2.login" %>

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

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%-- Nav Bar--%>
            <nav class="navbar navbar-expand-lg navbar-light" id="demoNav">
                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   
                </div>
            </nav>

            <%--container--%>
            <div class="container">
                <div class="row">
                    <div class="col-md-6 mx-auto">


                        <div class="row">
                                    <div class="col">
                                        <center>
                                            <img src="imgs/syncHR2.png" class="img-fluid" width="250" style="padding-top:50px; padding-bottom:50px" id="syncImg"/>
                                        </center>
                                    </div>
                                </div>


                        <div class="card">
                            <div class="card-body">
                                       <center>
                                          <asp:DropDownList ID="dplDepartment" runat="server">
                                            <asp:ListItem Value="">Please Select</asp:ListItem>  
                                            <asp:ListItem Value="admin">Admin</asp:ListItem>  
                                            <asp:ListItem Value="HrDepartment">HR Department </asp:ListItem>  
                                            <asp:ListItem Value="supervisor">Supervisor</asp:ListItem>  
                                            <asp:ListItem Value="ProductionManager">Production Manager</asp:ListItem>  
                                          </asp:DropDownList>
                                        </center>

                                <div class="row">
                                    <div class="col">
                                        <hr class="hori"/>
                                    </div>
                                </div>


                                 <div class="row">
                     <div class="col">
                        <label>User Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtUserName" runat="server" placeholder="Username"></asp:TextBox>
                        </div>
                        <label>Password</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-primary btn-block btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                        </div>
                        <div class="form-group">
                           <asp:Button class="btn btn-info btn-block btn-lg" ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                        </div>
                     </div>
                  </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br/>
           

           <!-- Footer -->
            <footer>
                <div id="footer1" class="container-fluid">
                    <div align="center">
                        <h5>&copy All Right Reserved<a class="footerlinks" href="#" target="_blank">E Rats</a></h5>
                    </div>
                
                </div>
           </footer>
        <!-- ./Footer -->
       </div>
    </form>
</body>
</html>
