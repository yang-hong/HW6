
Partial Class DetailedView
    Inherits System.Web.UI.Page

   

    Protected Sub FormView1_ItemDeleted1(sender As Object, e As FormViewDeletedEventArgs) Handles FormView1.ItemDeleted
        Dim deletedRecipe As String = e.Values("recipe_name").ToString()
        lblDelete.Text = deletedRecipe & " has been deleted from the database."

        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub

    Protected Sub FormView1_ItemUpdated1(sender As Object, e As FormViewUpdatedEventArgs) Handles FormView1.ItemUpdated
        Response.AddHeader("REFRESH", "3;URL=./Default.aspx")
    End Sub
End Class
