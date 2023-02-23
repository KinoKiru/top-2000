using Microsoft.AspNetCore.Mvc;
using Models.ViewModels;
using DataAccess;
using Microsoft.EntityFrameworkCore;
using System.Buffers.Text;
using Models;
using Microsoft.AspNetCore.Authorization;

namespace Web.Controllers
{
    public partial class RoutingController : Controller
    {
       public IActionResult Song()
        {
            var result = _context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {2021}").ToList();
            List<SongPositionArtistVM> songs = result;
            return View(songs);
        }

        [HttpPost]
        public IActionResult Song(int year)
        {
            var result = _context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {year}").ToList();
            List<SongPositionArtistVM> songs = result;
            return View(songs);
        }

        [HttpGet]
        public async Task<IActionResult> SongDetails(int id)
        {

            var result = await _context.Song.Include(s => s.Artist).Where(x => x.SongId.Equals(id)).ToListAsync();
            return View(result);
        }

        [HttpGet]
        public async Task<IActionResult> EditSong(int? id)
        {
            if (id == null || _context.Song == null)
            {
                return NotFound();
            }

            var song = await _context.Song.FindAsync(id);
            if (song == null)
            {
                return NotFound();
            }
            return View(song);
        }

        [HttpPost]
        public async Task<IActionResult> EditSong([Bind("ImageFile,Title,SongId,ReleaseYear,ArtistId")] Song song)
        {

            try
            {
                using (var ms = new MemoryStream())
                {
                    song.ImageFile.CopyTo(ms);
                    song.Photo = Convert.ToBase64String(ms.ToArray());
                }

                _context.Song.Update(song);
                _context.SaveChanges();
                var result = await _context.Song.Where(x => x.SongId.Equals(song.SongId)).ToListAsync();
                return RedirectToAction("SongDetails", new { id = song.SongId });
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }
    }
}
