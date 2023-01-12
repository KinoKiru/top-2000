using System.ComponentModel.DataAnnotations;

namespace Models
{
    public class Song
    {
        public int Id { get; set; }

        [StringLength(75)]
        public string Title { get; set; } = string.Empty;
        public int ArtistId { get; set; }
        public Artist Artist { get; set; }
        public byte[]? Photo { get; set; }
    }
}
