using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.ViewModels
{
    public class SongPositionArtistVM
    {
        // Song
        public int SongId { get; set; } 
        public Byte[]? SongPhoto { get; set; }
        public int ReleaseYear { get; set; }
        public string Title { get; set; } = String.Empty;

        // Artist
        public int ArtistId { get; set; }
        public string Name { get; set; } = String.Empty;

        // Position
        public int Place { get; set; }
        public int? OldPosition { get; set; } = 0;
    }
}
