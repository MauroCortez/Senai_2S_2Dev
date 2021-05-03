using HROADS_tarde.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HROADS_tarde.Interfaces
{
    interface IPersonagenRepository
    {
        List<Personagen> Listar();

        Personagen BuscarporID(int id);

        void CadastrarPersonagem(Personagen novaClasse);

        void AtualizarPersonagem(int id, Personagen classeAtualizada);

        void DeletarPersonagem(int id);
    }
}
