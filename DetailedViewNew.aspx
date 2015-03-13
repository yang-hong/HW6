<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailedViewNew.aspx.vb" Inherits="DetailedViewNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/styles.css" />
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
                <div class="table1">
                <table>
                    <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_name") %>' />

                        </td>
                        <td style="text-align:left">
                            
                        </td>
                    </tr>


                    <tr>
                        <td style="text-align:right;background-color:coral; color:white;">
                            submitted_by:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                        <td style="text-align:left">
                            
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                            ingredient1:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                        <td style="text-align:left">
                            
                        </td>
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                            ingredient2:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                            ingredient3:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ingredient3") %>' />

                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                            ingredient4:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ingredient4") %>' />

                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                            ingredient5:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ingredient5") %>' />

                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                            notes:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("notes") %>' />

                        </td>
                        
                    </tr>


                   <tr>
                        <td style="text-align:right; background-color:coral; color:white;">
                           preparation:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("preparation") %>' />

                        </td>
                       <td style="text-align:left">
                            
                        </td>
                    </tr>

                <tr>
                    <td style="text-align:center; color:white;">
                        <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" />
                    </td>


                </tr>

                </table>
                    </div>
               
            </InsertItemTemplate>
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:FormView>
    
    
    </div>
    </form>
</body>
</html>
