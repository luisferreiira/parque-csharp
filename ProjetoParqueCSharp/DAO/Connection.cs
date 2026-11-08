using System;
using System.Data;
using System.Security.Authentication;
using MySql.Data.MySqlClient;
using ProjetoParqueCSharp.Model;

namespace ProjetoParqueCSharp.DAO
{
    public class Connection
    {
        private readonly string stringConexao =
            "Server=localhost;" +
            "Port=3307;" +
            "Database=projeto_parque;" +
            "Uid=root;" +
            "Pwd=1234;";

        public string mensagem { get; private set; } = "";

        private MySqlConnection CriarConexao()
        {
            return new MySqlConnection(stringConexao);
        }

        private MySqlCommand CriarComando(
            string nomeProcedure,
            MySqlConnection conexao)
        {
            MySqlCommand comando =
                new MySqlCommand(nomeProcedure, conexao);

            comando.CommandType =
                CommandType.StoredProcedure;

            return comando;
        }

        public bool TestarConexao()
        {
            using (MySqlConnection conexao = CriarConexao())
            {
                try
                {
                    conexao.Open();
                    mensagem = "Conexão realizada com sucesso.";
                    return true;
                }
                catch (MySqlException erro)
                {
                    mensagem = "Erro na conexão: " + erro.Message;
                    return false;
                }
            }
        }

        public DataTable ListarVisitantes()
        {
            return ExecutarConsulta("p_listarVisitantes");
        }

        public DataTable BuscarVisitante(string busca)
        {
            return ExecutarConsulta(
                "p_buscarVisitante",
                new MySqlParameter("p_busca", busca)
            );
        }

        public DataTable LoginFuncionario(string email)
        {
            return ExecutarConsulta(
                "p_loginFuncionario",
                new MySqlParameter("p_email", email)
            );
        }

        public DataTable ListarBrinquedos()
        {
            return ExecutarConsulta("p_listarBrinquedos");
        }

        public DataTable ListarIngressosBrinquedos()
        {
            return ExecutarConsulta("p_listarIngressosBrinquedos");
        }

        public DataTable ListarEventos()
        {
            return ExecutarConsulta("p_listarEventos");
        }

        public DataTable ListarIngressosEventos()
        {
            return ExecutarConsulta("p_listarIngressosEventos");
        }

        public DataTable ListarLanches()
        {
            return ExecutarConsulta("p_listarLanches");
        }

        public DataTable ListarCompras()
        {
            return ExecutarConsulta("p_listarCompras");
        }

        // Consulta apenas os itens da compra escolhida no histórico.
        public DataTable ListarItensCompra(int codigoCompra)
        {
            return ExecutarConsulta(
                "p_listarItensCompra",
                new MySqlParameter("p_codCompra", codigoCompra));
        }

        public int InserirCompra(Compra compra)
        {
            using (MySqlConnection conexao = CriarConexao())
            {
                try
                {
                    conexao.Open();

                    MySqlCommand comando = CriarComando(
                        "p_inserirCompra",
                        conexao
                    );

                    comando.Parameters.AddWithValue(
                        "compraPagar",
                        compra.tipoPagamento
                    );

                    comando.Parameters.AddWithValue(
                        "compraVisitante",
                        compra.codVisitante
                    );

                    comando.Parameters.AddWithValue(
                        "compraFuncionario",
                        compra.codFuncionario
                    );

                    using (MySqlDataReader leitor =
                           comando.ExecuteReader())
                    {
                        if (leitor.Read())
                        {
                            mensagem = "Compra criada com sucesso.";
                            return Convert.ToInt32(
                                leitor["codCompra"]
                            );
                        }
                    }

                    mensagem = "A compra não foi encontrada após o cadastro.";
                    return 0;
                }
                catch (MySqlException erro)
                {
                    mensagem = "Erro ao inserir compra: " + erro.Message;
                    return 0;
                }
            }
        }

        public bool InserirCompraIngressoBrinquedo(
            CompraIngressoBrinquedo item)
        {
            return ExecutarComando(
                "p_inserirCompraIB",
                new MySqlParameter("cibCompra", item.compra_codCompra),
                new MySqlParameter(
                    "cibIngresso",
                    item.ingressoBrinquedos_codIngresso
                ),
                new MySqlParameter(
                    "cibQuantidade",
                    item.quantIngBrinq
                )
            );
        }

        public bool InserirCompraIngressoEvento(
            CompraIngressoEvento item)
        {
            return ExecutarComando(
                "p_inserirCompraIE",
                new MySqlParameter("cieCompra", item.compra_codCompra),
                new MySqlParameter(
                    "cieIngresso",
                    item.ingressoEventos_codIngresso
                ),
                new MySqlParameter(
                    "cieQuantidade",
                    item.quantIngEvent
                )
            );
        }

