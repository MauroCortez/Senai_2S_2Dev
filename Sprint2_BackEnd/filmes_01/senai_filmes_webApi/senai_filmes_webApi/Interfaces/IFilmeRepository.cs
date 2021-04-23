using senai_filmes_webApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_filmes_webApi.Interfaces
{
    public interface IFilmeRepository
    {
        // TipoRetorno NomeMetodo(TipoParametro NomeParametro)

        List<FilmeDomain> ListarTodos();

        FilmeDomain BurcarPorID(int id);

        void Cadastrar(FilmeDomain novoFilme);

        void AtualizarIdCorpo(FilmeDomain filme);

        void AtualizarIdUrl(int id, FilmeDomain fime);

        void Deletar(int id);
    }
}
