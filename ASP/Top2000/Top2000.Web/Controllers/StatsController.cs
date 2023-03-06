using DataAccess;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace Web.Controllers;

public class StatsController : Controller
{
    private ApplicationDbContext _context;

    public StatsController(ApplicationDbContext applicationDbContext)
    {
        _context = applicationDbContext;
    }

    public IActionResult Index()
    {
        return View();
    }

    [HttpPost]
    public IActionResult DecreaseOfPosition(int year = 2021)
    {
        ViewBag.title = "Decrease in position";
        ViewBag.action = "DecreaseOfPosition";
        ViewBag.withYears = true;
        ;
        return View("Index",
            new List<dynamic>(_context.DecreaseOfPosition.FromSqlInterpolated($"spDecreaseOfPosition {year}")));
    }

    [HttpPost]
    public IActionResult NewComers(int year = 2021)
    {
        ViewBag.title = "New comers";
        ViewBag.action = "NewComers";
        ViewBag.withYears = true;
        return View("Index", new List<dynamic>(_context.NewComers.FromSqlInterpolated($"spNewCOmers {year}")));
    }
    
    [HttpPost]
    public IActionResult SamePosition(int year = 2021)
    {
        ViewBag.title = "Same position";
        ViewBag.action = "SamePosition";
        ViewBag.withYears = true;
        return View("Index", new List<dynamic>(_context.SamePosition.FromSqlInterpolated($"spSamePosition {year}")));
    }
    
    [HttpPost]
    public IActionResult TopThreeArtist(int year = 2021)
    {
        ViewBag.title = "Top Three Artist";
        ViewBag.action = "TopThreeArtist";
        ViewBag.withYears = true;
        return View("Index", new List<dynamic>(_context.TopThreeArtist.FromSqlInterpolated($"spTopThreeArtist {year}")));
    }
    
    [HttpPost]
    public IActionResult SongsInEveryEdition()
    {
        ViewBag.title = "Songs In Every Edition";
        ViewBag.action = "SongsInEveryEdition";
        ViewBag.withYears = false;
        return View("Index", new List<dynamic>(_context.SongsPresentInEveryEditionVM.FromSqlInterpolated($"spSongsPresentInEveryEdition")));
    }
    
    [HttpPost]
    public IActionResult ReinteredInEdition(int year = 2021)
    {
        ViewBag.title = "Reintered songs in edition";
        ViewBag.action = "ReinteredInEdition";
        ViewBag.withYears = true;
        return View("Index", new List<dynamic>(_context.SongsReenteredInSpecificEditionVM.FromSqlInterpolated($"spSongsReenteredInSpecificEdition {year}")));
    }
    
    [HttpPost]
    public IActionResult SongsSingleEntry()
    {
        ViewBag.title = "Songs with single entry";
        ViewBag.action = "SongsSingleEntry";
        ViewBag.withYears = false;
        return View("Index", new List<dynamic>(_context.SongsWithSingleEntriesVM.FromSqlInterpolated($"spSongsWithSingleEntries")));
    }
    
    [HttpPost]
    public IActionResult Diffrence(int year = 2021)
    {
        ViewBag.title = "dunno";
        ViewBag.action = "Diffrence";
        ViewBag.withYears = true;
        return View("Index", new List<dynamic>(_context.DifferencesVM.FromSqlInterpolated($"spDifference {year}")));
    }
    
    [HttpPost]
    public IActionResult LostSongs(int year = 2021)
    {
        ViewBag.title = "Lost Songs";
        ViewBag.action = "LostSongs";
        ViewBag.withYears = true;
        return View("Index", new List<dynamic>(_context.LostSongsVM.FromSqlInterpolated($"spLostSongs {year}")));
    }
    
    [HttpPost]
    public IActionResult HigherLower(int year = 2021)
    {
        ViewBag.title = "Higher Lower";
        ViewBag.action = "HigherLower";
        ViewBag.withYears = true;
        return View("Index", new List<dynamic>(_context.HigherLowerVM.FromSqlInterpolated($"spHigherLower {year}")));
    }
}