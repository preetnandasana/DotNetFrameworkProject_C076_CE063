<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Siksha.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Lobster+Two&family=Raleway:wght@100&family=Ubuntu:wght@300&display=swap"
        rel="stylesheet">
    <title>Login | Siksha</title>
     <style>
        body {
            background-color: whitesmoke;
            box-sizing: border-box;
        }

        .login {
            box-shadow: -2px 5px 30px 0.5px rgb(168, 168, 168);
            border-radius: 5%;
            width: 50%;
            margin-top: 9%;
            display: flex;
            flex-direction: row;
            align-items: center;
            border: none;
            margin-left: 25%;
            align-items: center;

        }

        .imgs {
            height: 65vh;
            width: 45vw;
            background-color: white;
            border: none;
            align-self: flex-start;

        }

        .login-form {
            padding-top: 15vh;
            height: 50vh;

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
        }

        tr {
            line-height: 3vh;
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
            padding-top: 15vh;
            padding-left: 2vw;
            width:80%;
            height: 60%;
        }
    </style>
</head>
<body>
    <div class="login">
        <div class="imgs"><img src="Assets/book.jpg"></div>
        <div class="login-form">
            LOGIN
            <form id="form1" runat="server">
            <table>
                    <tr>
                        <td>Phone</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="ph" runat="server" required="true"></asp:TextBox>
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
            </table>
                <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Login" />
                <br><br>
                <asp:HyperLink ID="signUp" runat="server" NavigateUrl="~/SignUP.aspx" ToolTip="Sign Up">Sign Up</asp:HyperLink>
                <br/>
                <asp:Label ID="loginerror" runat="server" Text="" ForeColor="Red"></asp:Label>
            
            </form>
           </div>
    </div>

</body>
</html>
