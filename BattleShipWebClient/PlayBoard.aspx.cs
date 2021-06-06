using BattleShipWebClient.Controllers;
using BattleShipWebClient.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BattleShipWebClient
{
    public partial class PlayBoard : System.Web.UI.Page
    {
        private Button[,] PlayerGrid;
        private Button[,] EnimiesGrid;
        private Ships ship;
        private BattleshipGameController controller;
        private bool[,] ShipLocationPlayer;
        private bool[,] ShipLocationEnimy;
        private int count = 0;
        private int score = 0;
        private int Shis = 3;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ship = new Ships();
                PlayerGrid = new Button[10, 10];
                EnimiesGrid = new Button[10, 10];
                ShipLocationPlayer = new bool[10, 10];
                ShipLocationEnimy = new bool[10, 10];
                CreateEnimiesGrid();
                CreatePlayerGrid();
                lblhint.Text = "Please select 3 locations on your grid";
                enimy_panel.Visible = false;
                Session["EnimiesGrid"] = EnimiesGrid;
                Session["Player"] = PlayerGrid;
                Session["Ships"] = Shis;
                Session["Ship"] = ship;
            }
            else {
                ship = (Ships)Session["Ship"];
                EnimiesGrid = (Button[,])Session["EnimiesGrid"];
                PlayerGrid = (Button[,])Session["Player"];
               CreateEnimiesGrid();
                CreatePlayerGrid();
            }
            controller = new BattleshipGameController();

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void A1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Shis = (int)Session["Ships"];
                if (Shis > 0)
                {
                    var button = (Button)sender;
                    button.Enabled = false;
                    button.BackColor = System.Drawing.Color.Orange;

                    string id = button.ClientID;
                    switch (Shis)
                    {
                        case 3:
                            ship.Battleship = FindIndex(id); break;
                        case 2:
                            ship.Ship1 = FindIndex(id); break;
                        case 1:
                            ship.Ship2 = FindIndex(id); break;
                    }
                    Session["Ship"] = ship;
                    Shis--;
                    Session["Ships"] = Shis;
                }

                if (Shis == 0)
                {   
                    enimy_panel.Visible = true;
                    ship = controller.GeneratePlayerShips(ship);
                    lblhint.Text = "Click a button on enimis grid to start!";
                }
            }
            
        }

        protected void AA1_Click(object sender, EventArgs e)
        {

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
        private void CreateEnimiesGrid()
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

        private int[] FindIndex(string id)
        {
            int[] values = new int[2];
            string col;
            for (int r=0;r<10;r++)
            {
                for (int c=0; c<10;c++)
                {
                     col = PlayerGrid[r, c].ClientID;
                    if (col == id)
                    {
                        values[0] = r;
                        values[1] = c;
                    }
                }
            }

            return values;
        }
    }
}