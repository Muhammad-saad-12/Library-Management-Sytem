<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BooksManagement.aspx.cs" Inherits="Library_Management_System.BooksManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"/>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            border: 1px solid #000080;
        }

        .auto-style2 {
            width: 100%;
            border-left-style: solid;
            border-left-width: 5px;
            border-right: 5px solid #C0C0C0;
            border-top-style: solid;
            border-top-width: 5px;
            border-bottom: 5px solid #C0C0C0;
        }

        .auto-style3 {
            margin-top: 0px;
        }

        .auto-style67 {
            height: 102px;
            width: 496px;
        }
        .auto-style68 {
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"> 
        &nbsp;Online Library Management System
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a class="nav-link" href="#">Dashboard</a></li>
       
            <li class="nav-item"><a class="nav-link" href="#">Books</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Issue Books</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Registered Users</a></li>
           
            <li class="nav-item"><a class="btn btn-danger" href="#">LOG ME OUT</a></li>
        </ul>
    </div>
</nav>

        <table class="tbl">
            <tr>
                <td class="tblhead">ADD NEW BOOK</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table align="center" class="auto-style66">
                        <tr>
                            <td class="auto-style68">BookName :</td>
                            <td class="auto-style68">
                                <asp:TextBox ID="txtbname" runat="server" CssClass="txt" Width="197px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtbname" ErrorMessage="??" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td class="lbl">Autor :
                            </td>
                            <td class="auto-style44">
                                <asp:TextBox ID="txtauthor" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="txtauthor" ErrorMessage="??" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">Select category :</td>
                            <td class="auto-style44">
                                <asp:DropDownList ID="drppublication" runat="server" CssClass="txt">
                                    <asp:ListItem>choose any</asp:ListItem>
                                    <asp:ListItem>Technology</asp:ListItem>
                                    <asp:ListItem>Science</asp:ListItem>
                                    <asp:ListItem>Business</asp:ListItem>
                                    <asp:ListItem>programming</asp:ListItem>
                                    <asp:ListItem>Engineering</asp:ListItem>

                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                    ControlToValidate="drppublication" ErrorMessage="??" ForeColor="Red"
                                    InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">Price :
                            </td>
                            <td class="auto-style44">
                                <asp:TextBox ID="txtprice" runat="server" CssClass="txt" Width="199px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                    ControlToValidate="txtprice" ErrorMessage="??" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">Quantity&nbsp; :</td>
                            <td class="auto-style44">
                                <asp:TextBox ID="txtqnt" runat="server" CssClass="txt" Width="199px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                    ControlToValidate="txtqnt" ErrorMessage="??" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbl">ISBN Number&nbsp; :</td>
                            <td class="auto-style44">
                                <asp:TextBox ID="txtisbn" runat="server" CssClass="txt" Width="199px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                    ControlToValidate="txtisbn" ErrorMessage="??" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style44">
                                <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD Book"
                                    OnClick="btnadd_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style44">
                                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>

                    <br><br><br>


                    <table align="center" class="auto-style1">
                        <tr>
                            <td>MANAGE BOOKS<br />
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style44">Books Listing<br />
                                <table align="center" class="auto-style2">
                                    <tr>
                                        <td>

                                            <asp:GridView ID="GridViewBooks" runat="server" AutoGenerateColumns="False" DataKeyNames="bookID" DataSourceID="SqlDataSource1" CssClass="auto-style3" Height="419px" Width="909px" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridViewBooks_SelectedIndexChanged">
                                                <Columns>
                                                    <asp:CommandField ShowSelectButton="True" />
                                                    <asp:BoundField DataField="bookID" HeaderText="bookID" InsertVisible="False" ReadOnly="True" SortExpression="bookID" />
                                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                                                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                                                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />



                                                </Columns>
                                            </asp:GridView>
                                            <table align="left" class="auto-style67" draggable="true">
                                                <tr>
                                                    <td class="auto-style66" draggable="false">
                                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="118px" OnClick="btnUpdate_Click1" />
                                                        <asp:Button ID="btnDel" runat="server" Text="Delete" Width="111px" OnClick="btnDel_Click" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT * FROM [bookData]"></asp:SqlDataSource>
                    <div>
                    </div>
    </form>
</body>
</html>
