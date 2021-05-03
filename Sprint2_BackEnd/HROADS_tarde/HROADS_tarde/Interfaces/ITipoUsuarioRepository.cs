using HROADS_tarde.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HROADS_tarde.Interfaces
{
    interface ITipoUsuarioRepository
    {
        List<TipoUsuario> Listar();

        TipoUsuario BuscarporID(int id);

        void CadastrarTipoUsuario(TipoUsuario novaClasse);

        void AtualizarTipoUsuario(int id, TipoUsuario classeAtualizada);

        void DeletarTipoUsuario(int id);
    }
}
