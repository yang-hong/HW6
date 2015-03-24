﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>About Us</title>
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
        <br />
        <div class="body2">
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla
aliquet, tellus sit amet feugiat euismod, velit lectus
pellentesque nisi, non eleifend quam ipsum at arcu. Sed
semper mi a tristique porttitor. Morbi rhoncus diam dui, a
ultricies eros mollis sed. Donec facilisis blandit elit ut ultrices.
Nullam laoreet volutpat dolor in convallis. Ut ornare mollis odio
at luctus. Morbi nec blandit justo. Donec porta sagittis euismod.
Cras quis congue dui. Nunc at lorem ac diam vestibulum
placerat quis eu nibh. In hac habitasse platea dictumst.</p>

            <p>Etiam vel lorem nec justo suscipit ornare. Sed risus urna,
gravida nec convallis eu, viverra nec sem. Sed eget mauris
magna. Sed vulputate tortor in tempus fringilla. Donec in
commodo tellus. Ut laoreet ut lectus ac vehicula. Duis velit
nulla, suscipit ut urna ac, facilisis elementum sapien. Interdum
et malesuada fames ac ante ipsum primis in faucibus. Ut dui
quam, imperdiet ornare est non, accumsan vulputate justo.
Vestibulum sit amet erat a nunc consectetur pellentesque.
Aenean imperdiet tellus nec augue eleifend condimentum.</p>
    <form id="form1" runat="server">
    <div style="height: 16px; width: 168px">
    
    </div>
    </form>
       <br /><br /><br /><br />
            <footer>&copy; 2015. 6K:183 Software Design & Development</footer>
</body>
</html>
