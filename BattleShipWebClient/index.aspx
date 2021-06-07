<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="BattleShipWebClient.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Battleship</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .roundedBorder {
            border-radius: 25px;
            padding:10px;
            border: 0px;
            box-shadow:white 1px 1px;
            margin-top:40%;
            width:100px;
        }
    </style>

</head>
<body style="background-image:url('Images/home_background.jpg'); background-repeat:no-repeat;background-size:cover;">
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
                <center>
                    <img src="Images/battleship_banner.png" width="500" height="150" style="margin-top:50%;"/>
                </center>
                
            </div>
            <div class="col-md-4">
                
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <asp:Panel ID="scorePanel" runat="server">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="lblWinnder" runat="server" Font-Bold="True" Font-Names="ROG Fonts" ForeColor="White"></asp:Label> <asp:Label ID="Label1" runat="server" Text=" Won the Game!" Font-Bold="True" ForeColor="#FFFFCC"></asp:Label>
                        </div>
                    </div>
                </asp:Panel>
            </div>
            <div class="col-md-4">
                <center>
                <asp:Button ID="btnPlay" runat="server" Text="Play" Font-Bold="True" Font-Names="ROG Fonts" CssClass="btn btn-success roundedBorder" OnClick="btnPlay_Click" />
                    </center>
            </div>
            <div class="col-md-4"></div>
        </div>
        </div>
        
    </form>
</body>
</html>
