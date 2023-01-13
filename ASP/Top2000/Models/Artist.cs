namespace Models
{
    public class Artist
    {
        public int Id { get; set; }
        public string Name { get; set; } = string.Empty;
        public byte[]? Photo { get; set; }

        public string? Description { get; set; } = string.Empty;
    }
}
