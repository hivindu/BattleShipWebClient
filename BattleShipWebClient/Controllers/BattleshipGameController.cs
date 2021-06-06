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
        private ResponseBody _reponse;

        public BattleshipGameController()
        {

        }

        public Ships GeneratePlayerShips(Ships ships)
        {
            ship = new Ships();
            client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:8000");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.PostAsJsonAsync("/api​/Battleship​/GenerateUserShips​", ships).Result;
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
        public Ships GetEnemiesLocation()
        {
            ship = new Ships();
            client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:8000");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.GetAsync("/api/Battleship/GetEnemies​").Result;
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

        public ResponseBody ShotOnEnemy(int point, Ships enimiShips)
        {
            _reponse = new ResponseBody();
            client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:8000");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.PutAsJsonAsync("/api/Battleship/ShotEnemy/"+point+"", enimiShips).Result;
            if (response.IsSuccessStatusCode)
            {
                var playerShips = response.Content.ReadAsStringAsync().Result;
                _reponse = JsonConvert.DeserializeObject<ResponseBody>(playerShips);
            }
            else
            {
                _reponse = null;
            }

            return _reponse;
        }

        public ResponseBody ShotOnPlayer(Ships playerShips)
        {
            _reponse = new ResponseBody();

            client = new HttpClient();
            client.BaseAddress = new Uri("http://localhost:8000");
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            HttpResponseMessage response = client.PutAsJsonAsync("/api/Battleship/ShotOnUser", playerShips).Result;
            if (response.IsSuccessStatusCode)
            {
                var location = response.Content.ReadAsStringAsync().Result;
                _reponse = JsonConvert.DeserializeObject<ResponseBody>(location);
            }
            else
            {
                _reponse = null;
            }

            return _reponse;
        }


    }
    
}