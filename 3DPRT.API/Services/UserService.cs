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

        public static List<User> Get(string firstName)
        {
            return dbContext.Users.ToList().Where(x => x.FirstName == firstName).ToList();  
        }
    }
}
