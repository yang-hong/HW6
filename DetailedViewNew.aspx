﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailedViewNew.aspx.vb" Inherits="DetailedViewNew" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>New Recipe</title>
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
        </div>
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
        <div class="body1">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="300px" Width="515px">
            <EditItemTemplate>
                
            </EditItemTemplate>
            <InsertItemTemplate>
                <div class="table1">
                <table>
                    <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                            Recipe Name:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox1" runat="server"  Text='<%# Bind("recipe_name") %>' />

                        </td>
                        <td style="text-align:left; color:red;">
                          
                           <asp:RequiredFieldValidator ID="rfv_Name" runat="server" ErrorMessage="Please enter the recipe name." ControlToValidate="Textbox1"></asp:RequiredFieldValidator>
                       
                        </td>
                    </tr>


                    <tr>
                        <td style="text-align:right;background-color:#F08080; color:white;">
                            Submitted By:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_by") %>' />
                        </td>
                         <td style="text-align:left; color:red;">
                            <asp:RequiredFieldValidator ID="rfv_submitName" runat="server" ErrorMessage="Please enter your name." ControlToValidate="Textbox2"></asp:RequiredFieldValidator>
                        </td>
                    </tr>

                    <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                            ingredient1:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ingredient1") %>' />
                        </td>
                        <td style="text-align:left; color:red;">
                            <asp:RequiredFieldValidator ID="rfv_ingredient1" runat="server" ErrorMessage="Please enter at least one ingredient." ControlToValidate="Textbox3"></asp:RequiredFieldValidator>
                        </td>
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                            ingredient2:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ingredient2") %>' />
                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                            ingredient3:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ingredient3") %>' />

                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                            ingredient4:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ingredient4") %>' />

                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                            ingredient5:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("ingredient5") %>' />

                        </td>
                        
                    </tr>


                    <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                            notes:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("notes") %>' />

                        </td>
                        
                    </tr>


                   <tr>
                        <td style="text-align:right; background-color:#F08080; color:white;">
                           preparation:
                        </td>
                        <td style="text-align:left;">
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("preparation") %>' />

                        </td>
                        <td style="text-align:left; color:red;">
                            <asp:RequiredFieldValidator ID="rqf_preparation" runat="server" ErrorMessage="Please enter your preparation step." ControlToValidate="Textbox9"></asp:RequiredFieldValidator>
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
    
    
    </div>
    </form>
    <br /><br /><br /><br />
    <footer>&copy; 2015. 6K:183 Software Design & Development</footer>
</body>
</html>
