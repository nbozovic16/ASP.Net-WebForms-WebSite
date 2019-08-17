<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="QuizOriginal.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Login web page</title>

    <!-- Bootstrap -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <!-- Bootstrap -->

   
    

    <!-- CSS -->
    <style>

       .navbar-default
       {
          border-bottom: 5px solid black;
          border-top: 5px solid black;
          
          
          
       }
        
       ul {
          list-style-type: none;
          margin: 0;
          padding: 0;
          overflow: hidden;
          background-color: #f8f8f8;
          border-color: #e7e7e7;
          
          padding-left: 50px;
          padding-right: 75px;
          
        }

        li {
          float: left;
          
        }

        li a {
          
          display: block;
          color: black;
          font-family: 'Arial Rounded MT';
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;

        }

        li a:hover:not(.active) {
          background-color: black;
          opacity: 0.4;
        }

        .Login{
          padding-top: 100px;
          padding-left: 150px;
        }
        .form{
            padding-left: 150px;
            padding-top: 50px;
            padding-bottom: 50px;

            border-top: 1px solid silver;
            border-bottom: 1px solid silver;
            color: black;
        }
        }
        footer{
            padding-top: 100px;
        }

    </style>

    <!-- CSS -->

</head>
<body>
    <form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle naviagtion</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Home.aspx"><span><img src="images/Logo.png" height="75" /></span></a>
                 </div>
                <div class="navbar-collapse collapse">
                    <ul>
                        <li><a href="HomePage.aspx"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a class="active" href="QuizPage.aspx">Quiz</a></li>
                        <li><a href="LeaderbordPage.aspx">Leaderbord</a></li>
                        <li style="float:right"><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <li style="float:right"><a href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
                    </ul>
                </div>
            </div>
        </div>
            <div class="Login">
                <h2>Login</h2>
            </div>
        <div class="formBox">
            <div class="form">
                <asp:Label ID="lblUsername" runat="server" Text="Usernmae"></asp:Label>
                    <br />
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" Class="form-control" Width="300px"></asp:TextBox>
                    <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                    <br />
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" Class="form-control" Width="300px" TextMode="Password"></asp:TextBox>
                    <br />
                    <br />
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="85px" OnClick="btnLogin_Click" />
                &nbsp;<br />
                <br />
                <asp:Label ID="lblMessages" runat="server" Text=""></asp:Label>

             </div>
             <!-- Footer -->
         <footer>
             <div class="footer">
                <center>
                    <p>&copy; 2019 <span style="color:red">C#</span> quiz</p>
                </center>
             </div>
         </footer>
         <!-- Footer -->
        </div>
    </form>
  
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>


  

    
</body>
</html>
