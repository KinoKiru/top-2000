using Microsoft.AspNetCore.Http;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Models
{
    public class Artist
    {
        [Key]
        public int ArtistId { get; set; }

        [StringLength(75)]
        public string Name { get; set; } = string.Empty;
        public string? Photo { get; set; } = string.Empty;
        public string? Description { get; set; } = string.Empty;

        [NotMapped]
        [DisplayName("Upload File")]
        public IFormFile ImageFile { get; set; }
    }
}
