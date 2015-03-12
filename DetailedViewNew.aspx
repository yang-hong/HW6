<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailedViewNew.aspx.vb" Inherits="DetailedViewNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT [recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [notes], [preparation], [ID] FROM [yang_recipe]" DeleteCommand="DELETE FROM [yang_recipe] WHERE [ID] = @ID" InsertCommand="INSERT INTO [yang_recipe] ([recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [notes], [preparation]) VALUES (@recipe_name, @submitted_by, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @notes, @preparation)" UpdateCommand="UPDATE [yang_recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [notes] = @notes, [preparation] = @preparation WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="85px" Width="125px">
            <Fields>
                <asp:BoundField DataField="recipe_name" HeaderText="recipe_name" SortExpression="recipe_name" />
                <asp:BoundField DataField="submitted_by" HeaderText="submitted_by" SortExpression="submitted_by" />
                <asp:BoundField DataField="ingredient1" HeaderText="ingredient1" SortExpression="ingredient1" />
                <asp:BoundField DataField="ingredient2" HeaderText="ingredient2" SortExpression="ingredient2" />
                <asp:BoundField DataField="ingredient3" HeaderText="ingredient3" SortExpression="ingredient3" />
                <asp:BoundField DataField="ingredient4" HeaderText="ingredient4" SortExpression="ingredient4" />
                <asp:BoundField DataField="ingredient5" HeaderText="ingredient5" SortExpression="ingredient5" />
                <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                <asp:BoundField DataField="preparation" HeaderText="preparation" SortExpression="preparation" />
                <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
