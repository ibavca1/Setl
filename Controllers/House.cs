using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Setl.Services;

namespace Setl.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class House : ControllerBase
    {
        [HttpGet("[action]")]
        public async Task<IActionResult> Get(string token)
        {
            Storage storage = new Storage();
            var houses = await storage.GetApartments();
            return Ok(houses);
        }
    }
}
