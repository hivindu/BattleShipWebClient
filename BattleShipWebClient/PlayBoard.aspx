<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlayBoard.aspx.cs" Inherits="BattleShipWebClient.PlayBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Battleship</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .space {
        margin:2px;
        margin-right:2px;
        }
    </style>
    <script type="text/javascript">
        function invalidIndex() {
            alert("ERROR! You must Keep 5 POINTS of distence between 1st node and 2nd point");
        }
    </script>
</head>
<body style="background-image:url('Images/playBoard_background.jpg'); background-repeat:no-repeat;background-size:cover;">
    
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" EnablePartialRendering="true" runat="server">

        </asp:ScriptManager>
        <div class="container">
            <div class="row">
                <div class="col-md-8" style="opacity:0.75;">
                     <img src="Images/battleship_banner.png" width="200" height="100"/>
                </div>
                
            </div>
            
            <div class="row">
                <div class="col-md-5 pull-left" style="background-image:url('Images/divback.jpg');background-size:cover;">
                   
                            <table>
                        <tr>
                            <th></th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>A</td>
                            <td> 
                                <asp:Button ID="A1" runat="server" Text="A1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A2" runat="server" Text="A2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A3" runat="server" Text="A3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A4" runat="server" Text="A4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A5" runat="server" Text="A5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A6" runat="server" Text="A6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A7" runat="server" Text="A7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A8" runat="server" Text="A8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A9" runat="server" Text="A9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="A10" runat="server" Text="A10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>
                                <asp:Button ID="B1" runat="server" Text="B1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B2" runat="server" Text="B2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B3" runat="server" Text="B3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B4" runat="server" Text="B4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B5" runat="server" Text="B5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B6" runat="server" Text="B6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B7" runat="server" Text="B7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B8" runat="server" Text="B8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B9" runat="server" Text="B9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="B10" runat="server" Text="B10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>C</td>
                            <td>
                                <asp:Button ID="C1" runat="server" Text="C1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C2" runat="server" Text="C2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C3" runat="server" Text="C3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C4" runat="server" Text="C4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C5" runat="server" Text="C5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C6" runat="server" Text="C6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C7" runat="server" Text="C7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C8" runat="server" Text="C8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C9" runat="server" Text="C9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="C10" runat="server" Text="C10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>D</td>
                            <td>
                                <asp:Button ID="D1" runat="server" Text="D1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D2" runat="server" Text="D2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D3" runat="server" Text="D3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D4" runat="server" Text="D4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D5" runat="server" Text="D5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D6" runat="server" Text="D6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D7" runat="server" Text="D7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D8" runat="server" Text="D8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D9" runat="server" Text="D9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="D10" runat="server" Text="D10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>E</td>
                            <td>
                                <asp:Button ID="E1" runat="server" Text="E1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E2" runat="server" Text="E2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E3" runat="server" Text="E3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E4" runat="server" Text="E4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E5" runat="server" Text="E5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E6" runat="server" Text="E6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E7" runat="server" Text="E7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E8" runat="server" Text="E8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E9" runat="server" Text="E9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="E10" runat="server" Text="E10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>F</td>
                            <td>
                                <asp:Button ID="F1" runat="server" Text="F1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F2" runat="server" Text="F2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F3" runat="server" Text="F3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F4" runat="server" Text="F4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F5" runat="server" Text="F5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F6" runat="server" Text="F6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F7" runat="server" Text="F7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F8" runat="server" Text="F8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F9" runat="server" Text="F9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="F10" runat="server" Text="F10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>G</td>
                            <td>
                                <asp:Button ID="G1" runat="server" Text="G1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G2" runat="server" Text="G2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G3" runat="server" Text="G3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G4" runat="server" Text="G4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G5" runat="server" Text="G5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G6" runat="server" Text="G6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G7" runat="server" Text="G7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G8" runat="server" Text="G8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G9" runat="server" Text="G9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="G10" runat="server" Text="G10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>H</td>
                            <td>
                                <asp:Button ID="H1" runat="server" Text="H1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H2" runat="server" Text="H2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H3" runat="server" Text="H3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H4" runat="server" Text="H4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H5" runat="server" Text="H5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H6" runat="server" Text="H6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H7" runat="server" Text="H7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H8" runat="server" Text="H8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H9" runat="server" Text="H9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="H10" runat="server" Text="H10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>I</td>
                            <td>
                                <asp:Button ID="I1" runat="server" Text="I1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I2" runat="server" Text="I2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I3" runat="server" Text="I3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I4" runat="server" Text="I4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I5" runat="server" Text="I5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I6" runat="server" Text="I6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I7" runat="server" Text="I7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I8" runat="server" Text="I8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I9" runat="server" Text="I9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="I10" runat="server" Text="I10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>J</td>
                            <td>
                                <asp:Button ID="J1" runat="server" Text="J1" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J2" runat="server" Text="J2" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J3" runat="server" Text="J3" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J4" runat="server" Text="J4" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J5" runat="server" Text="J5" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J6" runat="server" Text="J6" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J7" runat="server" Text="J7" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J8" runat="server" Text="J8" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J9" runat="server" Text="J9" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="J10" runat="server" Text="J10" class ="btn btn-block" OnClick="A1_Click"/>
                            </td>
                        </tr>
                    </table>
                        
                    
                </div>
                <div class="col-md-2"></div>
                <asp:Panel ID="enimy_panel" runat="server">
                <div class="col-md-5 pull-left" id="enimy" style="background-image:url('Images/divback.jpg');background-size:cover;">
                    <table>
                       <tr>
                            <th></th>
                            <th>1</th>
                            <th>2</th>
                            <th>3</th>
                            <th>4</th>
                            <th>5</th>
                            <th>6</th>
                            <th>7</th>
                            <th>8</th>
                            <th>9</th>
                            <th>10</th>
                           <th></th>
                        </tr>
                        <tr>
                            <td>A</td>
                            <td>
                                <asp:Button ID="AA1" runat="server" Text="A1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA2" runat="server" Text="A2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA3" runat="server" Text="A3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA4" runat="server" Text="A4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA5" runat="server" Text="A5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA6" runat="server" Text="A6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA7" runat="server" Text="A7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA8" runat="server" Text="A8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA9" runat="server" Text="A9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="AA10" runat="server" Text="A10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>B</td>
                            <td>
                                <asp:Button ID="BB1" runat="server" Text="B1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB2" runat="server" Text="B2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB3" runat="server" Text="B3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB4" runat="server" Text="B4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB5" runat="server" Text="B5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB6" runat="server" Text="B6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB7" runat="server" Text="B7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB8" runat="server" Text="B8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB9" runat="server" Text="B9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="BB10" runat="server" Text="B10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>C</td>
                            <td>
                                <asp:Button ID="CC1" runat="server" Text="C1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC2" runat="server" Text="C2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC3" runat="server" Text="C3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC4" runat="server" Text="C4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC5" runat="server" Text="C5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC6" runat="server" Text="C6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC7" runat="server" Text="C7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC8" runat="server" Text="C8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC9" runat="server" Text="C9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="CC10" runat="server" Text="C10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>D</td>
                            <td>
                                <asp:Button ID="DD1" runat="server" Text="D1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD2" runat="server" Text="D2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD3" runat="server" Text="D3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD4" runat="server" Text="D4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD5" runat="server" Text="D5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD6" runat="server" Text="D6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD7" runat="server" Text="D7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD8" runat="server" Text="D8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD9" runat="server" Text="D9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="DD10" runat="server" Text="D10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>E</td>
                            <td>
                                <asp:Button ID="EE1" runat="server" Text="E1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE2" runat="server" Text="E2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE3" runat="server" Text="E3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE4" runat="server" Text="E4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE5" runat="server" Text="E5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE6" runat="server" Text="E6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE7" runat="server" Text="E7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE8" runat="server" Text="E8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE9" runat="server" Text="E9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="EE10" runat="server" Text="E10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>F</td>
                            <td>
                                <asp:Button ID="FF1" runat="server" Text="F1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF2" runat="server" Text="F2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF3" runat="server" Text="F3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF4" runat="server" Text="F4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF5" runat="server" Text="F5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF6" runat="server" Text="F6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF7" runat="server" Text="F7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF8" runat="server" Text="F8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF9" runat="server" Text="F9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="FF10" runat="server" Text="F10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>G</td>
                            <td>
                                <asp:Button ID="GG1" runat="server" Text="G1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG2" runat="server" Text="G2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG3" runat="server" Text="G3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG4" runat="server" Text="G4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG5" runat="server" Text="G5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG6" runat="server" Text="G6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG7" runat="server" Text="G7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG8" runat="server" Text="G8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG9" runat="server" Text="G9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="GG10" runat="server" Text="G10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>H</td>
                            <td>
                                <asp:Button ID="HH1" runat="server" Text="H1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH2" runat="server" Text="H2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH3" runat="server" Text="H3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH4" runat="server" Text="H4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH5" runat="server" Text="H5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH6" runat="server" Text="H6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH7" runat="server" Text="H7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH8" runat="server" Text="H8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH9" runat="server" Text="H9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="HH10" runat="server" Text="H10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>I</td>
                            <td>
                                <asp:Button ID="II1" runat="server" Text="I1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II2" runat="server" Text="I2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II3" runat="server" Text="I3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II4" runat="server" Text="I4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II5" runat="server" Text="I5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II6" runat="server" Text="I6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II7" runat="server" Text="I7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II8" runat="server" Text="I8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II9" runat="server" Text="I9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="II10" runat="server" Text="I10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                        <tr>
                            <td>J</td>
                            <td>
                                <asp:Button ID="JJ1" runat="server" Text="J1" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ2" runat="server" Text="J2" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ3" runat="server" Text="J3" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ4" runat="server" Text="J4" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ5" runat="server" Text="J5" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ6" runat="server" Text="J6" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ7" runat="server" Text="J7" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ8" runat="server" Text="J8" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ9" runat="server" Text="J9" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                            <td>
                                <asp:Button ID="JJ10" runat="server" Text="J10" class ="btn btn-block" OnClick="AA1_Click"/>
                            </td>
                        </tr>
                    </table>
                </div>
                    </asp:Panel>
            </div>
            <br />
                <div class="row">
                <div class="col-md-5" style="background-color:white;padding:20px;">
                    <asp:Label ID="Label1" runat="server" Text="Score"></asp:Label>: <asp:Label ID="lblScore" runat="server" Text="0"></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text="Shot Was"></asp:Label>: <asp:Label ID="lblShot" runat="server" Text="-"></asp:Label><br />
                    <asp:Label ID="Label4" runat="server" Text="Hint"></asp:Label>: <asp:Label ID="lblhint" runat="server" Text="-" Font-Bold="True" Font-Names="Rockwell Extra Bold" ForeColor="Red"></asp:Label>
                </div>
                <div class="col-md-2">

                </div>
                <div class="col-md-5" style="background-color:white; padding:20px;">
                    <asp:Label ID="Label2" runat="server" Text="Score"></asp:Label>: <asp:Label ID="lblScore1" runat="server" Text="0"></asp:Label>
                </div>
            </div>
            
            
        </div>
    </form>
</body>
</html>
