using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.ViewModels
{
    public  class ArtistWithSongsExtendedVM
    {
        // Artist
        public int ArtistId { get; set; }
        public string Name { get; set; } = String.Empty;
        public string? Description { get; set; }  = String.Empty;
        public Byte[]? ArtistPhoto { get; set; }

        // Song
        public string Title { get; set; } = String.Empty;
        public int ReleaseYear { get; set; }
        public Byte[]? SongPhoto { get; set; }
    }
}
