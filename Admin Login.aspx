<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin login.aspx.cs" Inherits="LoginPage.Admin_login" %>

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
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
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
    .incorrect{
        display: flex;
        justify-content:flex-start;
        width: 80%;
        font-size: 0.8em;
        background-color: ;
        position: relative;
        bottom: 8px;
        left: 10px;
        
    }
    .incorrect span{
        color: red;
        text-shadow: 1px 2px 1px black;
    }
    .signuplink{
        position:absolute;
        bottom: 40px;
    }

    
</style>
<script>
    function togglePassword() {
        var passwordField = document.getElementById("apasswordtextbox");
        if (passwordField.type === "password") {
            passwordField.type = "text";
        } else {
            passwordField.type = "password";
        }
    }
</script>
<body>

    <form id="form1" runat="server">
        <div class="login">
            <div class="icon">
                <h2 class="register">Admin Login</h2>


                <asp:TextBox Class="input" ID="alogintextbox" runat="server" placeholder="User Name" /><br />

                <%--<asp:TextBox Class="input" ID="txtEmail" runat="server" placeholder="Email" /><br />--%>

                <asp:TextBox Class="input" ID="apasswordtextbox" runat="server" TextMode="Password" placeholder="Password" /><br />

                <div class="incorrect"><span ID="incorrect"></spa></div>


                <button type="button" class="show-password" onclick="togglePassword()">Show Password</button>


                <asp:Button Class="btn" ID="abtnRegister" runat="server" Text="Login" OnClick="abtnRegister_Click2" />
             
            </div>
        </div>
    </form>
</body>
</html>
