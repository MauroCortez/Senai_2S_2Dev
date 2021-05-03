using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace HROADS_tarde.Domains
{
    public partial class Personagen
    {
        public int IdPersonagem { get; set; }

        [Required(ErrorMessage = "O nome do personagem é obrigatório!")]
        public string Nome { get; set; }
        public int? CapacidadeMaxVida { get; set; }
        public int? CapacidadeMaxMana { get; set; }

        [DataType(DataType.Date)]
        public DateTime? DataAtualizacao { get; set; }

        [DataType(DataType.Date)]
        public DateTime? DataCriacao { get; set; }
        public int? IdClasse { get; set; }

        public virtual Class IdClasseNavigation { get; set; }
    }
}
