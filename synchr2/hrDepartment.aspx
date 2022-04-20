<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="hrDepartment.aspx.cs" Inherits="synchr2.hrDepartment" %>

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

    <!-- Bootstrap -->
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
    <script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
    <!-- Bootstrap -->

    <style>
        body
        {
            
        }
        .vrtical
        {
            border-left: 2px solid #2d3436;
            height:600px;
            position:absolute;
            margin-left:390px;
            margin-top:30px;
        }
    
    </style>
    

</head>
<body>
    <form id="form1" runat="server">
                            <div class="wrapper">
    <div class="sidebar" style="width:300px">
        
            <img src="imgs/MicrosoftTeams-image%20(11).png" style="margin-left:40px" />
        <br/>
        <br/>
        
        <ul>
            <li><asp:LinkButton ID="btnHome" runat="server" class="fas fa-home" OnClick="btnHome_Click"> Home</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnAddemp" runat="server" class="fas fa-ad" OnClick="btnAddemp_Click"> Add New Employee</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnViewProfile" runat="server" class="fas fa-eye" OnClick="btnViewProfile_Click"> Profile View</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnActiveInactive" runat="server" class="fas fa-user-shield" OnClick="btnActiveInactive_Click"> Active/Inactive Profiles</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnLabourrep" runat="server" class="fas fa-cogs" OnClick="btnLabourrep_Click"> Labour Turn Over Reports</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnMonthlyrep" runat="server" class="fas fa-address-card" OnClick="btnMonthlyrep_Click"> Employee Training Requirement</asp:LinkButton></li>
            
            <li><asp:LinkButton ID="btnOutsideworkers" runat="server" class="fas fa-tasks" OnClick="btnOutsideworkers_Click"> Performance Evaluation of Outside workers</asp:LinkButton></li>
            <li><asp:LinkButton ID="btnExit" runat="server" class="fas fa-hand-point-left" OnClick="btnExit_Click"> Exit</asp:LinkButton></li>



            
            <%--  --%>

            
        </ul> 
       
    </div>
    <div class="main_content">
        

        <asp:MultiView ID="MultiViewSupervisor" runat="server" ActiveViewIndex="0">


            <asp:View ID="ViewHome" runat="server">
                <div style="font-family:'Segoe UI';font-size:3rem; color:black; margin-left:30%; margin-top:40px">
                <asp:Label ID="lblGreetings" runat="server" Text="Label" ></asp:Label>
               </div>
                <div >
                    <img src="imgs/journey.gif"   style="width:80rem; margin-left:28%; margin-top:40px"/>
                </div>
            </asp:View>



            <asp:View ID="ViewAddemp" runat="server">
                  <div class="container-fluid">
                            <div class="row justify-content-start">

                                <div class="col-md-6">
                                  <h3 style="margin-left:300px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; margin-bottom:-20px; font-size:30px"><i style="margin-left:-130px; margin-top:20px" class="fas fa-street-view"></i><b>Personal Details</b></h3>
                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:30px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Personal Information</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label1" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Initials(*)"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtInitials" CssClass="form-control" style=" width:300px; margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label2" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="First Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtFirstName" CssClass="form-control" style=" width:300px;  margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label3" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Surname"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtSurname" CssClass="form-control" style=" width:300px; margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label4" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Full Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtFullName" CssClass="form-control" style=" width:300px; margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label5" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Middle Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtMiddleName" CssClass="form-control"  style="margin-left:-150px" runat="server"></asp:TextBox>
                                                </div>
                                            </div> 
                                            
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label6" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Gender"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListGender" CssClass="form-control" style=" width:150px;  text-align:center; height:30px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Male">Male</asp:ListItem>
                                                          <asp:ListItem Value="Female">Female</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label7" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Title"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListTitle" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Mr">Mr</asp:ListItem>
                                                          <asp:ListItem Value="Mrs">Mrs</asp:ListItem>
                                                         <asp:ListItem Value="Miss">Miss</asp:ListItem>
                                                         <asp:ListItem Value="Ms">Ms</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label8" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Merital status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListMeritalStatus" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Single">Single</asp:ListItem>
                                                          <asp:ListItem Value="Married">Married</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label9" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Blood Group"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListBloodGroup" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-150px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="A+">A+</asp:ListItem>
                                                          <asp:ListItem Value="O+">O+</asp:ListItem>
                                                         <asp:ListItem Value="B+">B+</asp:ListItem>
                                                         <asp:ListItem Value="AB+">AB+</asp:ListItem>
                                                         <asp:ListItem Value="A-">A-</asp:ListItem>
                                                         <asp:ListItem Value="O-">O-</asp:ListItem>
                                                         <asp:ListItem Value="B-">B-</asp:ListItem>
                                                         <asp:ListItem Value="AB-">AB-</asp:ListItem>
                                                         
                                                     </asp:DropDownList>
                                                </div>
                                             </div>

                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label10" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Date of Birth"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtDOB" CssClass="form-control" style=" width:150px; text-align:center;  margin-left:-150px" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label70" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Upload the image"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:FileUpload ID="FileUpload1" Class="btn btn-danger" style="margin-right:25px" runat="server" />
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label71" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="View image"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:LinkButton ID="LinkButtonViewImage" style="color:white; margin-left:-90px" runat="server" OnClick="LinkButtonViewImage_Click">Click here to view image</asp:LinkButton>
                                                </div>
                                            </div> 

                                        </div>
                                    </div>

                                    </div>
                                        
                                     
                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Identification Information</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label11" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="NIC Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                        <asp:TextBox ID="txtNICNumber" CssClass="form-control" style=" width:200px; margin-left:-80px" runat="server"></asp:TextBox>
                                                        
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label12" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Driving License Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtDrivingLicenseNumber" CssClass="form-control" style=" width:200px;  margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label13" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Passport Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtPassportNumber" CssClass="form-control" style=" width:200px;  margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label14" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Passport Expiry Date"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtPassportExpryDate" CssClass="form-control" style=" width:200px; text-align:center;  margin-left:-80px" runat="server" TextMode="Date"></asp:TextBox>
                                                </div>
                                            </div>
                                             
                                        
                                            
                                        </div>
                                    </div>

                                    </div>


                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Ethnic Information</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label15" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Religon"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListReligonNumber" CssClass="form-control" style=" width:150px;  text-align:center; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Buddhist">Buddhist</asp:ListItem>
                                                          <asp:ListItem Value="Catholic">Catholic</asp:ListItem>
                                                         <asp:ListItem Value="Hindu">Hindu</asp:ListItem>
                                                         <asp:ListItem Value="Islam">Islam</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label16" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Race"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListRace" CssClass="form-control" style=" width:150px;  text-align:center; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Sinhala">Sinhala</asp:ListItem>
                                                          <asp:ListItem Value="Tamil">Tamil</asp:ListItem>
                                                         <asp:ListItem Value="Muslim">Muslim</asp:ListItem>
                                                         <asp:ListItem Value="Other">Other</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label17" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Nationality"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListNationality" CssClass="form-control" style=" width:150px;  text-align:center; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Sri lankan">Sri Lankan</asp:ListItem>
                                                          <asp:ListItem Value="Indian">Indian</asp:ListItem> 
                                                         <asp:ListItem Value="Other">Other</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div>

                                    </div> 

                                     
                                     <div class="card" style="margin-left:150px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Living Situation</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label18" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Living Status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListLivingStatus" CssClass="form-control" style=" width:150px;text-align:center; height:30px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Home">Home</asp:ListItem>
                                                          <asp:ListItem Value="Bording House">Bording House</asp:ListItem>
                                                         <asp:ListItem Value="Hostel">Hostel</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                            
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label20" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="No: of Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNumberOfDepartment" CssClass="form-control" style=" width:200px; margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label21" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="No: of Children"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNumberOfChildren" CssClass="form-control" style=" width:200px; margin-left:-80px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             
                                        
                                            
                                        </div>
                                    </div>

                                    </div> 

                                        
                                      <div class="card" style="margin-left:150px; background-color:gainsboro; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            
                                            <br/>
                                           
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col-6">
                                                    <asp:Button ID="btnNew" class="btn btn-danger btn-block form-control" runat="server" Text="New" OnClick="btnNew_Click" />
                                                </div>
                                                
                                                <div class="col-6">
                                                     <asp:Button ID="btnPersonClear" class="btn btn-primary btn-block form-control" runat="server" Text="Clear" OnClick="btnPersonClear_Click" />
                                                </div>
                                            </div>
                                            
                                   
                                        </div>
                                    </div>

                                    </div>  

                              </div>

                                <div class="col-md-6" style="margin-left:-43px">
                                  <h3 style="margin-left:130px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; margin-bottom:-20px; font-size:30px; text-decoration-style:solid"><i style="margin-left:-40px; margin-top:20px" class="fas fa-users-cog"></i><b>Employment Details</b></h3>
                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:30px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Employee Numbers</h4>
                                            <br/>
                                            <br/>

                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label22" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Employee Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmployeeNumber" CssClass="form-control" style=" width:300px; margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label23" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="NIC Number"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNicsNumber" CssClass="form-control" style=" width:300px;  margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label24" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEPFNumber" CssClass="form-control" style=" width:300px;  margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label25" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Previous EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtPreviousEpfNumber" CssClass="form-control" style=" width:300px; margin-left:-100px" runat="server"></asp:TextBox>
                                                </div>
                                            </div>
                                            

                                        </div>
                                    </div>

                                    </div>
                                        
                                     
                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Organization Details</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label32" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Group(*)"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:DropDownList ID="DropDownListGroup" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Aenvera Group">Aenvera Group</asp:ListItem>
                                                          <asp:ListItem Value="Sync Group">Sync Group</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label33" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Company(*)"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:DropDownList ID="DropDownListCompany" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Sync Umbrella">Sync Umbrella</asp:ListItem>
                                                          <asp:ListItem Value="Sync Food">Sync Food</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label34" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListDeprtment" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Hr">Hr</asp:ListItem>
                                                          <asp:ListItem Value="Marketing">Marketing</asp:ListItem>
                                                         <asp:ListItem Value="Finance">Finance</asp:ListItem>
                                                         <asp:ListItem Value="Accounting">Accounting</asp:ListItem>
                                                         <asp:ListItem Value="Production">Production</asp:ListItem>
                                                         <asp:ListItem Value="Quality Assurance">Quality Assurance</asp:ListItem>


                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label35" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Division"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListDivision" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Print">Print</asp:ListItem>
                                                          <asp:ListItem Value="Handle">Handle</asp:ListItem>
                                                            <asp:ListItem Value="Cutting">Cutting</asp:ListItem>
                                                            <asp:ListItem Value="Bordering">Bordering</asp:ListItem>
                                                            <asp:ListItem Value="Tailoring">Tailoring</asp:ListItem>
                                                         <asp:ListItem Value="Complete">Complete</asp:ListItem>
                                                        
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label26" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Seconded Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListSecondedDepartment" CssClass="form-control" style=" width:150px; text-align:center;  height:30px; margin-left:-80px" runat="server">
                                                          <asp:ListItem Value="0">--select--</asp:ListItem>
                                                          <asp:ListItem Value="Sync Second">Sync Second</asp:ListItem>
                                                          <asp:ListItem Value="Sync Third">Sync Third</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             
                                        
                                            
                                        </div>
                                    </div>

                                    </div>


                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Employee Position</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label36" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Job Category"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListJobCategory" CssClass="form-control" style=" width:150px;  text-align:center; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Minor">Minor</asp:ListItem>
                                                          <asp:ListItem Value="Staff">Staff</asp:ListItem>
                                                       
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label37" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Current Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListCurrentDesignation" CssClass="form-control" style=" width:300px; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0" Selected="True">select designation</asp:ListItem>
                                                         <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Coo">Coo</asp:ListItem>
                                                          <asp:ListItem Value="Genaral Manager">Genaral Manager</asp:ListItem>
                                                         <asp:ListItem Value="Manager"> Manager</asp:ListItem>
                                                         <asp:ListItem Value="Assistant Manager">Assistant Manager</asp:ListItem>
                                                         <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                         <asp:ListItem Value="Assitant">Assistant</asp:ListItem>
                                                         <asp:ListItem Value="Supervisor">Supervisor</asp:ListItem>
                                                         <asp:ListItem Value="Worker">Worker</asp:ListItem>
                                                        
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label38" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Joined Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListJoinedDesignation" CssClass="form-control" style=" width:300px; text-align:left; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0">select joined designation</asp:ListItem>
                                                         <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Coo">Coo</asp:ListItem>
                                                          <asp:ListItem Value="Genaral Manager">Genaral Manager</asp:ListItem>
                                                         <asp:ListItem Value="Manager"> Manager</asp:ListItem>
                                                         <asp:ListItem Value="Assistant Manager">Assistant Manager</asp:ListItem>
                                                         <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                         <asp:ListItem Value="Assitant">Assistant</asp:ListItem>
                                                         <asp:ListItem Value="Supervisor">Supervisor</asp:ListItem>
                                                         <asp:ListItem Value="Worker">Worker</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label27" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Reporting Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListReportingDesignation" CssClass="form-control" style=" width:300px; text-align:left; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0">select reporting designation</asp:ListItem>
                                                         <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Coo">Coo</asp:ListItem>
                                                          <asp:ListItem Value="Genaral Manager">Genaral Manager</asp:ListItem>
                                                         <asp:ListItem Value="Manager"> Manager</asp:ListItem>
                                                         <asp:ListItem Value="Assistant Manager">Assistant Manager</asp:ListItem>
                                                         <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                         <asp:ListItem Value="Assitant">Assistant</asp:ListItem>
                                                         <asp:ListItem Value="Supervisor">Supervisor</asp:ListItem>
                                                         <asp:ListItem Value="Worker">Worker</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label28" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Reporting Persion"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListReportingPersion" CssClass="form-control" style=" width:300px;  text-align:left; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem style="font-style:italic" Value="0">select reporting persion</asp:ListItem>
                                                          <asp:ListItem Value="Mr.Gamunu">Mr.Gamunu</asp:ListItem>
                                                          <asp:ListItem Value="Mr.Chamath">Mr.Chamath</asp:ListItem>
                                                         <asp:ListItem Value="Mr.Janaka">Mr.Janaka</asp:ListItem>
                                                          <asp:ListItem Value="Mr.Sugath">Mr.Sugath</asp:ListItem>
                                                          <asp:ListItem Value="Mr.Nimal">Mr.Nimal</asp:ListItem>
                                                         <asp:ListItem Value="Mr.Kamal">Mr.Kamal</asp:ListItem>
                                                         <asp:ListItem Value="Mr.Chamara">Mr.Chamara</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Anoma">Mrs.Anoma</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Seetha">Mrs.Seetha</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Renuka">Mrs.Renuka</asp:ListItem>
                                                         <asp:ListItem Value="Mrs.Sachini">Mrs.Sachini</asp:ListItem>
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label29" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Location Branch"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:DropDownList ID="DropDownListLocationBranch" CssClass="form-control" style=" width:150px;  text-align:center; height:30px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Kandy">Kandy</asp:ListItem>
                                                          <asp:ListItem Value="Mawanella">Mawanella</asp:ListItem> 
                                                     </asp:DropDownList>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label30" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Assign JD"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                    <a  href="#" style="margin-left:-100px; color:aliceblue;">Click to Assign</a>      
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    </div> 

                                     
                                     <div class="card" style="margin-left:70px; background-color:#194C43; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-top:-5px; margin-bottom:-10px">Employeement Details</h4>
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label39" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Basic Salary"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                         
                                                            
                                                     <asp:TextBox ID="txtBasicSalary" CssClass="form-control" style="margin-left:-40px; width:170px; text-align:right" runat="server"> .00</asp:TextBox>
                                                     <asp:DropDownList ID="DropDownListLKR" CssClass="form-control" style=" width:80px;text-align:center; height:30px; margin-left:5px; margin-right:-5px" runat="server">
                                                          <asp:ListItem Value="0">LKR</asp:ListItem>
                                                         
                                                     </asp:DropDownList>
                                                                 
                                                        
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label31" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Budgetary Relief Allowance 02"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                     <asp:TextBox ID="txtBudgetaryReliefAllowance02" CssClass="form-control" style="margin-left:-40px; text-align:right" runat="server"> .00</asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label43" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Budgetary Relief Allowance 01"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">
                                                     <asp:TextBox ID="txtBudgetaryReliefAllowance01" CssClass="form-control" style="margin-left:-40px; text-align:right" runat="server"> .00</asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                            <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label40" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Employeement Plan"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">                                                   
                                                     <asp:DropDownList ID="DropDownListEmployeementPlan" CssClass="form-control" style=" width:330px;text-align:left; height:28px; margin-left:-100px" runat="server">
                                                          <asp:ListItem Value="0">--select one--</asp:ListItem>
                                                          <asp:ListItem Value="Executive">Executive</asp:ListItem>
                                                          <asp:ListItem Value="Nonexecutive">Nonexecutive</asp:ListItem> 
                                                     </asp:DropDownList>
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label41" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Annual Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">                                                   
                                                        <asp:TextBox ID="txtAnnualLeave" CssClass="form-control" style="margin-left:-40px" runat="server"></asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label42" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Casula Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <div class="input-group">                                                   
                                                        <asp:TextBox ID="txtCasualLeave" CssClass="form-control" style="margin-left:-40px" runat="server"></asp:TextBox>
                                                     </div>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            
                                        </div>
                                    </div>

                                    </div> 

                                        
                                     <div class="card" style="margin-left:70px; background-color:gainsboro; width:500px; margin-top:5px">
                                
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            
                                            <br/>
                                           
                                             <div class="row" style="margin-bottom:10px;" >
                                                 <div class="col-6">
                                                     <asp:Button ID="btnSaveWork" class="btn btn-danger btn-block form-control" runat="server" Text="Save" OnClick="btnSaveWork_Click" />
                                                </div>
                                                <div class="col-6">
                                                     <asp:Button ID="btnWorkClear" class="btn btn-primary btn-block form-control" runat="server" Text="Clear" OnClick="btnWorkClear_Click" />
                                                </div>
                                            </div>
                                            
                                   
                                        </div>
                                    </div>

                                    </div>  

                              </div>

           
                           </div>
                      </div>      
            </asp:View>


            <asp:View ID="ViewProfiles" runat="server">
                <div class="container">
                    <div class="row justify-content-start">

                        <div class="col-4">
                            <div class="card" style="height:25rem; width: 40rem;  background-color:#194C43; margin-left:30px; margin-top:30px; margin-bottom:20px">
                                           <div class="card-body">
                                           <h3 class="card-title" id="viewprofileCard1"  style=" text-align:center; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:10px;"><b>Forgot Identity??</b></h3>
                                            
                                                        

                                                               <div class="row">
                                                                   <div class="col-6">
                                                                 
                                                                    <label style="margin-top:30px; margin-left:10px; font-size:medium; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa""><b>Employee Id</b></label><asp:TextBox ID="txtEmployeeIdsearch" runat="server"></asp:TextBox>
                                                               </div>

                                                                   <div class="col-6">
                                                                     
                                                                       <label style="margin-top:30px; margin-left:10px; font-size:medium; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa""><b>NIC No</b></label><asp:TextBox ID="txtNicsearch" runat="server"></asp:TextBox>
                                                                   
                                                                           </div>

                                                                </div>
                                                                <br />
                                                                <br />

                                                                <div class="row">
                                                                 
                                                                <asp:Button class="btn btn-danger" style="margin-top:10px; margin-left:120px;width:150px" ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                                                                </div>

                                              
                                                               
                                                                    
                                                             
                                               
                                           </div>
                                           </div>
                        </div>

                       

                        <div class="col-4">                    
                            <div class="card" style="margin-left:-350px; background-color:#194C43; width:500px; margin-top:300px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Personal Details</h4>
                                            <br/>
                                            <br/>
                                            <br/>
                                                
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col-4">
                                                    <asp:Label ID="Label53" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-left:10px" runat="server" Text="NIC No"></asp:Label>
                                                </div>
                                                <div class="col-4">
                                                     <asp:TextBox ID="txtPersonDetailNicNo" style=" width:210px; margin-left:-80px" runat="server" ReadOnly="false"></asp:TextBox>
                                                </div>
                                                <div class="col-4">
                                                    <asp:Button ID="btnPersonalDataView" style="width:100px; height:30px; margin-left:-30px" class="btn btn-danger" runat="server" Text="View" OnClick="btnPersonalDataView_Click" />
                                                </div>
                                            </div>
                                                
                                              
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label19" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Full Name"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtFullNames" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label44" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Gender"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtGenders" style="  margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label45" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Marital Status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtMaritalStatus" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label46" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Blood Group"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtBloodGroup" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label47" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Date of birth"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtDoBs"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 
                                            
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label48" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Nationality"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtNationalitys"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label49" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Race"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtRace"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label50" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="No of children"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtNoOfChildrens"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label51" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Living Status"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtLivingStatuss"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>

                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label52" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Religon"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtReligones" style=" width:210px;margin-left:-100px" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 

                                        </div>
                                    </div>

                                    </div> 
                            </div>
                        


                        <div class="col-4">
                    
                             <div class="card" style="margin-left:-150px; background-color:#194C43; width:500px; margin-top:300px">
                                      
                                        <div class="card-body">
                                        <div class="personalInfo">
                                            <h4 style="text-align:left; margin-top:-5px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-bottom:-10px">Employment Details</h4>
                                            <br/>
                                            <br/>
                                            <br/>
                                                
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col-4">
                                                    <asp:Label ID="Label54" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa; margin-left:10px" runat="server" Text="Employee Id"></asp:Label>
                                                </div>
                                                <div class="col-4">
                                                     <asp:TextBox ID="txtEmpId" style=" width:210px; margin-left:-40px" runat="server" ></asp:TextBox>
                                                </div>
                                                <div class="col-4">
                                                    <asp:Button ID="btnEmpDetailsView" style="width:100px; height:30px; margin-left:10px" class="btn btn-danger" runat="server" Text="View" OnClick="btnEmpDetailsView_Click" />
                                                </div>
                                            </div>
                                                
                                              
                                            <br/>
                                            <br/>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label55" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsEPFNo" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label56" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Previous EPF No"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsPreviousEPFNo" style="  margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label57" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Group"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsGroup" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label58" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Company"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsCompany" style=" margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div>
                                             <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label59" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Department"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsDepartment"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 
                                            
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label60" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Division"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtEmpDetailsDivision"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label61" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Job Category"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                      <asp:TextBox ID="txtEmpDetailsJobCategory"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label62" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Current Designation"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsCurrentDesignation"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>
                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label63" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Annual Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsAnnualLeave"  style="margin-left:-100px; width:210px;" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                             </div>

                                              <div class="row" style="margin-bottom:10px;" >
                                                <div class="col">
                                                    <asp:Label ID="Label64" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa;" runat="server" Text="Casual Leave"></asp:Label>
                                                </div>
                                                 <div class="col">
                                                     <asp:TextBox ID="txtEmpDetailsCasulaLeave" style=" width:210px;  margin-left:-100px" runat="server" ReadOnly="True"></asp:TextBox>
                                                </div>
                                            </div> 

                                        </div>
                                    </div>

                                    </div> 
                    
                        </div>

                        </div>
                    </div>

            </asp:View>


            <asp:View ID="ViewActiveInactive" runat="server">
                <div class="container">
                    <div class="row justify-content-start">
                        <div class="col-4">
                            <div class="card" style="margin-left:30px; background-color:#194C43; margin-top:80px">
                                <div class="card-body">
                                    <div class="row pb-3 pt-5">
                                        <div class="col-6">
                                            <asp:Label ID="Label65" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Date:"></asp:Label>
                                        </div>
                                        <div class="col-6">
                                            <asp:TextBox ID="txtDateDel" style="margin-left:-70px;width:200px" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="row pb-3">
                                        <div class="col-6">
                                            <asp:Label ID="Label66" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="NIC No:"></asp:Label>
                                        </div>
                                        <div class="col-6">
                                            <asp:TextBox ID="txtNicNumberesDel" style="margin-left:-70px;width:200px" Class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                     <div class="row pb-3">
                                        <div class="col-6">
                                            <asp:Label ID="Label67" style="font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Employee Id:"></asp:Label>
                                        </div>
                                        <div class="col-6">
                                            <asp:TextBox ID="txtEmployeIdDel" style="margin-left:-70px;width:200px" Class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row pt-4">
                                        <div class="col-12">
                                            <asp:Button ID="btnDeleteEmp" Class="btn btn-danger btn-block form-control" runat="server" Text="Delete Employee" OnClick="btnDeleteEmp_Click" />
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="vrtical">   
                        </div>

                         <div class="col-4">
                            <div class="card" style="margin-left:30px; background-color:#194C43; margin-top:80px">
                                <div class="card-body">
                                    <div class="row pb-3 pt-3">
                                        <div class="col-12">
                                            <asp:Label ID="Label68" style="margin-left:60px;font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;color:#f5f6fa" runat="server" Text="Inactive Employee Details"></asp:Label>
                                        </div>
                                       
                                    </div>
                                     <div class="row">
                                        <div class="col-12">
                                            <hr style="margin-top:0px;"/>
                                        </div>
                                    </div>
                                    
                                     <div class="row pb-3">
                                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabase2ConnectionString %>" SelectCommand="SELECT [date], [NIC_No], [Emp_Id] FROM [inactiveTbl]"></asp:SqlDataSource>
                                        <div class="col-12">
                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="date,NIC_No" DataSourceID="SqlDataSource1" class="table table-hover table-white" style="color:aliceblue">
                                                <Columns>
                                                    <asp:BoundField DataField="date" HeaderText="date" ReadOnly="True" SortExpression="date" />
                                                    <asp:BoundField DataField="NIC_No" HeaderText="NIC_No" ReadOnly="True" SortExpression="NIC_No" />
                                                    <asp:BoundField DataField="Emp_Id" HeaderText="Emp_Id" SortExpression="Emp_Id" />
                                                </Columns>
                                            </asp:GridView>
                                        </div>
                                       
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:View>


            
            <asp:View ID="ViewLabourrep" runat="server">


                <div class="container">
                    <div class="row">
                        <div class="col text-right" style="margin-right:50px; margin-top:10px">
                            <a href="mailto:synchrmanager@email.com" style="color:#2c3e50; font-weight:700; font-size:2rem"><i class="fas fa-envelope-open-text pr-1"></i>synchrmanager@email.com</a>
                        </div>
                    </div>
                </div>

                <div class="row" style="margin-left:150px; margin-top:50px">
                    <div class="col">
                        <asp:TextBox ID="txtStartDate" style="width:200px" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>&nbsp<asp:TextBox ID="txtEndDate" style="width:200px" Class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                    </div>
                </div>
                <br />  
                <br />
                <div class="row" style="margin-left:150px; margin-top:30px">
                    <div class="col">
                        <div class="form-group" style="margin-left:-220px">
                        
                        <asp:Button ID="btnLabourRepotView" style="width:150px; margin-left:220px;margin-top:-55px"  Class="form-control btn btn-danger" runat="server" Text="View" OnClick="btnLabourRepotView_Click" />
                            <asp:Button ID="btnConvertPdf" style="width:150px; margin-left:20px;margin-top:-55px"  Class="form-control btn btn-success" runat="server" Text="Convert to PDF" OnClick="btnConvertPdf_Click" />
                        </div>
                        
                    </div>
                </div>

                <div class="row">
                    
                    <div class="col">
                        <asp:GridView style="margin-left:165px; width:600px;" ID="GridView1" runat="server" CellPadding="10" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>                       
                    </div>
                </div>

            </asp:View>



            <asp:View ID="ViewMonthlyrep" runat="server">

                <div class="row">
                    <div class="col" style="margin-left:200px; margin-top:50px">
                        <h2 style="margin-left:230px;color:black;">
                            <b>Training Requirement details</b>
                        </h2>
                        <asp:GridView ID="GridView2" class="table table-hover table-white" style=" width:800px; background-color:#2f3640; color:#f5f6fa;" runat="server"></asp:GridView>
                    </div>
                </div>

            </asp:View>


           


            <asp:View ID="ViewOutsideworkers" runat="server">
        
                <div class="container">
                            <div class="row justify-content-start">
                            <div class="col-4">

                            <div class="card" style="border-radius:25px; width: 45rem;background-color:#194C43; margin-left:60px;margin-right:5px; margin-top:30px; margin-bottom:20px">
                            <div class="card-body">
                            <h2 class="card-title" id="cardOutSideWorkers" style="text-align:center;font-family:Segoe UI;color:#f5f6fa" >Preformance Evaluation of Out Side Workers</h2>
                                                
                                                   <div class="row">
                                                           <div class="col-6">

                                                                <label style="margin-top:10px;color:#f5f6fa; font-size: 15px"><b>Month</b></label>
                                                           </div>

                                                           <div class="col-6">
                                                                <asp:DropDownList ID="DropDownListMonth" runat="server" style="margin-left:-30px; color:black; margin-top:10px;width: 200px; height: 25px">
                                                                <asp:ListItem Value="0">Please Select</asp:ListItem>  
                                                    
                                                                <asp:ListItem Value="1">January</asp:ListItem>  
                                                                <asp:ListItem Value="2">February </asp:ListItem>  
                                                                <asp:ListItem Value="3">March</asp:ListItem>
                                                                <asp:ListItem Value="1">April </asp:ListItem>  
                                                                <asp:ListItem Value="2">May</asp:ListItem>  
                                                                <asp:ListItem Value="3">June</asp:ListItem>
                                                                <asp:ListItem Value="1">July </asp:ListItem>  
                                                                <asp:ListItem Value="2">August </asp:ListItem>  
                                                                <asp:ListItem Value="3">Seeptember</asp:ListItem>
                                                                <asp:ListItem Value="1">October </asp:ListItem>  
                                                                <asp:ListItem Value="2">November </asp:ListItem>  
                                                                <asp:ListItem Value="3">December</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </div>

                                                   </div>
                                                           
                                                            <br />

                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#f5f6fa;"><b>Worker ID</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; color:#f5f6fa; width:200px" CssClass="form-control" ID="txtWorkerID" runat="server"></asp:TextBox>
                                                            </div>
                                                   </div>       
                                                             
                                                             <br />

                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style="margin-top:10px;font-size: 15px; color:#f5f6fa;"><b>Profit Precentage</b></label>
                                                            </div>

                                                            <div class="col-6">
                                                                    <asp:TextBox ID="txtProfitPrecentage" runat="server" style="margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" placeholder="Profit Precentage" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>  
                                                                
                                                              <br />    

                                       
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#f5f6fa;"><b>Reject Precentage</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtReject" runat="server" placeholder="Reject Precentage" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#f5f6fa;"><b>Final Status</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtFinalStatus" runat="server" placeholder="Final Status" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   <div class="row">
                                                            <div class="col-6">
                                                                <label style=" margin-top:10px;font-size: 15px; color:#f5f6fa;"><b>Net Profit Amount</b></label>
                                                            </div>
                                                                
                                                            <div class="col-6">
                                                                <asp:TextBox style=" margin-left:-30px;margin-top:10px;height:30px; width:200px" CssClass="form-control" ID="txtGrossProfit" runat="server" placeholder="Net Profit" ReadOnly="True"></asp:TextBox>
                                                            </div>
                                                   </div>
                                <br />
                                                   

                                                                
                                                                <br />
                                                                <asp:Button ID="btnEvaluate" runat="server" class="btn btn-danger btn-block" Height="40px" style="margin-top:20px; margin-left:130px;" Text="Evaluate" Width="147px" OnClick="btnEvaluate_Click" />
                                                                <br />

                                                   
                           
                                
                            </div>
                            </div>
                            </div>
                               
                                                            <div class="col-8">

                                                                <img src="Animation/69820-rotating-gears-loading.gif" style="width:400px; margin-left:150px"/>
                                                            </div>
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
