 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="Siksha.BookList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'/>
    <link href='https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css' rel='stylesheet'/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <title>My Book List | Siksha</title>

    <style>
        

    </style>

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
    
         <center><asp:Label ID="requesttext" runat="server" Text=""  ForeColor="Green"></asp:Label> </center>
    
    
        
        
         <asp:GridView class="table table-bordered"  ID="booklistview" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="booklistds" OnSelectedIndexChanged="booklistview_SelectedIndexChanged" OnRowDataBound="booklistview_RowDataBound" BorderStyle="Solid">
             
             <Columns>
                 <asp:CommandField ShowSelectButton="True" SelectText="Make Request" />
                 <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                 <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                 <asp:BoundField DataField="name" HeaderText="Book Name" SortExpression="name" />
                 <asp:BoundField DataField="subject" HeaderText="Book Subject" SortExpression="subject" />
                 <asp:BoundField DataField="author" HeaderText="Author Name" SortExpression="author" />
                 <asp:BoundField DataField="edition" HeaderText="Edition" SortExpression="edition" />
                 <asp:BoundField DataField="description" HeaderText="Description" SortExpression="description" />
                 <asp:BoundField DataField="isshared" HeaderText="isshared" SortExpression="isshared" />
             </Columns>
             
         </asp:GridView>
          
         <asp:SqlDataSource ID="booklistds" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [books] WHERE [id] = @id" InsertCommand="INSERT INTO [books] ([phone], [name], [subject], [author], [edition], [description], [isshared]) VALUES (@phone, @name, @subject, @author, @edition, @description, @isshared)" SelectCommand="SELECT * FROM [books] WHERE ([isshared] = @isshared)" UpdateCommand="UPDATE [books] SET [phone] = @phone, [name] = @name, [subject] = @subject, [author] = @author, [edition] = @edition, [description] = @description, [isshared] = @isshared WHERE [id] = @id">
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
                 <asp:Parameter DefaultValue="False" Name="isshared" Type="String" />
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
