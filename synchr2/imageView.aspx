<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imageView.aspx.cs" Inherits="synchr2.imageView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
        body
        {
             background-color:gainsboro;
        }
        .vrtical
        {
            border-left: 5px solid #130f40;
            height:600px;
            position:absolute;
            margin-left:0px;
            margin-top:0px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        
        <nav class="navbar" style="background-color:#130f40; height:80px; margin-top:-30px">
            <a class="navbar-brand" href="#">
                <h1 style="text-align:center; padding-top:20px; color:#f5f6fa; font-size:50px;">Person details</h1>
            </a>
        </nav>



        <div class="vrtical">   
        </div>


        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HrmsDatabase1ConnectionString12 %>" SelectCommand="SELECT [NIC_number], [full_name], [title], [date_of_birth], [personImg] FROM [personTbl]"></asp:SqlDataSource>
            <asp:GridView ID="GridViewImgeView" runat="server" style="margin-left:50px; margin-top:20px" AutoGenerateColumns="False" DataKeyNames="NIC_number" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="NIC_number" HeaderText="NIC_number" ReadOnly="True" SortExpression="NIC_number" />
                    <asp:BoundField DataField="full_name" HeaderText="full_name" SortExpression="full_name" />
                    <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                    <asp:BoundField DataField="date_of_birth" HeaderText="date_of_birth" SortExpression="date_of_birth" />
                    <asp:ImageField HeaderText="Person_image">
                    </asp:ImageField>
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
