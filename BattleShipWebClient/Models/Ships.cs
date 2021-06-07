using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BattleShipWebClient.Models
{
    public class Ships
    {
        public int[] Battleship { get; set; }
        public int[] destroyerShip1 { get; set; }
        public int[] destroyerShip2 { get; set; }
    }
}