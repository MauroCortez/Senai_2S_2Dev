using HROADS_tarde.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HROADS_tarde.Interfaces
{
    interface IUsuarioRepository
    {
        List<Usuario> Listar();

        Usuario BuscarClasseporEmailSenha(int id);

        void CadastrarUsuario(Usuario novaClasse);

        void AtualizarUsuario(int id, Usuario classeAtualizada);

        void DeletarUsuario(int id);
    }
}
