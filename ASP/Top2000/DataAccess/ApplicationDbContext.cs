using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Models;
using Models.ViewModels;

namespace DataAccess
{
    public partial class ApplicationDbContext : IdentityDbContext
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
        }
    }
}
