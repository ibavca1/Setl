using Setl.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Setl.Services
{
    public class Storage : IStorage
    {
        private string connectionString =@"Data Source=DEV-152\SQLEXPRESS;Initial Catalog=setl; User ID=sa; Password=9043036666";
        public async Task<List<Apartment>> GetApartments()
        {
            List<Apartment> apartments = new List<Apartment>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                
                connection.Open();
                var sql = "exec get_room";
                var command = new SqlCommand(sql, connection);
                SqlDataReader dataReader = await command.ExecuteReaderAsync();
                while (dataReader.Read())
                {
                   var number=((string)dataReader.GetValue(0)).Trim();
                   apartments.Add(new Apartment
                   {
                       number = ((string)dataReader.GetValue(0)).Trim(),
                       area = dataReader.GetDecimal(1),
                       price = dataReader.GetDecimal(2),
                       price_m2 = dataReader.GetDecimal(3)
                   });

                }
                connection.Close();
            }
            return apartments;
        }
    }
}
