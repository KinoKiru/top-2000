using DataAccess;
using Microsoft.AspNetCore.Mvc;

namespace Api.Controllers
{
    public partial class ApiController : Controller
    {
        // keep empty

        private ApplicationDbContext _context;

        public ApiController(ApplicationDbContext context)
        {
            _context = context;
        }
    }
}
