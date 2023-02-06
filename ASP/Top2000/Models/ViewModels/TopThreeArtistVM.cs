namespace Models.ViewModels
{
    public class TopThreeArtistVM
    {

        public string Name { get; set; } = string.Empty;
        public int AmountOfSongs { get; set; }
        public int Average { get; set; }
        public int Lowest { get; set; }
    }
}
