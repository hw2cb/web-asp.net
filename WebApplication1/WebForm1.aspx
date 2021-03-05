<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Имя пользователя:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Не должно быть пустым"></asp:RequiredFieldValidator>
            <br />
            Пароль:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="поле должно содержать не менее 8 символов" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
            <br />
            Подтверждение пароля:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Значение должно совпадать со значением, введенным в предыдущее поле"></asp:CompareValidator>
            <br />
            Электронная почта:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Значение должно иметь формат электронной почты" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            Возраст:<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="Должно быть введено число от18 до 65" MaximumValue="65" MinimumValue="18"></asp:RangeValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Отправить" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
