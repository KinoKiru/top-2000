using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Api.Controllers
{
    public partial class ApiController : Controller
    {

        [HttpGet("/api/Artist")]
        public IResult SongsFromArtist(int ArtistId) 
        {
            var result = _context.ArtistWithSongsExtended.FromSqlInterpolated($"spArtistWithSongsExtended {ArtistId}");
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
