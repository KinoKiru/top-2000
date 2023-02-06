using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Models;
using Models.ViewModels;

namespace DataAccess
{
    public partial class ApplicationDbContext : IdentityDbContext<IdentityUser>
    {
        public DbSet<Artist> Artist { get; set; }
        public DbSet<Song> Song { get; set; }
        public DbSet<Position> Position { get; set; }
        public DbSet<ArtistWithSongsVM> ArtistWithSongs { get; set; }
        public DbSet<SongsOfArtistVM> SongsOfArtist { get; set; }
        public ApplicationDbContext(DbContextOptions options) : base(options) { }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<Position>().HasKey("Year", "SongId");
            modelBuilder.Entity<ArtistWithSongsVM>().ToView("vwArtistWithSongs").HasNoKey();
            modelBuilder.Entity<SongsOfArtistVM>().ToView("spSongsOfArtist").HasNoKey();
            modelBuilder.Entity<DecreaseOfPositionVM>().ToView("spDecreaseOfPositon").HasNoKey();
            modelBuilder.Entity<NewComersVM>().ToView("spNewCOmers").HasNoKey();
            modelBuilder.Entity<SamePositionVM>().ToView("spSamePosition").HasNoKey();
            modelBuilder.Entity<TopThreeArtistVM>().ToView("spTopThreeArtist").HasNoKey();
            modelBuilder.Entity<DifferenceVM>().ToView("spDifference").HasNoKey();
            modelBuilder.Entity<LostSongsVM>().ToView("spLostSongs").HasNoKey();
            modelBuilder.Entity<HigherLowerVM>().ToView("spHigherLower").HasNoKey();
            modelBuilder.Entity<SongsPresentInEveryEditionVM>().ToView("spSongsPresentInEveryEdition").HasNoKey();
            modelBuilder.Entity<SongsReenteredInSpecificEditionVM>().ToView("spSongsReenteredInSpecificEdition").HasNoKey();
            modelBuilder.Entity<SongsWithSingleEntriesVM>().ToView("spSongsWithSingleEntries").HasNoKey();
            modelBuilder.Entity<ArtistWithSongsExtendedVM>().ToView("spArtistWithSongsExtended").HasNoKey();
            modelBuilder.Entity<SongPositionArtistVM>().ToView("spSongPositionArtist").HasNoKey();
        }
    }
}