        public bool InserirCompraLanche(CompraLanche item)
        {
            return ExecutarComando(
                "p_inserirCompraLanche",
                new MySqlParameter("clCompra", item.compra_codCompra),
                new MySqlParameter("clLanche", item.lanche_codLanche),
                new MySqlParameter(
                    "clQuantidade",
                    item.quantidadeLanche
                )
            );
        }

        // insere a compra e todos os objetos juntos
        public int GravarCompra(Compra compra, Sacola sacola)
        {
            using var conexao = CriarConexao();
            try
            {
                conexao.Open();
                using var transacao = conexao.BeginTransaction();

                // cria o registro na entidade compra
                using var comandoCompra = CriarComando("p_inserirCompra", conexao);
                comandoCompra.Transaction = transacao;
                comandoCompra.Parameters.AddWithValue("compraPagar", compra.tipoPagamento);
                comandoCompra.Parameters.AddWithValue("compraVisitante", compra.codVisitante);
                comandoCompra.Parameters.AddWithValue("compraFuncionario", compra.codFuncionario);
                comandoCompra.ExecuteNonQuery();

                // recupera o último cod gerado (o que acabou de inserir)
                using var comandoCodigo = conexao.CreateCommand();
                comandoCodigo.Transaction = transacao;
                comandoCodigo.CommandText = "select last_insert_id();";
                int codCompra = Convert.ToInt32(comandoCodigo.ExecuteScalar());

                foreach(ItemSacola item in sacola.itens)
                {
                    // switch para cada tipo de item - ingressos ou lanche
                    string procedure;
                    string prefixo;

                    switch (item.tipoItem)
                    {
                        case "IngressoBrinquedo":
                            procedure = "p_inserirCompraIB";
                            prefixo = "cib";
                            break;

                        case "IngressoEvento":
                            procedure = "p_inserirCompraIE";
                            prefixo = "cie";
                            break;

                        default:
                            mensagem = $"Tipo de item ainda não suportado: {item.tipoItem}.";
                            return 0;

                    }

                    using var comandoItem = CriarComando(procedure, conexao);
                    comandoItem.Transaction = transacao;
                    comandoItem.Parameters.AddWithValue(prefixo + "Compra", codCompra);
                    comandoItem.Parameters.AddWithValue(prefixo + "Ingresso", item.codItem);
                    comandoItem.Parameters.AddWithValue(prefixo + "Quantidade", item.quantidade);
                    comandoItem.ExecuteNonQuery();

                }

                // confirma transação após todos itens inseridos
                transacao.Commit();
                return codCompra;
            }
            catch (MySqlException erro)
            {
                mensagem = "Não foi possível gravar a compra: " + erro.Message;
                return 0;
            }
        }

        // Chama a procedure e confirma se a compra foi excluída.
        public bool ExcluirCompra(int codigoCompra)
        {
            DataTable resultado = ExecutarConsulta(
                "p_deletarCompra",
                new MySqlParameter("deletarCompra", codigoCompra));

            // Se a consulta falhou, ExecutarConsulta já guardou o erro em mensagem.
            if (!resultado.Columns.Contains("linhasAfetadas") || resultado.Rows.Count == 0)
            {
                if (string.IsNullOrWhiteSpace(mensagem))
                    mensagem = "A procedure não retornou o resultado da exclusão.";

                return false;
            }

            // Zero indica que nenhuma compra tinha o código informado.
            if (Convert.ToInt32(resultado.Rows[0]["linhasAfetadas"]) == 0)
            {
                mensagem = "A compra já não existe.";
                return false;
            }

            return true;
        }

        private DataTable ExecutarConsulta(
            string nomeProcedure,
            params MySqlParameter[] parametros)
        {
            DataTable tabela = new DataTable();

            using (MySqlConnection conexao = CriarConexao())
            {
                try
                {
                    conexao.Open();

                    MySqlCommand comando = CriarComando(
                        nomeProcedure,
                        conexao
                    );

                    foreach (MySqlParameter parametro in parametros)
                    {
                        comando.Parameters.Add(parametro);
                    }

                    MySqlDataAdapter adaptador =
                        new MySqlDataAdapter(comando);

                    adaptador.Fill(tabela);
                }
                catch (MySqlException erro)
                {
                    mensagem = "Erro na consulta: " + erro.Message;
                }
            }

            return tabela;
        }

        private bool ExecutarComando(
            string nomeProcedure,
            params MySqlParameter[] parametros)
        {
            using (MySqlConnection conexao = CriarConexao())
            {
                try
                {
                    conexao.Open();

                    MySqlCommand comando = CriarComando(
                        nomeProcedure,
                        conexao
                    );

                    foreach (MySqlParameter parametro in parametros)
                    {
                        comando.Parameters.Add(parametro);
                    }

                    comando.ExecuteNonQuery();
                    mensagem = "Operação realizada com sucesso.";
                    return true;
                }
                catch (MySqlException erro)
                {
                    mensagem = "Erro na operação: " + erro.Message;
                    return false;
                }
            }
        }
    }
}
