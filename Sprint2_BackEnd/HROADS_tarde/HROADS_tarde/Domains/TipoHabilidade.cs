using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using Xunit;

#nullable disable

namespace HROADS_tarde.Domains
{
    public partial class TipoHabilidade
    {
        public TipoHabilidade()
        {
            Habilidades = new HashSet<Habilidade>();
        }

        public int IdTipo { get; set; }

        [Required(ErrorMessage = "O nome do TipoHabilidade é obrigatório!")]
        public string NomeTipo { get; set; }

        public virtual ICollection<Habilidade> Habilidades { get; set; }
    }
}
