<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Library_Management_System.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Library Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
   <style>
       .card {
    padding: 20px;
    box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease-in-out;
}

.card:hover {
    transform: scale(1.05);
}

.navbar {
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

       </style>
</head>
<body>
    <form id="form2" runat="server">
        <!-- Navbar -->
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

        <!-- Dashboard Section -->
        <div class="container mt-4">
            <h2 class="mb-4">ADMIN DASHBOARD</h2>
            <div class="row">
                <div class="col-md-3">
                    <div class="card text-center border-success">
                        <div class="card-body">
                            <i class="fas fa-book fa-3x text-success"></i>
                            <h4>11</h4>
                            <p>Books Listed</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card text-center border-warning">
                        <div class="card-body">
                            <i class="fas fa-recycle fa-3x text-warning"></i>
                            <h4>3</h4>
                            <p>Books Not Returned Yet</p>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card text-center border-danger">
                        <div class="card-body">
                            <i class="fas fa-users fa-3x text-danger"></i>
                            <h4>10</h4>
                            <p>Registered Users</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap & FontAwesome -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>

