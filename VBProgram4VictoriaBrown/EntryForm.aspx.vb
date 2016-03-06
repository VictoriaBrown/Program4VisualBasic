Public Class EntryForm
    Inherits System.Web.UI.Page

    Dim TotalPriceDecimal As Decimal = 0.0
    Dim PriceForNormalTicketInteger As Integer = 15
    Dim PriceForTicketWithAwardsNight As Integer = 25
    Dim NumberOfTicketsInteger As Integer
    Dim GoingToAwardsNightBoolean As Boolean = False

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles AwardNightCheckBox.CheckedChanged
        GoingToAwardsNightBoolean = True
    End Sub

    Protected Sub NumberOfTicketsTextBox_TextChanged(sender As Object, e As EventArgs) Handles NumberOfTicketsTextBox.TextChanged
        NumberOfTicketsInteger = NumberOfTicketsTextBox.Text
    End Sub

    Protected Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        If GoingToAwardsNightBoolean = True Then
            TotalPriceDecimal = NumberOfTicketsInteger * PriceForTicketWithAwardsNight
            AmountDueLabel.Text = TotalPriceDecimal
            ConfirmationPageHyperLink.Visible = True
            AmountDueTextLabel.Visible = True
            AmountDueLabel.Visible = True
        End If
        If GoingToAwardsNightBoolean = False Then
            TotalPriceDecimal = NumberOfTicketsInteger * PriceForNormalTicketInteger
            AmountDueLabel.Text = TotalPriceDecimal
            ConfirmationPageHyperLink.Visible = True
            AmountDueTextLabel.Visible = True
            AmountDueLabel.Visible = True
        End If
    End Sub
End Class