using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Classes
{
    public static class Extensions
    {
       public static string capitalize(this string str)
        {
            return $"{str.ToUpper()[0]}{str.ToLower().Substring(1)}";
        }

        public static string capitalizeAll(this string str)
        {
            List<char> owo = new List<char> { str.ToUpper()[0] };
            for (int i = 1; i < str.Length; i++)
            {
                if (str[i - 1] == ' ')
                {
                    owo.Add(str.ToUpper()[i]);
                }
                else
                {
                    owo.Add(str[i]);
                }
            }
            return String.Join("", owo);
        }
    }
}
