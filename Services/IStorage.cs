using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Setl.Models;

namespace Setl.Services
{
    public interface IStorage
    {
        public Task<List<Apartment>> GetApartments();
    }
}
