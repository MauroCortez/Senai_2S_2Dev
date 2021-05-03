using System;
using System.Collections.Generic;

#nullable disable

namespace HROADS_tarde.Domains
{
    public partial class Class
    {
        public Class()
        {
            ClassHabs = new HashSet<ClassHab>();
            Personagens = new HashSet<Personagen>();
        }

        public int IdClasse { get; set; }
        public string NomeClasse { get; set; }

        public virtual ICollection<ClassHab> ClassHabs { get; set; }
        public virtual ICollection<Personagen> Personagens { get; set; }
    }
}
