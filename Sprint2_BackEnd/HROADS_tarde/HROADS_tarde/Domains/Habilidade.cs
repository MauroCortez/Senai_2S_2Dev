using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xunit.Sdk;

#nullable disable

namespace HROADS_tarde.Domains
{
    public partial class Habilidade
    {
        public Habilidade()
        {
            ClassHabs = new HashSet<ClassHab>();
        }

        public int IdHabilidade { get; set; }

        public int? IdTipo { get; set; }

        [Required(ErrorMessage = "O nome da habilidade é obrigatório!")]
        public string NomeHabilidade { get; set; }

        public virtual TipoHabilidade IdTipoNavigation { get; set; }
        public virtual ICollection<ClassHab> ClassHabs { get; set; }
    }
}