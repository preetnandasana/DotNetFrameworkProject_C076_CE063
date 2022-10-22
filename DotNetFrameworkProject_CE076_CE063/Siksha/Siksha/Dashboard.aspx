<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Siksha.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard | Siksha</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <style>
        body {
                background-image: url("assets/background.png");
                background-color: #cccccc;
        }
        btn{
            border-radius:10px;
        }
    </style>
</head>
<body >
    <div>
        <navbar>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    
                      <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                          <li class="nav-item active">
                            <a class="nav-link disabled" href="https://localhost:44345/Dashboard.aspx">Hello <asp:Label ID="name" runat="server" Text=""></asp:Label> <span class="sr-only">(current)</span></a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="https://localhost:44345/MyBooks.aspx">My Shared Books Details</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="https://localhost:44345/Requesttome.aspx">Requests For Your Shared Books</a>
                          </li>
                          <li class="nav-item">
                            <a class="nav-link" href="https://localhost:44345/myrequest.aspx">My Requets</a>
                          </li>
                            <li class="nav-item">
                            <a class="nav-link" href="https://localhost:44345/logout.aspx">Logout</a>
                          </li>
                        </ul>
                        </div>
            </nav>
        </navbar>
    </div>
    <form id="form1" runat="server">
        <div>
            <center><asp:Label ID="Siksha" runat="server" Text="SIKSHA" Font-Size="100" ToolTip="A Book Exchange Platform"></asp:Label></center>
            <table class="w-100">
                <tr>
                    <td>
                        <center><asp:Button class="btn" ID="share" runat="server" Text="Share Book" OnClick="share_Click" Height="250" Width="300" BackColor="Black" ForeColor="White" Font-Size="30" /></center>
                    </td>
                    <td>
                        <center><asp:Button class="btn" ID ="search" runat="server" Text="Search Book" OnClick="search_Click" Height="250" Width="300" BackColor="Black" ForeColor="White" Font-Size="30" /></center>
                    </td>
                </tr>
            </table>
            
          </div>
    </form>
</body>
</html>
