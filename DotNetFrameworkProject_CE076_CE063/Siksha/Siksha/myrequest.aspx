<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myrequest.aspx.cs" Inherits="Siksha.myrequest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>My Requests | Siksha</title>
</head>
<body>
    <form id="form1" runat="server">
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

        Your Pending Requests
        <asp:GridView class="table table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="myrequestsgv" OnRowDataBound="GridView1_OnRowDataBound">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="fromphone" HeaderText="fromphone" SortExpression="fromphone" />
                <asp:BoundField DataField="tophone" HeaderText="tophone" SortExpression="tophone" />
                <asp:BoundField DataField="isaccepted" HeaderText="isaccepted" SortExpression="isaccepted" />
                <asp:BoundField DataField="bid" HeaderText="bid" SortExpression="bid" />
                <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="myrequestsgv" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [requests] WHERE (([fromphone] = @fromphone) AND ([isaccepted] = @isaccepted))">
            <SelectParameters>
                <asp:SessionParameter Name="fromphone" SessionField="phone" Type="String" />
                <asp:Parameter DefaultValue="False" Name="isaccepted" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


        Your Accepted Requests


        <asp:GridView class="table table-bordered" ID="acceptedrequestsgv" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="acceptedrequests" OnRowDataBound="acceptedrequests_OnRowDataBound">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="fromphone" HeaderText="fromphone" SortExpression="fromphone" />
                <asp:BoundField DataField="tophone" HeaderText="tophone" SortExpression="tophone" />
                <asp:BoundField DataField="isaccepted" HeaderText="isaccepted" SortExpression="isaccepted" />
                <asp:BoundField DataField="bid" HeaderText="bid" SortExpression="bid" />
                <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource  ID="acceptedrequests" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [requests] WHERE (([fromphone] = @fromphone) AND ([isaccepted] = @isaccepted))">
            <SelectParameters>
                <asp:SessionParameter Name="fromphone" SessionField="phone" Type="String" />
                <asp:Parameter DefaultValue="True" Name="isaccepted" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


    </form>
</body>
</html>
