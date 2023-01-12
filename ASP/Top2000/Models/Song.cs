using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Models
{
    public class Song
    {
        public int Id { get; set; }

        [StringLength(75)]
        public string Title { get; set; } = string.Empty;

        [ForeignKey("ArtistId")]
        public int ArtistId { get; set; }
        public Artist Artist { get; set; } = new Artist();
        public byte[]? Photo { get; set; }
    }
}
