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
            dynamic result;
            if (onlyDecreased == true)
            {
                //  result = _context.DecreaseOfPosition.FromSqlInterpolated($"spDecreaseOfPosition {year}");
                result = _context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {year}").ToList();
            }
            else if (onlyIncreased == true)
            {
                // result = _context.FromSqlInterpolated($"spDecreaseOfPosition {year}");
                result = _context.SongPositionArtist.FromSqlInterpolated($"spSongPositionArtist {year}").ToList();
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

            return Results.Ok(result);
        }

        [HttpGet("/test")]
        public IResult SongsFromArtis(string ArtistName)
        {
            var result = _context.SongsOfArtist.FromSqlInterpolated($"spSongsOfArtist {ArtistName}");
            return Results.Ok(result);
        }

    }
}
