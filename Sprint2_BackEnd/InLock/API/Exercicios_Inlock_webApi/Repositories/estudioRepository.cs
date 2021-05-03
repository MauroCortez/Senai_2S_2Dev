using Exercicios_Inlock_webApi.Domains;
using Exercicios_Inlock_webApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Exercicios_Inlock_webApi.Repositories
{
    public class estudioRepository : IEstudioRepository
    {
        private string ConexaoString = "Data Source=DESKTOP-M4B6U15; initial catalog=inlock_games_tarde; user Id=sa; pwd=mbc159753123";

        /// <summary>
        /// Lista os estudios
        /// </summary>
        /// <returns> Retorna a lista de estudios </returns>
        public List<estudioDomain> ListarEstudios()
        {
            List<estudioDomain> EstudioLista = new List<estudioDomain>();

            using (SqlConnection con = new SqlConnection(ConexaoString))
            {
                string queryEstudio = "select idEstudio,nomeEstudio from estudios";

                using (SqlCommand cmd = new SqlCommand(queryEstudio, con))
                {
                
                    con.Open();

                    SqlDataReader rdr = cmd.ExecuteReader();

                    while (rdr.Read())
                    {
                        estudioDomain itensEstudio = new estudioDomain
                        {
                            idEstudio = Convert.ToInt32(rdr["idEstudio"]),
                            nomeEstudio = rdr["nomeEstudio"].ToString()

                        };

                        EstudioLista.Add(itensEstudio);
                    }

                    return EstudioLista;


                }

            }

        }
    }
}
