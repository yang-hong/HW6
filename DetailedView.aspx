<%@ Page Language="VB" AutoEventWireup="false" CodeFile="DetailedView.aspx.vb" Inherits="DetailedView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recipe Detail</title>
    <link rel="stylesheet" type="text/css" href="~/styles.css" />

    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
    </style>

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
    <br />
    <form id="form1" runat="server">
        <div style="width: 625px">
    
        <asp:SqlDataSource ID="SqlDataSourceDetailed" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT [recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes], [ID] FROM [yang_recipe] WHERE ([ID] = @ID)" DeleteCommand="DELETE FROM [yang_recipe] WHERE [ID] = @ID" InsertCommand="INSERT INTO [yang_recipe] ([recipe_name], [submitted_by], [ingredient1], [ingredient2], [ingredient3], [ingredient4], [ingredient5], [preparation], [notes]) VALUES (@recipe_name, @submitted_by, @ingredient1, @ingredient2, @ingredient3, @ingredient4, @ingredient5, @preparation, @notes)" UpdateCommand="UPDATE [yang_recipe] SET [recipe_name] = @recipe_name, [submitted_by] = @submitted_by, [ingredient1] = @ingredient1, [ingredient2] = @ingredient2, [ingredient3] = @ingredient3, [ingredient4] = @ingredient4, [ingredient5] = @ingredient5, [preparation] = @preparation, [notes] = @notes WHERE [ID] = @ID">
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
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_name" Type="String" />
                <asp:Parameter Name="submitted_by" Type="String" />
                <asp:Parameter Name="ingredient1" Type="String" />
                <asp:Parameter Name="ingredient2" Type="String" />
                <asp:Parameter Name="ingredient3" Type="String" />
                <asp:Parameter Name="ingredient4" Type="String" />
                <asp:Parameter Name="ingredient5" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <span class="deleteRecipe"><asp:Label ID="lblDelete" runat="server"></asp:Label>
          <div class="body1">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSourceDetailed" Width="417px" Height="276px">
            <EditItemTemplate>
                 <div class="table1">
               <table>
                   <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          Recipe Name:
                       </td>
                       <td style="text-align:left;">
                           <asp:Textbox ID="Textbox1" runat="server" Text='<%# Bind("recipe_name") %>' />
                          
                       </td>
                        <td style="text-align:left; color:red;">
                           <asp:RequiredFieldValidator ID="rfv_name" runat="server" ErrorMessage="Please enter recipe name." ControlToValidate="Textbox1"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                   <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          Submitted By:
                       </td>
                       <td style="text-align:left;"> 
                           <asp:Textbox ID="Textbox2" runat="server" Text='<%# Bind("submitted_by")%>' />
                       </td>
                         <td style="text-align:left; color:red;">
                           <asp:RequiredFieldValidator ID="rfv_submitName" runat="server" ErrorMessage="Please enter your name." ControlToValidate="Textbox2"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                         ingredient1:
                       </td>
                       <td style="text-align:left;">
                           <asp:Textbox ID="Textbox3" runat="server" Text='<%# Bind("ingredient1")%>' />
                       </td>
                         <td style="text-align:left; color:red;">
                           <asp:RequiredFieldValidator ID="ref_ingredient1" runat="server" ErrorMessage="Please enter at least one ingredient." ControlToValidate="Textbox3"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient2:
                       </td>
                       <td style="text-align:left;">
                           <asp:Textbox ID="Textbox4" runat="server" Text='<%# Bind("ingredient2")%>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient3:
                       </td>
                       <td style="text-align:left;">
                          <asp:Textbox ID="Textbox5" runat="server" Text='<%# Bind("ingredient3")%>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient4:
                       </td>
                       <td style="text-align:left;">
                           <asp:Textbox ID="Textbox6" runat="server" Text='<%# Bind("ingredient4")%>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient5:
                       </td>
                       <td style="text-align:left;">
                           <asp:Textbox ID="Textbox7" runat="server" Text='<%# Bind("ingredient5")%>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          preparation:
                       </td>
                       <td style="text-align:left;"> 
                           <asp:Textbox ID="Textbox8" runat="server" Text='<%# Bind("preparation")%>' />
                       </td>
                         <td style="text-align:left; color:red;">
                           <asp:RequiredFieldValidator ID="rqf_prep" runat="server" ErrorMessage="Please enter the preparation step." ControlToValidate="Textbox8"></asp:RequiredFieldValidator>
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          notes:
                       </td>
                       <td style="text-align:left;">
                           <asp:Textbox ID="Textbox9" runat="server" Text='<%# Bind("notes")%>' />
                       </td>
                   </tr>
               </table>
                
                 <tr>
                       <td style="text-align:left;">
                           <asp:Button ID="LinkButton4" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                       </td>
                       <td style="text-align:left;">
                           <asp:Button ID="LinkButton5" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                       </td>

                   </tr>
                </div>
                
                
            </EditItemTemplate>
            <InsertItemTemplate>
               
            </InsertItemTemplate>
            <ItemTemplate>
                <div class="table1">
               <table>
                   <tr>
                       <td style="text-align:right; background-color:#F08080;">
                           RecipeName:
                       </td>
                       <td style="text-align:left;">
                           <asp:Label ID="Label1" runat="server" Text='<%# Bind("recipe_name") %>' />
                           &nbsp;</td>
                   </tr>

                   <tr>
                       <td style="text-align:right; background-color:#F08080;" class="auto-style1">
                           SubmittedBy:
                       </td>
                       <td style="text-align:left;" class="auto-style1">
                           <asp:Label ID="Label2" runat="server" Text='<%# Bind("submitted_by") %>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                         ingredient1:
                       </td>
                       <td style="text-align:left;">
                           <asp:Label ID="Label3" runat="server" Text='<%# Bind("ingredient1") %>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient2:
                       </td>
                       <td style="text-align:left;">
                           <asp:Label ID="Label4" runat="server" Text='<%# Bind("ingredient2") %>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient3:
                       </td>
                       <td style="text-align:left;">
                          <asp:Label ID="Label5" runat="server" Text='<%# Bind("ingredient3") %>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient4:
                       </td>
                       <td style="text-align:left;">
                           <asp:Label ID="Label6" runat="server" Text='<%# Bind("ingredient4") %>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          ingredient5:
                       </td>
                       <td style="text-align:left;">
                           <asp:Label ID="Label7" runat="server" Text='<%# Bind("ingredient5") %>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          preparation:
                       </td>
                       <td style="text-align:left;">
                           <asp:Label ID="Label8" runat="server" Text='<%# Bind("preparation") %>' />
                       </td>
                   </tr>

                    <tr>
                       <td style="text-align:right; background-color:#F08080;">
                          notes:
                       </td>
                       <td style="text-align:left;">
                           <asp:Label ID="Label9" runat="server" Text='<%# Bind("notes") %>' />
                       </td>
                   </tr>
               </table>
                
                 <tr>
                       <td style="text-align:left;">
                           <asp:Button ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                       </td>
                       <td style="text-align:left;">
                           <asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                       </td>
                      
                   </tr>
                    </div>

            </ItemTemplate>
        </asp:FormView>
              </div>
              
         
        &nbsp;&nbsp;&nbsp;&nbsp;
        </span>
    
    </div>
    </form>
    <br /><br /><br /><br />
    <footer>&copy; 2015. 6K:183 Software Design & Development</footer>
</body>
</html>
