using DataAccess;
using Microsoft.AspNetCore.Mvc;

namespace Web.Controllers
{
    public partial class RoutingController : Controller
    {
        private ApplicationDbContext _context;

        public RoutingController(ApplicationDbContext context)
        {
            _context = context;
        }
    }
}
