<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/styles.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [yang_recipe] WHERE [ID] = @ID" InsertCommand="INSERT INTO [yang_recipe] ([recipe_name], [submitted_by]) VALUES (@recipe_name, @submitted_by)" SelectCommand="SELECT [recipe_name], [submitted_by], [ID] FROM [yang_recipe]" UpdateCommand="UPDATE [yang_recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink_home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink_new" runat="server" NavigateUrl="~/DetailedViewNew.aspx">New Recipe</asp:HyperLink>
        &nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource" PageSize="4" Width="453px" ControlStyle-BackColor="coral" >
            <Columns>
                <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="submitted_by" SortExpression="submitted_by" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="DetailedView.aspx?ID={0}" Text="Select"  />
            </Columns>
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
