using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Setl.Models;
using Setl.Services;

namespace Setl.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class House : ControllerBase
    {
        private string _token = "1234567890";
        [HttpGet("[action]")]
        public async Task<IActionResult> Get(string token)
        {
            Storage storage = new Storage();
            if (token != _token)
                return Unauthorized();
            List<Apartment> houses;
            try
            {
                houses = await storage.GetApartments();
            }
            catch
            {
                return NoContent();
            }
            
            return Ok(houses);
        }
    }
}
