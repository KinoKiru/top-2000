using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Any;
using Models;
using Models.ViewModels;

namespace Api.Controllers
{
    public partial class ApiController : Controller
    {

        [HttpGet("/api/artist")]
        public IResult SongsFromArtist(int ArtistId) 
        {
            var result = _context.ArtistWithSongsExtended.FromSqlInterpolated($"spArtistWithSongsExtended {ArtistId}");
            return Results.Ok(result);
        }

        [HttpGet("/api/songs")]
        public IResult Songs(int year, bool? reversed = false, bool? onlyIncreased = false, bool? onlyDecreased = false) {
            dynamic result = null;
            if (onlyDecreased == true)
            {
               
                result = _context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {year}").ToList().Where(x => x.OldPosition < x.Place).ToList();            
            }

            if (onlyIncreased == true)
            {
                // result = _context.FromSqlInterpolated($"spDecreaseOfPosition {year}");
                if (result != null) {
                    result.AddRange(_context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {year}").ToList().Where(x => x.OldPosition > x.Place).ToList());
                }
                result = _context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {year}").ToList().Where(x => x.OldPosition > x.Place).ToList();
            }
            else {
                result = _context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {year}").ToList();
            }

            if (reversed == true)
            {
                List<SongPositionArtistVM> owo = result;
                owo.Sort(delegate (SongPositionArtistVM a, SongPositionArtistVM b) {
                    if (a.Place < b.Place) { 
                        return 1;
                    }
                    return -1;
                });
                result = owo;
            }

            if (onlyDecreased == true && onlyIncreased == true)
            {
                List<SongPositionArtistVM> owo = result;
                result = owo.OrderBy(item => item.Place);
            }

            return Results.Ok(result);
        }

        [HttpGet("/search")]
        public async Task<IResult> SongsFromArtis(string ArtistName)
        {
            var result = await _context.Artist.Where(x => x.Name.Contains(ArtistName)).ToListAsync();
            return Results.Ok(result);
        }

    }
}
