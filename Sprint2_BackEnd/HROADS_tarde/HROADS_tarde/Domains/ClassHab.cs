using System;
using System.Collections.Generic;

#nullable disable

namespace HROADS_tarde.Domains
{
    public partial class ClassHab
    {
        public int IdClassHab { get; set; }
        public int? IdClasse { get; set; }
        public int? IdHabilidade { get; set; }

        public virtual Class IdClasseNavigation { get; set; }
        public virtual Habilidade IdHabilidadeNavigation { get; set; }
    }
}
