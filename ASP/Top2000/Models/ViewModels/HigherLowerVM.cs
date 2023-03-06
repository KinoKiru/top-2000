using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.ViewModels
{
    public class HigherLowerVM
    {
        public int Place { get; set; }
        public string Title { get; set; } = string.Empty;

        public string Name { get; set; } = string.Empty;

        public int ReleaseYear {  get; set; }
    }
}
