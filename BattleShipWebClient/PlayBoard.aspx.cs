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
        private int[,] grid = new int[10, 10];
        private int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            GenerateGrid();
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        private void GenerateGrid()
        {
            for (int r = 0; r < 10; r++)
            {
                for (int c = 0; c < 10; c++)
                {
                    count++;
                    grid[r, c] = count;
                }
            }

            count = 0;
        }

        protected void A1_Click(object sender, EventArgs e)
        {

        }

        protected void AA1_Click(object sender, EventArgs e)
        {

        }
    }
}