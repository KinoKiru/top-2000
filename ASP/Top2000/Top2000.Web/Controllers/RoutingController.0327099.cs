using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Models;
using Models.ViewModels;
using System.Dynamic;

namespace Web.Controllers
{
    public partial class RoutingController : Controller
    {
        [AllowAnonymous]
        [HttpGet()]
        public async  Task<IActionResult> Artist(int id)
        {
            try
            {
                //dynamic dynamicModel = new ExpandoObject();
                //dynamicModel.Artist = _context.ArtistWithSongsExtended.FromSqlInterpolated($"spArtistWithSongsExtended {id}").ToList()[0];
                //dynamicModel.Songs = _context.SongsOfArtist.FromSqlInterpolated($"spSongsOfArtist {dynamicModel.Artist.Name}").ToList();

                List<ArtistWithSongsExtendedVM> result = await _context.ArtistWithSongsExtended.FromSqlInterpolated($"spArtistWithSongsExtended {id}").ToListAsync();
                  result = result.OrderByDescending(item => item.ReleaseYear).ToList();

                return View(result);
            }
            catch (Exception ex)
            {
                return View(ex);
            }
        }

        [Authorize(Roles = "Admin")]
        public IActionResult Import()
        {
            return View();
        }

        [HttpGet]
        public async Task<IActionResult> ArtistEdit(int? id)
        {
            if (id == null || _context.Artist == null)
            {
                return NotFound();
            }

            var artist = await _context.Artist.FindAsync(id);
            if (artist == null)
            {
                return NotFound();
            }
            return View(artist);
        }

        [HttpPost]

        public async Task<IActionResult> ArtistEdit([Bind("ImageFile,Description,Name,ArtistId")] Artist artist)
        {
            using (var ms = new MemoryStream())
            {
                artist.ImageFile.CopyTo(ms);
                artist.Photo = Convert.ToBase64String(ms.ToArray());
            }

            _context.Artist.Update(artist);
            _context.SaveChanges();
            return RedirectToAction("Artist", new { id = artist.ArtistId });
        }
    }
}
