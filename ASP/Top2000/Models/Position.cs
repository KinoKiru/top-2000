using System.ComponentModel.DataAnnotations.Schema;

namespace Models
{
    public class Position
    {

        public int Year { get; set; }

        public int Place { get; set; }

        [ForeignKey("SongId")]
        public int SongID { get; set; }
        public Song Song { get; set; } = new Song();
    }
}
