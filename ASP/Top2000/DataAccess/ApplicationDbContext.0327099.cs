using Microsoft.EntityFrameworkCore;
using Models.ViewModels;

namespace DataAccess
{
    public partial class ApplicationDbContext
    {
        public DbSet<DecreaseOfPositionVM> DecreaseOfPosition { get; set; }
        public DbSet<NewComersVM> NewComers { get; set; }
        public DbSet<SamePositionVM> SamePosition { get; set; }
        public DbSet<TopThreeArtistVM> TopThreeArtist { get; set; }
        public DbSet<ArtistWithSongsExtendedVM> ArtistWithSongsExtended { get; set; }
    }
}
