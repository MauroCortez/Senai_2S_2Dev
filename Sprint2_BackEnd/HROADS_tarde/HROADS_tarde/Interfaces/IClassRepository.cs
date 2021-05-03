using HROADS_tarde.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HROADS_tarde.Interfaces
{
    interface IClassRepository
    {
        List<Class> Listar();

        Class BuscarporID(int id);

        void CadastrarClasse(Class novaClasse);

        void AtualizarClasse(int id, Class classeAtualizada);

        void DeletarClasse(int id);
    }
}
