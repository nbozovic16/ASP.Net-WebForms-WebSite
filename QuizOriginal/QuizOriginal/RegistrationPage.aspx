<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="QuizOriginal.RegistrationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Registration web page</title>

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

        .emptybox{
            padding-top: 80px;
            padding-left: 250px;
        }

        .box{
            padding-top: 5px;
            padding-left: 250px;
            padding-right: 750px;
        }

        .formbox
        {
            padding-left: 10px;
            padding-right: 10px;
            border-bottom: 2px solid black;
            border-right: 7px solid black;
            border-left:2px solid black;
            border-bottom-right-radius: 18px;
            background-color: darkviolet;
            color: black;
            height: 360px;
            width: 366px;
        }
        .formheader{
            border-top: 7px solid black;
            border-right: 7px solid black;
            border-top-left-radius: 18px;
            border-left: 2px solid black;
            border-bottom: 1px solid black;
            width: 366px;
            padding-top: 0px;
            background-color: grey;
        }
        .h3text{
            padding-left: 10px;
        }
        footer{
            padding-top: 30px;
        }
        
    </style>

    <!-- CSS -->

</head>
<body>
    <form id="form1" runat="server">
      <div>
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
                        <li><a href="QuizPage.aspx">Quiz</a></li>
                        <li><a href="LeaderbordPage.aspx">Leaderbord</a></li>
                        <li style="float:right"><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <li style="float:right"><a class="active" href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
                    </ul>
                </div>
            </div>
        </div>
          <div class="emptybox"></div>
          
           <!-- Registration -->
        <div class="box">
            <div class="formheader"><h3 class="h3text">New user</h3></div>
            <div class="formbox">
                
                <br />
                <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" Class="form-control" placeholder="Username"></asp:TextBox>
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" Class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblConfirmPassword" runat="server" Text="ConfirmPassword"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" Class="form-control" placeholder="ConfirmPassword" TextMode="Password"></asp:TextBox>
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Name"></asp:TextBox>
                <asp:Label ID="lblEmail" runat="server" Text="E-mail"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="E-mail" TextMode="Email"></asp:TextBox>
                <br />
                <asp:Button ID="btnRegisterNow" runat="server" Text="Register now" OnClick="btnRegisterNow_Click" /> <asp:Label Class="lblMessages" ID="lblMessages" runat="server" style="margin-left: 0px; margin-right: 0px" Width="203px" Font-Size="Large" BorderStyle="None" EnableTheming="True"></asp:Label>
                
                
                
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                
                
            </div>
        </div>
       <!-- Registration -->

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
