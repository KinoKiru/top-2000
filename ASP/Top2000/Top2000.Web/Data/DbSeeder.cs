using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Identity.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Web.Constants;
namespace DataAccess
{
    public static class DbSeeder
    {
        public static async Task SeedRolesAndAdminAsync(IServiceProvider service)
        {
            //Seed Roles


            // creating admin
            /*
            var user = new IdentityUser
            {
                UserName = "admin@gmail.com",
                Email = "admin@gmail.com",
                EmailConfirmed = true,
                PhoneNumberConfirmed = true
            };
            var userInDb = await userManager.FindByEmailAsync(user.Email);
            if (userInDb == null)
            {
                await userManager.CreateAsync(user, "Admin@123");
                await userManager.AddToRoleAsync(user, Roles.Admin.ToString());
            }
            */
        }

    }
}
