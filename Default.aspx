<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" 
            RepeatColumns="3" RepeatDirection="Horizontal" 
            onitemcommand="DataList1_ItemCommand">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td style="text-align: center">
                            ID
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" Height="185px" 
                                ImageUrl='<%# Eval("image") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="34px" 
                                ImageUrl="~/img/addtocart1.jpg" Width="156px" CommandName="addtocart" CommandArgument='<%# Eval("id") %>' />
                        </td>
                    </tr>
                </table>
                <br>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ecommerceConnectionString %>" 
            SelectCommand="SELECT * FROM [ecommerce]"></asp:SqlDataSource>
        <br />
        <span class="style2">No. of Product are Add to cart&nbsp; </span>
        <asp:Label ID="Label4" runat="server" CssClass="style2"></asp:Label>
        <span class="style2">&nbsp;&nbsp; </span>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style2" 
            Font-Bold="True" Font-Underline="False" ForeColor="Red" 
            NavigateUrl="~/addtocart.aspx">Show list</asp:HyperLink>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
