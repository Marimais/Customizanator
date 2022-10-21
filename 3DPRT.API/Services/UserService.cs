using _3DPRT.DataAccess;
using _3DPRT.Models;

namespace _3DPRT.API.Services
{
    public static class UserService
    {
        readonly static PrintingDBContext dbContext =new ();
        public static List<User> GetAll()
        {
            return dbContext.Users.ToList();
        }
    }
}
