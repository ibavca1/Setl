using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Setl.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class House : ControllerBase
    {
        [HttpGet("[action]")]
        public async Task<IActionResult> Get(string token)
        {
            var house = new List<string>();
            return Ok(house);
        }
    }
}
