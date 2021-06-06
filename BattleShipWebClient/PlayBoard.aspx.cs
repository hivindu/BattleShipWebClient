using BattleShipWebClient.Controllers;
using BattleShipWebClient.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;


namespace BattleShipWebClient
{
    public partial class PlayBoard : System.Web.UI.Page
    {
        private Button[,] PlayerGrid;
        private Button[,] EnimiesGrid;
        private Ships ship;
        private Ships enemyShips;
        private Ships playerShips;
        private bool[,] ShipLocationPlayer;
        private bool[,] ShipLocationEnimy;
        private int[,] ValueGrid;
        private int count = 0;
        private int score = 0;
        private int Shis = 3;
        private int temp = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ship = new Ships();
                enemyShips = new Ships();
                PlayerGrid = new Button[10, 10];
                EnimiesGrid = new Button[10, 10];
                ShipLocationPlayer = new bool[10, 10];
                ShipLocationEnimy = new bool[10, 10];
                playerShips = new Ships();
                CreateEnemiesGrid();
                CreatePlayerGrid();
                lblhint.Text = "Please select 3 locations on your grid ( 2nd POINT MUST BE SELECT AFTER 5 POINTS FROM THE 1st POINT IN HORIZONTALLY OR VERTICALLY!)";
                enimy_panel.Visible = false;
                Session["EnimiesGrid"] = EnimiesGrid;
                Session["Player"] = PlayerGrid;
                Session["Ships"] = Shis;
                Session["Ship"] = ship;
                Session["EnemyShipsBool"] = ShipLocationEnimy;
                Session["EnemyShipSet"] = enemyShips;
                Session["PlayersShips"] = playerShips;
                Session["ShipLocationsPlayer"] = ShipLocationPlayer;
            }
            else {
                ShipLocationEnimy = (bool[,])Session["EnemyShipsBool"];
                playerShips = (Ships)Session["PlayersShips"];
                ship = (Ships)Session["Ship"];
                enemyShips = (Ships)Session["EnemyShipSet"];
                EnimiesGrid = (Button[,])Session["EnimiesGrid"];
                PlayerGrid = (Button[,])Session["Player"];
                ShipLocationPlayer = (bool[,])Session["ShipLocationsPlayer"];
                CreateEnemiesGrid();
                CreatePlayerGrid();
            }
            ValueGrid = new int[10, 10];
            GenerateValueGrid();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
           // not in use
        }

        protected void A1_Click(object sender, EventArgs e)
        {
            bool res = false;
            if (IsPostBack)
            {
                Shis = (int)Session["Ships"];
                if (Shis > 0)
                {
                    var button = (Button)sender;
                    button.Enabled = false;
                    button.BackColor = Color.Orange;

                    string id = button.ClientID;
                    switch (Shis)
                    {
                        case 3:
                            ship.Battleship = FindIndex(id,1); break;
                        case 2:
                            res =CheckDistence(id);
                            if (res != true)
                            {
                                Shis = 3;
                                button.Enabled = true;
                                button.BackColor = Color.White;
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "callinvalidIndex", "invalidIndex()", true);
                            }
                            else {
                                ship.Ship1 = FindIndex(id,1); 
                            }
                            break;
                        case 1:
                            ship.Ship2 = FindIndex(id,1); break;
                    }
                    Session["Ship"] = ship;
                    Shis--;
                    Session["Ships"] = Shis;
                }

                if (Shis == 0)
                {   
                    enimy_panel.Visible = true;
                    ship = BattleshipGameController.GeneratePlayerShips(ship);
                    playerShips = ship;
                    Session["PlayersShips"] = playerShips;
                    DisableButtons(ship);
                    ship = BattleshipGameController.GetEnemiesLocation();
                    enemyShips = ship;
                    Session["EnemyShipSet"] = enemyShips;
                    GenerateEnemyShips(ship);
                    lblhint.Text = "Click a button on enimis grid to start!";
                }
            }
            
        }

        protected void AA1_Click(object sender, EventArgs e)
        {
            var button = (Button)sender;
            button.Enabled = false;
            string clientId = button.ClientID;
            int[] positions = FindIndex(clientId, 0);
            int row = positions[0];
            int column = positions[1];
            int value = ValueGrid[row, column];
            bool results = false;

            ResponseBody res = BattleshipGameController.ShotOnEnemy(value, enemyShips);
            bool result = res.Hit;
            if (result != true)
            {
                EnimiesGrid[row, column].Enabled = false;
                EnimiesGrid[row, column].BackColor = Color.Blue;
                lblShot.Text = "MISS";
            }
            else {
                EnimiesGrid[row, column].Enabled = false;
                EnimiesGrid[row, column].BackColor = Color.Red;
                lblShot.Text = "HIT";
            }

            ResponseBody body = BattleshipGameController.ShotOnPlayer(playerShips);

            while (results != true)
            {
                results = shotOnPlayer(body);
            }

        }


        private void CreatePlayerGrid()
        {
            var buttonLetter = "";
            for (int r = 0; r < 10; r++)
            {
                for (int c = 0; c < 10; c++)
                {
                    switch (r)
                    {
                        case 0:
                            buttonLetter = "A"; break;
                        case 1:
                            buttonLetter = "B"; break;
                        case 2:
                            buttonLetter = "C"; break;
                        case 3:
                            buttonLetter = "D"; break;
                        case 4:
                            buttonLetter = "E"; break;
                        case 5:
                            buttonLetter = "F"; break;
                        case 6:
                            buttonLetter = "G"; break;
                        case 7:
                            buttonLetter = "H"; break;
                        case 8:
                            buttonLetter = "I"; break;
                        case 9:
                            buttonLetter = "J"; break;
                    }

                    buttonLetter += c + 1;
                    Button btn = FindControl(buttonLetter) as Button;

                    if (btn != null)
                    {
                        PlayerGrid[r, c] = btn;
                    }

                }
            }

        }

        //Generate Enimies button grid
        private void CreateEnemiesGrid()
        {
            var buttonLetter = "";
            for (int r = 0; r < 10; r++)
            {
                for (int c = 0; c < 10; c++)
                {
                    switch (r)
                    {
                        case 0:
                            buttonLetter = "AA"; break;
                        case 1:
                            buttonLetter = "BB"; break;
                        case 2:
                            buttonLetter = "CC"; break;
                        case 3:
                            buttonLetter = "DD"; break;
                        case 4:
                            buttonLetter = "EE"; break;
                        case 5:
                            buttonLetter = "FF"; break;
                        case 6:
                            buttonLetter = "GG"; break;
                        case 7:
                            buttonLetter = "HH"; break;
                        case 8:
                            buttonLetter = "II"; break;
                        case 9:
                            buttonLetter = "JJ"; break;
                    }

                    buttonLetter += c + 1;
                    Button btn = FindControl(buttonLetter) as Button;

                    if (btn != null)
                    {
                        EnimiesGrid[r, c] = btn;
                        Session["EnimiesGrid"] = EnimiesGrid;
                    }

                }
            }
        }

        private int[] FindIndex(string id, int type)
        {
            int[] values = new int[2];
            string col;
            if (type > 0)
            {
                for (int r = 0; r < 10; r++)
                {
                    for (int c = 0; c < 10; c++)
                    {
                        col = PlayerGrid[r, c].ClientID;
                        if (col == id)
                        {
                            values[0] = r;
                            values[1] = c;
                        }
                    }
                }
            }
            else {
                for (int r = 0; r < 10; r++)
                {
                    for (int c = 0; c < 10; c++)
                    {
                        col = EnimiesGrid[r, c].ClientID;
                        if (col == id)
                        {
                            values[0] = r;
                            values[1] = c;
                        }
                    }
                }
            }
            
            return values;
        }

        private bool CheckDistence(string id)
        {
            bool res = false;
            int[] battleShipIndexs = ship.Battleship;
            int row = battleShipIndexs[0];
            int column = battleShipIndexs[1];
            int rowCount = 0;
            int columnCount = 0;
            string col;
            for (int r = 0; r < 10; r++)
            {
                for (int c = 0; c < 10; c++)
                {
                    col = PlayerGrid[r, c].ClientID;
                    if (col == id)
                    {
                        
                        if ((row + 1) > (r + 1))
                        {
                            rowCount = (row + 1) - (r + 1);
                        }
                        else {
                            rowCount = (r + 1) - (row + 1);
                        }

                        if ((column + 1) > (c + 1))
                        {
                            columnCount = column - c;
                        }
                        else {
                            columnCount = (c+1) - (column+1);
                        }


                        if (row == r && columnCount < 4)
                        {
                            res = false;
                        }
                        else 
                        {
                            if (column == c && rowCount < 4)
                            {
                                res = false;
                            }
                            else
                            {
                                res = true;
                            }
                        }
                    }
                }
            }
            return res;
        }

        private void DisableButtons(Ships ships)
        {
            ship = ships;
            ShipLocationPlayer = (bool[,])Session["ShipLocationsPlayer"];
            int[] battleShipPossitions = ship.Battleship;
            int[] distroyerShip1 = ship.Ship1;
            int[] distroyerShip2 = ship.Ship2;
            int column =0, row=0;

            for (int i = 0; i < 9; i += 2)
            {
                temp = i + 1;
                row = battleShipPossitions[i];
                column = battleShipPossitions[temp];
                PlayerGrid[row, column].Enabled = false;
                PlayerGrid[row, column].BackColor = Color.Orange;
                ShipLocationPlayer[row, column] = true;
            }

            for (int c=0;c<4;c+=2)
            {
                temp = c + 1;
                row = distroyerShip1[c];
                column = distroyerShip1[temp];
                PlayerGrid[row, column].Enabled = false;
                PlayerGrid[row, column].BackColor = Color.Orange;
                ShipLocationPlayer[row, column] = true;
                row = distroyerShip2[c];
                column = distroyerShip2[temp];
                PlayerGrid[row, column].Enabled = false;
                PlayerGrid[row, column].BackColor = Color.Orange;
                ShipLocationPlayer[row, column] = true;
            }

            Session["Player"] = PlayerGrid;
            Session["ShipLocationsPlayer"] = ShipLocationPlayer;
        }

        private void GenerateEnemyShips(Ships ships)
        {
            
            ship = ships;
            int[] battleShipPossitions = ship.Battleship;
            int[] distroyerShip1 = ship.Ship1;
            int[] distroyerShip2 = ship.Ship2;
            int column = 0, row = 0;

            for (int i = 0; i < 9; i += 2)
            {
                temp = i + 1;
                row = battleShipPossitions[i];
                column = battleShipPossitions[temp];
                ShipLocationEnimy[row, column] = true;
            }

            for (int c = 0; c < 4; c += 2)
            {
                temp = c + 1;
                row = distroyerShip1[c];
                column = distroyerShip1[temp];
                ShipLocationEnimy[row, column] = true;

                row = distroyerShip2[c];
                column = distroyerShip2[temp];
                ShipLocationEnimy[row, column] = true;
            }

            Session["EnemyShipsBool"] = ShipLocationEnimy;
        }

        private void GenerateValueGrid()
        {
            for (int r = 0; r < 10; r++)
            {
                for (int c = 0; c < 10; c++)
                {
                    count++;
                    ValueGrid[r, c] = count;
                }
            }
        }

        private bool shotOnPlayer(ResponseBody body) 
        {
            ResponseBody result = body;
            int value = result.SelectedValue;
            int returnValue;
            playerShips = (Ships)Session["PlayersShips"];
            int[] battleShip = playerShips.Battleship;
            int[] distroyerShip1 = playerShips.Ship1;
            int[] distroyerShip2 = playerShips.Ship2;
            bool location = false;
            int column = 0, row = 0;
            bool available = false;

            for (int r=0; r<10; r++)
            {
                for (int c = 0; c < 10; c++)
                {
                    returnValue= ValueGrid[r, c];

                    if (returnValue == value)
                    {
                       location= ShipLocationPlayer[r, c];

                        for (int i = 0; i < 9; i += 2)
                        {
                            temp = i + 1;
                            row = battleShip[temp];
                            column = battleShip[i];
                            if (r == row && c == column)
                            {
                                available = true;
                            }
                        }

                        if (available != true)
                        {
                            for (int a = 0; a < 4; a += 2)
                            {
                                temp = a + 1;
                                row = distroyerShip1[a];
                                column = distroyerShip1[temp];
                                if (row == r && column == c)
                                {
                                    available = true;
                                    break;
                                }
                                row = distroyerShip2[a];
                                column = distroyerShip2[temp];
                                if (row == r && column == c)
                                {
                                    available = true;
                                    break;
                                }
                                else
                                {
                                    available = false;
                                }
                            }
                        }

                        if (available)
                        {
                            if (location = !true)
                            {
                                location = false;
                            }
                            else
                            {
                                PlayerGrid[c, r].Enabled = false;
                                PlayerGrid[c, r].BackColor = Color.Red;
                                ShipLocationPlayer[r, c] = false;
                                location = true;
                            }
                        }
                        else {
                            PlayerGrid[c, r].Enabled = false;
                            PlayerGrid[c,r ].BackColor = Color.Blue;
                            location = true;
                        }
                        
                    }
                }
            }
            Session["Player"] = PlayerGrid;
            Session["ShipLocationsPlayer"] = ShipLocationPlayer;
            return location;

        }
    }
}