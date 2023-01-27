﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.ViewModels
{
    public class DifferenceVM
    {
        public string Title { get; set; } = string.Empty;
        public string Name { get; set; } = string.Empty;
        public int Year { get; set; }
        public int ThisYear { get; set; }
        public int OldYear { get; set; }
        public int Difference { get; set; }

    }
}
