<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/styles.css" />
</head>
<body>
    <div class="background">
    <header>
        <h1>Wicked Easy Recipe</h1>
        <h3>Using 5 Ingredients or Less!</h3>
    </header>
           <asp:HyperLink ID="HyperLink_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink_new" runat="server" NavigateUrl="~/DetailedViewNew.aspx">New Recipe</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/contact.aspx">Contact Us</asp:HyperLink>
        &nbsp;
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    </div>
</body>
</html>
