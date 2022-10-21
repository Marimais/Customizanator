using _3DPRT.API.Services;
using _3DPRT.Models;
using Microsoft.AspNetCore.Mvc;

namespace _3DPRT.API.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class UserController:ControllerBase
    {
        [HttpGet]
        public ActionResult<List<User>> GetAll() => UserService.GetAll();

        [HttpGet("{FirstName}")]
        public ActionResult<List<User>> Get(string firstName) => UserService.Get(firstName);

    }
}
