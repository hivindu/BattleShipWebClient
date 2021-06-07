using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BattleShipWebClient
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["PlayerScore"] != null)
            {
                scorePanel.Visible = true;
                lblWinnder.Text = "Player";
                Session["PlayerScore"] = null;
            }
            else if (Session["EnemyScore"] != null) {
                scorePanel.Visible = true;
                lblWinnder.Text = "Enemy";
                Session["EnemyScore"] = null;
            } 
            else {
                scorePanel.Visible = false;
            }
        }

        protected void btnPlay_Click(object sender, EventArgs e)
        {
            Response.Redirect("PlayBoard.aspx");
        }
    }
}