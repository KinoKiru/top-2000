namespace Models.ViewModels
{
    public class DecreaseOfPositionVM
    {
        public string Title { get; set; } = String.Empty;
        public string Name { get; set; } = String.Empty;
        public int ReleaseYear { get; set; }
        public int ThisYear { get; set; }
        public int OldYear { get; set; }
        public int Decrease { get; set; }
    }
}
