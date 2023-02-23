using Microsoft.EntityFrameworkCore;
using Models.ViewModels;

namespace DataAccess
{
    public partial class ApplicationDbContext
    {
        // DbSets Niels Rolleman

        public DbSet<DifferenceVM> DifferencesVM { get; set; }
        public DbSet<LostSongsVM> LostSongsVM { get; set; }
        public DbSet<HigherLowerVM> HigherLowerVM { get; set; }

        //DbSets Youri Blanckenborg
        public DbSet<SongsPresentInEveryEditionVM> SongsPresentInEveryEditionVM { get; set; }
        public DbSet<SongsReenteredInSpecificEditionVM> SongsReenteredInSpecificEditionVM { get; set; }
        public DbSet<SongsWithSingleEntriesVM> SongsWithSingleEntriesVM { get; set; }

    }
}
