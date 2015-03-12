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
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                
            </EditItemTemplate>
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td>
                            Recipe Name:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_name") %>' />

                        </td>
                    </tr>


                    <tr>
                        <td>
                            submitted_by:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            ingredient1:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                    </tr>


                    <tr>
                        <td>
                            ingredient2:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                    </tr>


                    <tr>
                        <td>
                            ingredient3:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ingredient3") %>' />

                        </td>
                    </tr>


                    <tr>
                        <td>
                            ingredient4:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ingredient4") %>' />

                        </td>
                    </tr>


                    <tr>
                        <td>
                            ingredient5:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ingredient5") %>' />

                        </td>
                    </tr>


                    <tr>
                        <td>
                            notes:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("notes") %>' />

                        </td>
                    </tr>


                   <tr>
                        <td>
                           preparation:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("preparation") %>' />

                        </td>
                    </tr>

                </table>
                recipe_name:
                <asp:TextBox ID="recipe_nameTextBox" runat="server" Text='<%# Bind("recipe_name") %>' />
                <br />
                submitted_by:
                <asp:TextBox ID="submitted_byTextBox" runat="server" Text='<%# Bind("submitted_by") %>' />
                <br />
                ingredient1:
                <asp:TextBox ID="ingredient1TextBox" runat="server" Text='<%# Bind("ingredient1") %>' />
                <br />
                ingredient2:
                <asp:TextBox ID="ingredient2TextBox" runat="server" Text='<%# Bind("ingredient2") %>' />
                <br />
                ingredient3:
                <asp:TextBox ID="ingredient3TextBox" runat="server" Text='<%# Bind("ingredient3") %>' />
                <br />
                ingredient4:
                <asp:TextBox ID="ingredient4TextBox" runat="server" Text='<%# Bind("ingredient4") %>' />
                <br />
                ingredient5:
                <asp:TextBox ID="ingredient5TextBox" runat="server" Text='<%# Bind("ingredient5") %>' />
                <br />
                notes:
                <asp:TextBox ID="notesTextBox" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                preparation:
                <asp:TextBox ID="preparationTextBox" runat="server" Text='<%# Bind("preparation") %>' />
                <br />

                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:FormView>
    
    </div>
    </form>
</body>
</html>
