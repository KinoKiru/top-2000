using System.ComponentModel.DataAnnotations;

namespace Models
{
    public class Artist
    {
        public int Id { get; set; }

        [StringLength(75)]
        public string Name { get; set; } = string.Empty;
        public byte[]? Photo { get; set; }

        public string? Description { get; set; } = string.Empty;
    }
}
