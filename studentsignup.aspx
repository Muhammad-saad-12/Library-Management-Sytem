<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignupPage.aspx.cs" Inherits="LoginPage.SignupPage" %>

    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Signup</title>
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

        .signup {
            position: relative;
            z-index: 10;
            width: 600px;
            padding: 50px 20px;
            background-color: transparent;
            backdrop-filter: blur(5px);
            text-align: center;
            border: 1px solid grey;
            border-radius: 20px;
        }

        .heading {
            font-size: 2em;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px 10px;
            text-align: center;
        }

        /*    .required-container{
        width:100%;
        display:flex;
        justify-content:space-between;
    }*/
        .error {
            position: relative;
        }

        .required:nth-child(1) {
            position: absolute;
            top: 0;
            right: 50%;
        }

        .required:nth-child(2) {
            position: absolute;
            top: 0;
            right: 0;
        }

        .last-required:nth-child(1) {
            position: absolute;
            top: -15px;
            right: 50%;
        }

        .last-required:nth-child(2) {
            position: absolute;
            top: -15px;
            right: 0;
        }


        .input {
            width: 90%;
            height: 40px;
            border-radius: 20px;
            border: 1px solid grey;
            background-color: transparent;
            padding: 0 20px;
        }

        .input::placeholder {
            color: white;
        }

        .gender {
            width: 105%;
            height: 40px;
            border-radius: 20px;
            border: 1px solid grey;
            /*        background-color: #d35800;*/
            background-color: transparent;
            color: white;
            padding: 0 10px;
        }

        .gender option {
            background-color: white;
            color: black;
        }

        .btn {
            width: 80%;
            height: 40px;
            border-radius: 20px;
            border: none;
            background-color: #d35800;
            cursor: pointer;
        }

        .btn:hover {
            opacity: 0.9;
        }

        .auto-style1 {
            height: 66px;
        }
    </style>

    <body>
        <form id="form1" runat="server">
            <div class="signup">
                <h2 class="heading">Signup</h2>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox Class="input" ID="txtFirstName" runat="server" placeholder="First Name" />
                        </td>
                        <td>
                            <asp:TextBox Class="input" ID="txtLastName" runat="server" placeholder="Last Name"  />
                        </td>
                    </tr>
                    <tr class="required-container">
                        <td class="error" colspan="2">

                            <div class="required">
                                <asp:RequiredFieldValidator ControlToValidate="txtFirstName" ForeColor="Red"
                                    runat="server" ErrorMessage="*Required" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="required">
                                <asp:RequiredFieldValidator ControlToValidate="txtLastName" ForeColor="Red"
                                    runat="server" ErrorMessage="*Required" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                        </td>

                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox Class="input" ID="txtEmail" runat="server" placeholder="Email"
                                TextMode="Email" />
                        </td>
                        <td>
                            <asp:DropDownList Class="gender" ID="ddlGender" runat="server">
                                <asp:ListItem Text="Gender" Value="" />
                                <asp:ListItem Text="Male" Value="Male" />
                                <asp:ListItem Text="Female" Value="Female" />
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="error">
                            <div class="required">
                                <asp:RequiredFieldValidator ControlToValidate="txtEmail" ForeColor="Red" runat="server"
                                    ErrorMessage="*Required" Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                            <div class="required">
                                <asp:RequiredFieldValidator ControlToValidate="ddlGender" InitialValue="Gender"
                                    ForeColor="Red" runat="server" ErrorMessage="*Required" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox Class="input" ID="txtAddress" runat="server" placeholder="Address" />
                        </td>
                        <td>
                            <asp:TextBox Class="input" ID="txtUsername" runat="server" placeholder="Username" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="error">
                            <div class="required">
                                <asp:RequiredFieldValidator ControlToValidate="txtAddress" ForeColor="Red"
                                    runat="server" ErrorMessage="*Required" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="required">
                                <asp:RequiredFieldValidator ControlToValidate="txtUsername" ForeColor="Red"
                                    runat="server" ErrorMessage="*Required" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox Class="input" ID="txtPassword" runat="server" TextMode="Password"
                                placeholder="Password" />
                        </td>
                        <td class="auto-style1">
                            <asp:TextBox Class="input" ID="txtConfirmPassword" runat="server" TextMode="Password"
                                placeholder="Confirm Password" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="error">
                            <div class="last-required">
                                <asp:RequiredFieldValidator ControlToValidate="txtPassword" ForeColor="Red"
                                    runat="server" ErrorMessage="*Required" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="last-required">

                                <asp:RequiredFieldValidator ControlToValidate="txtConfirmPassword" ForeColor="Red"
                                    runat="server" ErrorMessage="*Required" Display="Dynamic">
                                </asp:RequiredFieldValidator>
                            </div>
                            <asp:CompareValidator ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword"
                                ForeColor="Red" runat="server" ErrorMessage="Passwords do not match" Display="Dynamic">
                            </asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button Class="btn" ID="btnSignup" runat="server" Text="Signup"
                                OnClick="btnSignup_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>

    </html>
