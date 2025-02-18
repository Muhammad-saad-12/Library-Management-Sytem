<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPage.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<style type="text/css">
    * {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        color: white;
    }

    body {
    position: relative;
    
    background-image: url("https://png.pngtree.com/background/20230527/original/pngtree-large-library-with-wooden-bookshelves-and-wooden-floors-with-a-dark-picture-image_2760268.jpg");
    /*        background-image: url("https://media.istockphoto.com/id/1151849228/vector/library-book.jpg?s=170667a&w=0&k=20&c=WE2EVETpzclSEMf0TyjtjGlYfV2_CUJHKuzQAXfU2Aw=");*/
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

        body::after {
            position: absolute;
            top: 0;
            bottom: 0;
            content: "";
            background-color: black;
            width: 100%;
            height: 100%;
            opacity: 0.4;
        }
    .supercontainer {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: calc(100vh - 60px);
    }

    nav {
        position: relative;
        z-index: 10;
        display: flex;
        justify-content: flex-end;
        align-items:center;
/*        border: 2px solid;*/
        padding: 0px 20px;
        height:60px;

    }

    .adminbtn {
        padding: 12px 18px;
        border-radius: 20px;
border: none;
background-color: #d35800;
    }

        .adminbtn:hover {
            cursor: pointer;
            opacity: 0.9;
        }

        .adminbtn:active {
            opacity: 1;
        }

    .login {
        position: relative;
        z-index: 10;
        width: 350px;
        height: 400px;
        background-color: transparent;
        backdrop-filter: blur(5px);
        text-align: center;
        border: 1px solid grey;
        border-radius: 20px;
    }

    .icon {
        width: 100%;
        display: flex;
        justify-content: center;
        flex-direction: column;
        align-items: center;
        height: 100%;
    }

    .register {
        position: relative;
        bottom: 30px;
        font-size: 1.8em;
    }

    .input {
        box-sizing: border-box;
        height: 40px;
        width: 80%;
        border-radius: 20px;
        border: 1px solid grey;
        background-color: transparent;
        padding: 0 20px;
    }

        .input::placeholder {
            color: white;
        }

    .btn {
        position: relative;
        top: 15px;
        width: 70%;
        height: 40px;
        border-radius: 20px;
        border: none;
        background-color: #d35800;
    }

        .btn:hover {
            cursor: pointer;
            opacity: 0.9;
        }

        .btn:active {
            opacity: 1;
        }

    .show-password {
        cursor: pointer;
        color: white;
        text-decoration: underline;
        background: none;
        border: none;
        font-size: 12px;
    }

    .incorrect {
        display: flex;
        justify-content: flex-start;
        width: 80%;
        font-size: 0.8em;
        background-color:;
        position: relative;
        bottom: 8px;
        left: 10px;
    }

        .incorrect span {
            color: red;
            text-shadow: 1px 2px 1px black;
        }

    .signuplink {
        position: absolute;
        bottom: 40px;
    }
</style>
<script>
    function togglePassword() {
        var passwordField = document.getElementById("txtPassword");
        if (passwordField.type === "password") {
            passwordField.type = "text";
        } else {
            passwordField.type = "password";
        }
    }
</script>
<body>


       
    <form id="form1" runat="server">
        <nav>
        <asp:Button Class="adminbtn" ID="adminButton" runat="server" Text="Login as Admin" OnClick="adminButton_Click" />
        </nav>
        <div class="supercontainer">

            <div class="login">
                <div class="icon">
                    <h2 class="register">Login</h2>


                    <asp:TextBox Class="input" ID="txtFullName" runat="server" placeholder="User Name" /><br />

                    <%--<asp:TextBox Class="input" ID="txtEmail" runat="server" placeholder="Email" /><br />--%>

                    <asp:TextBox Class="input" ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" /><br />

                    <div class="incorrect"><span id="incorrect"></spa></div>


                    <button type="button" class="show-password" onclick="togglePassword()">Show Password</button>


                    <asp:Button Class="btn" ID="btnRegister" runat="server" Text="Login" OnClick="btnRegister_Click2" />
                    <a class="signuplink" href="SignupPage.aspx">Sign Up?</a>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
