using HROADS_tarde.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HROADS_tarde.Interfaces
{
    interface IHabilidadeRepository
    {
        List<Habilidade> Listar();

        Habilidade BuscarporID(int id);

        void CadastrarHabilidade(Habilidade novaClasse);

        void AtualizarHabilidade(int id, Habilidade classeAtualizada);

        void DeletarHabilidade(int id);
    }
}
