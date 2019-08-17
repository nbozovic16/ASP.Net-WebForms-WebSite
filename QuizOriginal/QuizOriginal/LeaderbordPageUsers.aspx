<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeaderbordPageUsers.aspx.cs" Inherits="QuizOriginal.LeaderbordPageGuests" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Leaderbord web page</title>

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

        .empty{
            padding-top: 110px;
        }
        .empty2
        {
            padding-top: 100px;
        }

        .block-container
        {
            display: flex;
            border-top: 5px solid black;
            border-bottom: 5px solid black;
        }

        .scores{
            float: left;
            padding-top: 20px;
            padding-bottom: 20px;
            padding-left: 220px;
        }
        .box-scores
        {
            border-top: 3px solid black;
            border-bottom: 3px solid black;
            border-left: 3px solid black;
            border-right: 3px solid black;
        }

        .post-comments{
            float: left;
            padding-top: 15px;
            padding-left: 300px;
            padding-right: 200px;
            padding-bottom: 30px;
        }

        .commnets{
           padding-top: 15px;
           padding-left: 100px;
           

        }
        .comment-box
        {
           padding-left: 200px;
           padding-right: 190px;
        }
        
        .footer{
            padding-top: 34px;
        }

        .pscores{
            padding-top: 10px;
        }
        .tag
        {
            padding-left: 30px;
            padding-bottom: 10px;
            border-top: 1px solid black;
            border-bottom: 1px solid black;
            border-left: 1px solid black;
            border-right: 1px solid black;
            background-color: black;
            color: white;
        }

        .lblname
        {
            
            padding-right: 10px;
            
        }
        .namebox
        {
            padding-bottom: 10px;
            padding-left: 30px;
            display: flex;
        }
        /*--------------------------*/
        .lblcomment
        {
            
            padding-right: 76px;
            
        }
        .commentbox
        {
            padding-left: 30px;
            display: flex;
        }

        .comment-server
        {
           padding-top: 6px;
           padding-left: 5px;
        }
        

        .name-server
        {
            padding-top: 6px;
            padding-left: 1px;
        }
        .comment-box-inside
        {

        }
        .commnet-name-box
        {
            padding-top: 0px;
            border-top: 3px solid black;
            border-bottom: 3px solid black;
            border-left: 3px solid black;
            border-right: 3px solid black;
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
                        <li><a href="QuizPage.aspx">Quiz</a></li>
                        <li><a class="active" href="LeaderbordPage.aspx">Leaderbord</a></li>
                        <li style="float:right">
                            <asp:Label ID="lblSuccess" runat="server" class="text-success"></asp:Label>
                            <asp:Button ID="btnLogOut" runat="server" class="btn btn-default navbar-btn" Text="Log out" OnClick="btnLogOut_Click" />
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <class="allbox">
            <div class="empty">
                
            </div>
            <div class="block-container">
                <div class="scores">
                    <div class="box-scores">
                        <h4>Scores: </h4>
                        <asp:GridView ID="GridScores" runat="server" Width="289px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    </div>
                </div>
                <div class="post-comments">
                    <h4>Add new commnet: </h4>
                        <br />
                        <br />
                    <asp:Label ID="lblCommnet" runat="server" Text="Comment : "></asp:Label>
                    <asp:TextBox ID="txtCommnet" runat="server" Height="92px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                        <br />
                        <br />
                    <asp:Button ID="btnPost" runat="server" OnClick="btnPost_Click" Text="Post" Width="236px" />
                        <br />
                </div>
            </div>
            <div class="comment">
               <div class="comment-box">
                   <div class="comment-box-inside">
                        <div class="empty2"></div>
                <div class="tag">
                    <h3>Commnets</h3>   
                </div>
                <div class="commnet-name-box">
                    <td>
                      <asp:Repeater ID="Repeater1" runat="server">
                          <ItemTemplate>
                               <div class="namebox">
                                 <div class="lblname"><h5>Username:</h5></div>
                                  <div class="name-server" runat="server" innerText='<%# Eval("Name") %>'></div>
                              </div>
                             
                              <div class="commentbox">
                                 <div class="lblcomment"><h5>Comment:</h5></div>
                                  <div class="box1">
                                      <div class="box1-1">
                                          <div class="comment-server" runat="server" innerText='<%# Eval("Comment") %>'>

                                          </div>
                                      </div>
                                  </div>
                                    <hr />
                               </div>
                              
                           </ItemTemplate>
                       </asp:Repeater>
                    </td>
                 </div>
              </div>
            </div>
         </div>
        </form>
  
     <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Footer -->
         <footer>
             <div class="footer">
                <center>
                    <p>&copy; 2019  <span style="color:red">C#</span> quiz</p>
                </center>
             </div>
         </footer>
         <!-- Footer -->
  

    
</body>
</html>
