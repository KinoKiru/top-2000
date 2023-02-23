using Microsoft.AspNetCore.Http;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Models
{
    public class Song
    {
        [Key]
        public int SongId { get; set; }

        [StringLength(75)]
        public string Title { get; set; } = string.Empty;

        [ForeignKey("ArtistId")]
        public int ArtistId { get; set; }
        public Artist Artist { get; set; } = new ();
        public string? Photo { get; set; } = string.Empty;
        public int ReleaseYear { get; set; }

        [NotMapped]
        [DisplayName("Upload File")]
        public IFormFile ImageFile { get; set; }
    }
}
