<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book Form.aspx.cs" Inherits="Siksha.Book_Form" %>

<!DOCTYPE html>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 648px;
        }
    </style>
</head>
<body>
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
        <center>
        <table class="w-90">
            <tr class="table table-bordered">
                <td class="auto-style1">
                    <asp:Label ID="bookname" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="nme" runat="server" required="true"></asp:TextBox>
                </td>
            </tr>
            <tr class="table table-bordered">
                <td class="auto-style1">
                    <asp:Label ID="subject" runat="server" Text="Subject"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="sub" runat="server" required="true"></asp:TextBox>
                </td>
            </tr>
            <tr class="table table-bordered">
                <td class="auto-style1">
                    <asp:Label ID="author" runat="server" Text="Author Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="athr" runat="server" required="true"></asp:TextBox>
                </td>
            </tr>
            <tr class="table table-bordered">
                <td class="auto-style1">
                    <asp:Label ID="edition" runat="server" Text="Edition"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="edt" runat="server" required="true"></asp:TextBox>
                </td>
            </tr>
            <tr class="table table-bordered">
                <td class="auto-style1">
                    <asp:Label ID="description" runat="server" Text="Description"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="desc" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr class="table table-bordered">
                <td colspan="2">
                    <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="submit" />
                </td>
                
            </tr>
        </table>
        </center>
        <center><asp:Label ID="bookmessage" runat="server" Text="" ForeColor="Green"></asp:Label></center>
    </form>
</body>
</html>
