using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Models
{
    public class Position
    {
        [Key]
        public int Year { get; set; }

        public int Place { get; set; }

        [ForeignKey("SongId")]
        public int SongId { get; set; }
        public Song Song { get; set; } = new();
    }
}
