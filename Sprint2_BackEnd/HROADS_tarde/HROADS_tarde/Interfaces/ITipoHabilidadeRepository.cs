using HROADS_tarde.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HROADS_tarde.Interfaces
{
    interface ITipoHabilidadeRepository
    {
        List<TipoHabilidade> Listar();

        TipoHabilidade BuscarporID(int id);

        void CadastrarTipoHabilidade(TipoHabilidade novaClasse);

        void AtualizarTipoHabilidade(int id, TipoHabilidade classeAtualizada);

        void DeletarTipoHabilidade(int id);
    }
}
