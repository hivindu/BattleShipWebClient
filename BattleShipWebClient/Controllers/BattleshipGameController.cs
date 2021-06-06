using BattleShipWebClient.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;

namespace BattleShipWebClient.Controllers
{
    public class BattleshipGameController
    {
        private Ships ship;
        private static HttpClient client;
        

        public BattleshipGameController()
        {

        }

        public Ships GeneratePlayerShips(Ships ships)
        {
            ship = new Ships();
            client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:8000");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.PostAsJsonAsync("/api​/Battleship​/GenerateUserShips​/player", ships).Result;
            if (response.IsSuccessStatusCode)
            {
                var playerShips = response.Content.ReadAsStringAsync().Result;
                ship = JsonConvert.DeserializeObject<Ships>(playerShips);
            }
            else
            {
                ship = null;
            }

            return ship;
        }

       
    }
    
}