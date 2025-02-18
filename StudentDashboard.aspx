<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="std.aspx.cs" Inherits="student_dashboard_test.std" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<style>
    * {
        margin: 0;
        padding: 0;
        font-family: Arial, Helvetica, sans-serif;
        box-sizing: border-box;
    }

    .header-bar {
        display: flex;
        justify-content: space-evenly;
        align-items: center;
        height: 80px;
        background-color: #fff;
    }

    .header-bar .logout .btn {
        border: none;
        height: 30px;
        font-size: 0.8em;
        width: 100px;
        background-color: #d9534f;
        color: #fff;
        border-radius: 5px;
    }

    nav {
        display: flex;
        align-items: center;
        justify-content: flex-end;
        background-color: #f7f7f7;
        height: 60px;
    }
    .line{
        height: 5px;
        width: 100%;
        background-color: #9170e1;
    }

    .menu-bar {
        height: 100%;
    }

    .menu-bar ul {
        display: flex;
        align-items: center;
        justify-content: flex-end;
        gap: 20px;
        margin-right: 40px;
        list-style: none;
        height: 100%;
    }

    .menu-bar ul li {
        display: flex;
        align-items: center;
        padding: 20px;
        height: 100%;
        box-sizing: border-box;
        transition: 0.1s ease-in-out;
    }

    .menu-bar ul li:hover {
        background-color: #eeeeee;
    }

    .menu-bar ul a {
        height: 100%;
        display: inline-block;
        color: #161616;
        text-decoration: none;
    }

    .dashboard-container {
        margin-top: 50px;
    }

    .card {
        text-align: center;
        padding: 20px;
    }
    .heading{
        text-transform: uppercase;
        font-size: 1.2em;
    }
</style>

<body>
    <form id="form1" runat="server">
        <header>

            <div class="header-bar">
                <div class="img">
                    <img src="images/logo.png" alt="online library management system" width="80"/>
                </div>
                <div class="logout">
                    <asp:Button Class="btn" ID="Button1" runat="server" Text="LOG ME OUT" />
                </div>
            </div>
        </header>

        <nav>
            <div class="menu-bar">
                <ul>
                    <a href="#">
                        <li>DASHBOARD</li>
                    </a>
                    <a href="#">
                        <li>ISSUED BOOKS</li>
                    </a>
                    <a href="#">
                        <li>ACCOUNT</li>
                    </a>
                </ul>
            </div>
        </nav>
        <div class="line"></div>
        <main>
            <div class="container dashboard-container">
                <h2 class="heading">User Dashboard</h2>

                
                <div class="row mt-4">
                    <div class="col-md-4">
                        <div class="card border-success">
                            <div class="card-body">
                                <h3 class="text-success">📚</h3>
                                <h4>
                                    <asp:Label ID="lblBooksListed" runat="server" Text="0"></asp:Label>
                                </h4>
                                <p>Books Listed</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card border-warning">
                            <div class="card-body">
                                <h3 class="text-warning">♻️</h3>
                                <h4>
                                    <asp:Label ID="lblBooksNotReturned" runat="server" Text="0"></asp:Label>
                                </h4>
                                <p>Books Not Returned Yet</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card border-primary">
                            <div class="card-body">
                                <h3 class="text-primary">📖</h3>
                                <h4>
                                    <asp:Label ID="lblTotalIssuedBooks" runat="server" Text="0"></asp:Label>
                                </h4>
                                <p>Total Issued Books</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-4">
                </div>
            </div>
        </main>
        <!-- <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
            style="fill: rgb(37, 160, 0);transform: ;msFilter:;">
            <path
                d="M6.012 18H21V4a2 2 0 0 0-2-2H6c-1.206 0-3 .799-3 3v14c0 2.201 1.794 3 3 3h15v-2H6.012C5.55 19.988 5 19.805 5 19s.55-.988 1.012-1zM8 6h9v2H8V6z">
            </path>
        </svg>

        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
            style="fill: rgba(0, 0, 0, 1);transform: ;msFilter:;">
            <path
                d="m21.224 15.543-.813-1.464-1.748.972.812 1.461c.048.085.082.173.104.264a1.024 1.024 0 0 1-.014.5.988.988 0 0 1-.104.235 1 1 0 0 1-.347.352.978.978 0 0 1-.513.137H14v-2l-4 3 4 3v-2h4.601c.278 0 .552-.037.811-.109a2.948 2.948 0 0 0 1.319-.776c.178-.179.332-.38.456-.593a2.992 2.992 0 0 0 .336-2.215 3.163 3.163 0 0 0-.299-.764zM5.862 11.039l-2.31 4.62a3.06 3.06 0 0 0-.261.755 2.997 2.997 0 0 0 .851 2.735c.178.174.376.326.595.453A3.022 3.022 0 0 0 6.236 20H8v-2H6.236a1.016 1.016 0 0 1-.5-.13.974.974 0 0 1-.353-.349 1 1 0 0 1-.149-.468.933.933 0 0 1 .018-.245c.018-.087.048-.173.089-.256l2.256-4.512 1.599.923L8.598 8 4 9.964l1.862 1.075zm12.736 1.925L19.196 8l-1.638.945-2.843-5.117a2.95 2.95 0 0 0-1.913-1.459 3.227 3.227 0 0 0-.772-.083 3.003 3.003 0 0 0-1.498.433A2.967 2.967 0 0 0 9.41 3.944l-.732 1.464 1.789.895.732-1.465c.045-.09.101-.171.166-.242a.933.933 0 0 1 .443-.27 1.053 1.053 0 0 1 .53-.011.963.963 0 0 1 .63.485l2.858 5.146L14 11l4.598 1.964z">
            </path>
        </svg> -->
    </form>
</body>

</html>
