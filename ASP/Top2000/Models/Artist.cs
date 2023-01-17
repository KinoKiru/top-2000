using System.ComponentModel.DataAnnotations;

namespace Models
{
    public class Artist
    {
        [Key]
        public int ArtistId { get; set; }

        [StringLength(75)]
        public string Name { get; set; } = string.Empty;
        public byte[]? Photo { get; set; }
        public string? Description { get; set; } = string.Empty;
    }
}
