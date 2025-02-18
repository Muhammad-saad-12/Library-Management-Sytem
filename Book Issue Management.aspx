<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BookIssue.aspx.cs" Inherits="Library_Management_System.BookIssue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Issue Mangement</title>
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

        .auto-style67 {
            height: 102px;
            width: 496px;
        }
        .auto-style68 {
            height: 51px;
        }
        .auto-style69 {
            width: 716px;
        }
        .auto-style71 {
            width: 195px;
        }
        .auto-style72 {
            height: 51px;
            width: 195px;
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
                <td class="auto-style71">Issue NEW BOOK<br />
                </td>
            </tr>
            <br><br>
                        <tr>
                            <td class="auto-style72">Student ID:</td>
                            <td class="auto-style68">
                                <asp:TextBox ID="txtSID" runat="server" CssClass="txt" Width="197px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ControlToValidate="txtSID" ErrorMessage="??" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style71">ISBN or Book title:
                            <td class="auto-style44">
                                <asp:TextBox ID="txtsearch" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    ControlToValidate="txtsearch" ErrorMessage="??" ForeColor="Red"
                                    SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                    </table>
        <br>
                    <asp:Button ID="btnIssue" runat="server" Text="Issue Book" OnClick="Button1_Click" />
        


        <br/><br/><br/>



                    <table align="center" class="auto-style1">
                        <tr>
                            <td class="auto-style69">MANAGE Issued BOOKS<br />
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style69">Issued Books<br />
                                <table align="center" class="auto-style2">
                                    <tr>
                                        <td>

                                            <table align="left" class="auto-style67" draggable="true">
                                                <tr>
                                                    <td class="auto-style66" draggable="false">
                                                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" />
                                                            <Columns>
                                                                <asp:CommandField ShowSelectButton="True" />
                                                            </Columns>
                                                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                                            <SortedDescendingHeaderStyle BackColor="#820000" />
                                                        </asp:GridView>
                                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbcon %>" SelectCommand="SELECT * FROM [BookIssue]"></asp:SqlDataSource>
                                                        <br />
                                                        <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="118px"/>
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
                    <div>
                    </div>
    </form>
</body>
</html>
