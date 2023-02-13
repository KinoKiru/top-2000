using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using DataAccess;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Query.SqlExpressions;
using Microsoft.AspNetCore.Identity;
using Top2000.Web.Models;
using Microsoft.AspNetCore.Authorization;

namespace Web.Controllers
{
    public class RoleController : Controller
    {
        
        private readonly RoleManager<IdentityRole> _roleManager;

        public RoleController(RoleManager<IdentityRole> roleManager)
        {
            _roleManager = roleManager;
        }
        public IActionResult Index()
        {
            var roles = _roleManager.Roles;    
            return View(roles);
        }
    }
}
