<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Requesttome.aspx.cs" Inherits="Siksha.Requesttome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
     
<head runat="server">
    <title>Request To Me | Siksha</title>
 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="requeststomme" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_OnRowDataBound">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="fromphone" HeaderText="fromphone" SortExpression="fromphone" />
                    <asp:BoundField DataField="tophone" HeaderText="tophone" SortExpression="tophone" />
                    <asp:BoundField DataField="isaccepted" HeaderText="isaccepted" SortExpression="isaccepted" />
                    <asp:BoundField DataField="bid" HeaderText="bid" SortExpression="bid" />
                    <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
                </Columns>
            </asp:GridView>
   

    
    <asp:SqlDataSource ID="requeststomme" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [requests] WHERE (([tophone] = @tophone) AND ([isaccepted] = @isaccepted))">
        <SelectParameters>
            <asp:SessionParameter Name="tophone" SessionField="phone" Type="String" />
            <asp:Parameter DefaultValue="False" Name="isaccepted" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
           
    </form>
</body>
</html>
