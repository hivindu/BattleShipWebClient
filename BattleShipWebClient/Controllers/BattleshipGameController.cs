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
        private static Ships ship;
        private static HttpClient client;
        private static ResponseBody _reponse;

        public BattleshipGameController()
        {

        }

        public static Ships GeneratePlayerShips(Ships ships)
        {
            ship = new Ships();
            Ships userShips = ships;
            client = new HttpClient();

            try {
                client.BaseAddress = new Uri("http://localhost:8000");
                var response = client.PostAsJsonAsync("api/Battleship/GenerateUserShips", userShips).Result;
                if (response.IsSuccessStatusCode)
                {
                    var playerShips = response.Content.ReadAsStringAsync().Result;
                    ship = JsonConvert.DeserializeObject<Ships>(playerShips);
                }
                else
                {
                    ship = null;
                }
            } catch (Exception ex) 
            {
                ship = null;
            }
            

            return ship;
        }

        public static Ships GetEnemiesLocation()
        {
            ship = new Ships();
            client = new HttpClient();

            try
            {
                client.BaseAddress = new Uri("http://localhost:8000");
                var response = client.GetAsync("api/Battleship/GetEnemies").Result;
                if (response.IsSuccessStatusCode)
                {
                    var playerShips = response.Content.ReadAsStringAsync().Result;
                    ship = JsonConvert.DeserializeObject<Ships>(playerShips);
                }
                else
                {
                    ship = null;
                }
            }
            catch (Exception ex) 
            {
                ship = null;
            }

            return ship;
        }

        public static ResponseBody ShotOnEnemy(int point, Ships enimiShips)
        {
            _reponse = new ResponseBody();
            client = new HttpClient();

            try
            {
                client.BaseAddress = new Uri("http://localhost:8000");
                HttpResponseMessage response = client.PutAsJsonAsync("api/Battleship/ShotEnemy/" + point + "", enimiShips).Result;
                if (response.IsSuccessStatusCode)
                {
                    var playerShips = response.Content.ReadAsStringAsync().Result;
                    _reponse = JsonConvert.DeserializeObject<ResponseBody>(playerShips);
                }
                else
                {
                    _reponse = null;
                }
            }
            catch (Exception ex)
            {
                _reponse = null;
            }

            return _reponse;
        }

        public static ResponseBody ShotOnPlayer(Ships playerShips)
        {
            _reponse = new ResponseBody();
            client = new HttpClient();

            try
            {
                client.BaseAddress = new Uri("http://localhost:8000");
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
            }
            catch (Exception ex)
            {
                _reponse = null;
            }

            return _reponse;
        }


    }
    
}