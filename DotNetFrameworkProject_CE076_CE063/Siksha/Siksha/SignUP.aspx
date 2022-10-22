<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUP.aspx.cs" Inherits="Siksha.SignUP" %>

<!DOCTYPE html>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up | Siksha</title>
    <link
        href="https://fonts.googleapis.com/css2?family=Lobster+Two&family=Raleway:wght@100&family=Ubuntu:wght@300&display=swap"
        rel="stylesheet">

    <style>
        body {
            background-color: whitesmoke;
            box-sizing: border-box;
        }

        .login {
            box-shadow: -2px 5px 30px 0.5px rgb(168, 168, 168);
            border-radius: 5%;
            width: 50%;
            margin-top: 7%;
            display: flex;
            flex-direction: row;
            align-items: center;
            border: none;
            margin-left: 25%;
            align-items: center;

        }

        .imgs {
            height: 70vh;
            width: 45vw;
            background-color: white;
            border: none;
            align-self: flex-start;

        }

        .login-form {
            padding-top: 15vh;
            height: 55vh;
            margin : 0vh;
            width: 45vw;
            background-color: white;
            align-self: flex-end;
            border: none;
            font-family: 'Lobster Two', cursive;
            font-family: 'Raleway', sans-serif;
            font-family: 'Ubuntu', sans-serif;
            color: black;
        }
        
        table {
            padding-top: 0vh;
            margin-top : -11vh;
        }

        tr {
            line-height: 2.5vh;
        }

        input[type=text],
        input[type=password] {
            border: none;
            border-bottom: 0.5px solid black;
        }

        input[type=submit] {
            margin-top: 5vh;
            padding: 1vh 2vh;
            background-color: rgb(52, 152, 219);
            border: none;
            color: white;
            border-radius: 0.5vh;
        }
        a
        {
            text-decoration: none;
            font-size: small;
        }
        img
        {
            padding-top: 17vh;
            height:50%;
            
        }
    </style>
</head>
<body>
    <div class="login">
        <div class="imgs"><img src="Assets/welcome.png"></div>
        <div class="login-form">
            SIGN UP
        <form id="form1" runat="server">
            <table>
                    <tr>
                        <td>Name</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="nm" runat="server" required="true"></asp:TextBox>
                        </td><br>
                    </tr>
                    <tr>
                        <td>Phone</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ph" runat="server" MaxLength="10" required="true"></asp:TextBox>
                        </td><br>
                    </tr>
                    <tr class="pass">
                        <td><br>Password</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="pass" runat="server" TextMode="Password" required="true"></asp:TextBox>
                        </td><br>
                    </tr>
                    <tr class="pass">
                        <td><br>Confirm Password</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="cnfpassword" runat="server" TextMode="Password" required="true"></asp:TextBox>
                        </td><br>
                    </tr>
            </table>
            <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Sign Up" />
            <br><br>
            <asp:HyperLink ID="tologin" runat="server" NavigateUrl="~/Login.aspx" >Login</asp:HyperLink>
            <br>
            <asp:RegularExpressionValidator ID="phone" runat="server" ControlToValidate="ph" ErrorMessage="Phone Number Must Be Numbers And Of Length 10" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <asp:CompareValidator runat="server" ErrorMessage="Password And Confirm Password Must Be Same" ID="pwdandcnfpwd" ControlToCompare="pass" ControlToValidate="cnfpassword" ForeColor="Red"></asp:CompareValidator>
    </form>
    </div>
    </div>
</body>
</html>
