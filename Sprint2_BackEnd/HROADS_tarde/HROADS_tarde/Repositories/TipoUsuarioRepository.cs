using HROADS_tarde.Domains;
using HROADS_tarde.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HROADS_tarde.Repositories
{
    public class TipoUsuarioRepository : ITipoUsuarioRepository
    {
        HroadsContext ctx = HroadsContext();

        public List<TipoUsuario> Listar()
        {
            throw new NotImplementedException();
        }

        public TipoUsuario BuscarporID(int id)
        {
            throw new NotImplementedException();
        }

        public void CadastrarTipoUsuario(TipoUsuario novaClasse)
        {
            throw new NotImplementedException();
        }

        public void AtualizarTipoUsuario(int id, TipoUsuario classeAtualizada)
        {
            throw new NotImplementedException();
        }

        public void DeletarTipoUsuario(int id)
        {
            throw new NotImplementedException();
        }
    }
}
