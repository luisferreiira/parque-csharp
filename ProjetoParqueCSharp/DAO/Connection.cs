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

        // Cadastra o visitante
        public bool InserirVisitante(Visitante visitante)
        {
            DataTable resultado = ExecutarConsulta(
                "p_inserirVisitante",
                new MySqlParameter("novoVisitante", visitante.nomeVisitante),
                new MySqlParameter("visitanteNascimento", visitante.dataNascimento.Date),
                new MySqlParameter("visitanteEmail", (object?)visitante.email ?? DBNull.Value),
                new MySqlParameter("visitanteSenha", (object?)visitante.senha ?? DBNull.Value)
            );

            
            if (!resultado.Columns.Contains("codVisitante") || resultado.Rows.Count == 0)
            {
                mensagem = TraduzirErroVisitante(mensagem);
                return false;
            }

            mensagem = "Visitante cadastrado com sucesso.";
            return true;
        }

        // Atualiza o visitante
        public bool AtualizarVisitante(Visitante visitante)
        {
            DataTable resultado = ExecutarConsulta(
                "p_atualizarVisitante",
                new MySqlParameter("atualizarVisitante", visitante.codVisitante),
                new MySqlParameter("visitanteNome", visitante.nomeVisitante),
                new MySqlParameter("visitanteNascimento", visitante.dataNascimento.Date),
                new MySqlParameter("visitanteEmail", (object?)visitante.email ?? DBNull.Value),
                new MySqlParameter("visitanteSenha", (object?)visitante.senha ?? DBNull.Value)
            );

            // A procedure devolve
            if (resultado.Columns.Contains("ERRO") && resultado.Rows.Count > 0)
            {
                mensagem = Convert.ToString(resultado.Rows[0]["ERRO"]) ?? "";
                return false;
            }

            if (!resultado.Columns.Contains("codVisitante"))
            {
                mensagem = TraduzirErroVisitante(mensagem);
                return false;
            }

            mensagem = "Visitante atualizado com sucesso.";
            return true;
        }

       
        public bool ExcluirVisitante(int codigoVisitante)
        {
            DataTable resultado = ExecutarConsulta(
                "p_deletarVisitante",
                new MySqlParameter("deletarVisitante", codigoVisitante));

            // A procedure devolve
            if (resultado.Columns.Contains("erro") && resultado.Rows.Count > 0)
            {
                mensagem = Convert.ToString(resultado.Rows[0]["erro"]) ?? "";
                return false;
            }

            if (!resultado.Columns.Contains("linhasAfetadas") || resultado.Rows.Count == 0)
            {
                if (string.IsNullOrWhiteSpace(mensagem))
                    mensagem = "A procedure não retornou o resultado da exclusão.";

                return false;
            }

            mensagem = "Visitante excluído com sucesso.";
            return true;
        }

        // e mail existente erro
        private static string TraduzirErroVisitante(string erro)
        {
            if (erro.Contains("Duplicate entry", StringComparison.OrdinalIgnoreCase))
                return "Já existe um visitante cadastrado com este e-mail.";

            return erro;
        }

        public DataTable LoginFuncionario(string email)
        {
            return ExecutarConsulta(
                "p_loginFuncionario",
                new MySqlParameter("p_email", email)
            );
        }

        public DataTable ListarIngressosBrinquedos()
        {
            return ExecutarConsulta("p_listarIngressosBrinquedos");
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

        // itens compra
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

        public bool InserirCompraIngressoBrinquedo(CompraIngressoBrinquedo item)
        {
            return ExecutarComando(
                "p_inserirCompraIB",
                new MySqlParameter("cibCompra", item.compra_codCompra),
                new MySqlParameter("cibIngresso",item.ingressoBrinquedos_codIngresso),
                new MySqlParameter("cibQuantidade",item.quantIngBrinq)
            );
        }

        public bool InserirCompraIngressoEvento(CompraIngressoEvento item)
        {
            return ExecutarComando(
                "p_inserirCompraIE",
                new MySqlParameter("cieCompra", item.compra_codCompra),
                new MySqlParameter("cieIngresso",item.ingressoEventos_codIngresso),
                new MySqlParameter("cieQuantidade",item.quantIngEvent)
            );
        }

        public bool InserirCompraLanche(CompraLanche item)
        {
            return ExecutarComando(
                "p_inserirCompraLanche",
                new MySqlParameter("clCompra", item.compra_codCompra),
                new MySqlParameter("clLanche", item.lanche_codLanche),
                new MySqlParameter("clQuantidade",item.quantidadeLanche)
            );
        }

        // insere compra
        public int GravarCompra(Compra compra, Sacola sacola)
        {
            using var conexao = CriarConexao();
            try
            {
                conexao.Open();
                using var transacao = conexao.BeginTransaction();

                // cria registro compra
                using var comandoCompra = CriarComando("p_inserirCompra", conexao);
                comandoCompra.Transaction = transacao;
                comandoCompra.Parameters.AddWithValue("compraPagar", compra.tipoPagamento);
                comandoCompra.Parameters.AddWithValue("compraVisitante", compra.codVisitante);
                comandoCompra.Parameters.AddWithValue("compraFuncionario", compra.codFuncionario);
                comandoCompra.ExecuteNonQuery();

                // recupera último id
                using var comandoCodigo = conexao.CreateCommand();
                comandoCodigo.Transaction = transacao;
                comandoCodigo.CommandText = "select last_insert_id();";
                int codCompra = Convert.ToInt32(comandoCodigo.ExecuteScalar());

                // percorre itens sacola
                foreach(ItemSacola item in sacola.itens)
                {
                    // switch tipo item
                    string procedure;
                    string prefixo;
                    // parâmetro padrão
                    string parametroItem = "Ingresso";

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

                        case "Lanche":
                            procedure = "p_inserirCompraLanche";
                            prefixo = "cl";
                            parametroItem = "Lanche";
                            break;

                        default:
                            mensagem = $"Tipo de item ainda não suportado: {item.tipoItem}.";
                            return 0;

                    }

                    // executa procedure correspondente
                    using var comandoItem = CriarComando(procedure, conexao);
                    comandoItem.Transaction = transacao;
                    comandoItem.Parameters.AddWithValue(prefixo + "Compra", codCompra);
                    comandoItem.Parameters.AddWithValue(prefixo + parametroItem, item.codItem);
                    comandoItem.Parameters.AddWithValue(prefixo + "Quantidade", item.quantidade);
                    comandoItem.ExecuteNonQuery();

                }

                // confirma transação
                transacao.Commit();
                return codCompra;
            }
            catch (MySqlException erro)
            {
                mensagem = "Não foi possível gravar a compra: " + erro.Message;
                return 0;
            }
        }

        // Chama a procedure
        public bool ExcluirCompra(int codigoCompra)
        {
            DataTable resultado = ExecutarConsulta(
                "p_deletarCompra",
                new MySqlParameter("deletarCompra", codigoCompra));

            // Se a consulta
            if (!resultado.Columns.Contains("linhasAfetadas") || resultado.Rows.Count == 0)
            {
                if (string.IsNullOrWhiteSpace(mensagem))
                    mensagem = "A procedure não retornou o resultado da exclusão.";

                return false;
            }

            // Zero indica que
            if (Convert.ToInt32(resultado.Rows[0]["linhasAfetadas"]) == 0)
            {
                mensagem = "A compra já não existe.";
                return false;
            }

            return true;
        }

        // prática procedure select
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

        // prática consulta CrUD
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
