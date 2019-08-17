<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="QuizOriginal.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Home web page</title>

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
          border-top: 5px solid black;
          border-bottom: 5px solid black;
          
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
            padding-top: 100px;
        }

        .imagebox{
            padding-top: 400px;
            
            background-image: url(images/backgroundHD.png);
            background-size: 100% 400px;
            background-repeat: no-repeat;

            border-bottom: 5px solid black;
            border-top: 5px solid black;
        }

        .footer{
            padding-top: 15px;
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
                        <li><a class="active" href="HomePage.aspx"><span class="glyphicon glyphicon-home"></span> Home</a></li>
                        <li><a href="QuizPage.aspx">Quiz</a></li>
                        <li><a href="LeaderbordPage.aspx">Leaderbord</a></li>
                        <li style="float:right"><a href="LoginPage.aspx"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        <li style="float:right"><a class="active" href="RegistrationPage.aspx"><span class="glyphicon glyphicon-user"></span> Registration</a></li>
                    </ul>
                </div>
            </div>
        </div>
         <div class="emptybox"></div> 
         <div class="imagebox"></div>
         <div class="about">
           <center>
             <h4>About quiz</h4>
                <p>Quiz is based on C sharp interview questios. It's a game to test your knowledge.
                   Quiz is played by filling in the answer box or checking the correct answer.</p>
            </center>
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
