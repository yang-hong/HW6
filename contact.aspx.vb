'Add these two imports so you have access to the mail features.
Imports System.Net.Mail
Imports System.Net


Partial Class _default
    Inherits System.Web.UI.Page

    Protected Sub sendMail_Click(sender As Object, e As EventArgs) Handles sendMail.Click
        'Declare variables to create a new mail message and client connection.
        Dim msg As New MailMessage
        Dim client As New SmtpClient

        Dim name As String
        Dim email As String
        Dim subject As String
        Dim message As String

        name = senderName.Text.ToString()
        email = senderAddress.Text.ToString()
        subject = senderSubject.Text.ToString()
        message = senderMessage.Text.ToString().Replace(Environment.NewLine, "<br />") 'keep text box formatting by replacing new lines (returns) with <br/>


        msg.To.Add("michael-colbert@uiowa.edu")  'destination email address
        msg.From = New MailAddress("ui.6k183@gmail.com")  'account used to send the email.
        msg.Subject = senderSubject.Text  'set the message subject line
        'msg.Body = senderMessage.Text  'get the message body from the textbox
        msg.Body = "Name: " & name & "<br /><br />Email: <a href=&quot;mailto:" & email & "?subject=" & subject & "&quot;>" & email & "</a><br /><br />" & message
        msg.IsBodyHtml = True
        client.Host = "smtp.gmail.com"  'place your smtp server inside quotation marks - gmail is smtp.gmail.com
        client.Port = 587  'place your smtp port here - gmail is 587
        client.Credentials = New NetworkCredential("ui.6k183", "6k183U*I")  'enter you username and password for gmail
        client.EnableSsl = True  'gmail uses ssl
        client.Send(msg)  'send you msg (variable from above)

        'Clear out the textboxes after the message is sent.
        'If not, it does not appear to send and the user will click "send" repeatedly, sending multiple messages.
        senderAddress.Text = ""
        senderMessage.Text = ""

        'Write into the label that the message has been sent.
        confirmSent.Text = "Thank you.  Your message has been sent."

        'After the message has displayed for 2 seconds, "reload" the page.
        Response.AddHeader("REFRESH", "2;URL=default.aspx")


    End Sub

End Class
