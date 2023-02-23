using Microsoft.AspNetCore.Mvc;
using Models.ViewModels;
using DataAccess;
using Microsoft.EntityFrameworkCore;
using System.Buffers.Text;
using Models;

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
        public IActionResult EditSong(int id)
        {
            var result = _context.Song.Where(x => x.SongId.Equals(id));
            return View(result);
        }

        [HttpPost]
        public async Task<IActionResult> EditSong(Song song)
        {

            try
            {
                _context.Song.Update(song);
                _context.SaveChanges();
                var result = await _context.Song.Where(x => x.SongId.Equals(song.SongId)).ToListAsync();
                return View(result);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }

        }
    }
}
