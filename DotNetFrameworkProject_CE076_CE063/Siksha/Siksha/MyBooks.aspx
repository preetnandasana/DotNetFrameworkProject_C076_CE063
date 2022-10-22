<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyBooks.aspx.cs" Inherits="Siksha.MyBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>MyBooks | Siksha</title>
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
    
        <div>
        </div>
        <asp:GridView class="table table-bordered" ID="mybooklist" runat="server" OnRowDataBound="mybooklist_OnRowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataSourceID="Mybooklistds" DataKeyNames="id" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="isshared" HeaderText="isshared" SortExpression="isshared" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="Mybooklistds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [books] WHERE ([phone] = @phone) ORDER BY [name]" DeleteCommand="DELETE FROM [books] WHERE [id] = @id" InsertCommand="INSERT INTO [books] ([phone], [name], [subject], [author], [edition], [description], [isshared]) VALUES (@phone, @name, @subject, @author, @edition, @description, @isshared)" UpdateCommand="UPDATE [books] SET [phone] = @phone, [name] = @name, [subject] = @subject, [author] = @author, [edition] = @edition, [description] = @description, [isshared] = @isshared WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="subject" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="edition" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="isshared" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="phone" SessionField="phone" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="subject" Type="String" />
                <asp:Parameter Name="author" Type="String" />
                <asp:Parameter Name="edition" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="isshared" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
