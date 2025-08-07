<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApp4_5.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to My Web App</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #74ebd5, #9face6);
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
        }

        form {
            background-color: #ffffff;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        table {
            width: 100%;
            border-spacing: 0 15px;
        }

        td {
            padding: 5px 0;
        }

        label {
            font-weight: bold;
            color: #34495e;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 10px 12px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 8px;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus,
        select:focus {
            border-color: #5dade2;
            outline: none;
        }

        .aspNet-Label {
            display: block;
            margin-bottom: 6px;
        }

        .aspNet-Radio {
            margin-top: 10px;
        }

        .aspNet-Radio input {
            margin-right: 5px;
        }

        .button-container {
            text-align: center;
            padding-top: 20px;
        }

        .aspNet-Button {
            background-color: #2980b9;
            color: white;
            padding: 12px 30px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .aspNet-Button:hover {
            background-color: #21618c;
        }

        .response-label {
            display: block;
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            color: #27ae60;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome to my web app with ASP.NET</h1>

        <table>
            <tr>
                <td><asp:Label ID="Label1" runat="server" CssClass="aspNet-Label" Text="Enter your first name:"></asp:Label></td>
                <td><asp:TextBox ID="TextBox1" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" CssClass="aspNet-Label" Text="Enter your last name:"></asp:Label></td>
                <td><asp:TextBox ID="TextBox2" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <label class="aspNet-Label">Choose your Gender:</label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Text="Male" Value="Male" />
                        <asp:ListItem Text="Female" Value="Female" />
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" CssClass="aspNet-Label" Text="Choose a Course:" /></td>
                <td>
                    <asp:DropDownList ID="DropDownListCourses" runat="server">
                        <asp:ListItem Text="Pharmacy" Value="Pharmacy" />
                        <asp:ListItem Text="Engineering" Value="Engineering" />
                        <asp:ListItem Text="Mathematics" Value="Mathematics" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="Label4" runat="server" CssClass="aspNet-Label" Text="Choose a Country:" /></td>
                <td>
                    <asp:DropDownList ID="DropDownListCountries" runat="server">
                        <asp:ListItem Text="Zambia" Value="Zambia" />
                        <asp:ListItem Text="India" Value="India" />
                        <asp:ListItem Text="France" Value="France" />
                        <asp:ListItem Text="USA" Value="USA" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="aspNet-Button" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>

        <asp:Label ID="response" runat="server" CssClass="response-label" Text="" />
    </form>
</body>
</html>
