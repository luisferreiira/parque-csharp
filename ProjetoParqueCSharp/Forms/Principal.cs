using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Drawing;
using System.Drawing.Drawing2D;
using ProjetoParqueCSharp.Model;
using ProjetoParqueCSharp.DAO;


namespace ProjetoParqueCSharp.Forms
{
    public partial class Principal : Form
    {
        // sacola instancia inicial
        private readonly Sacola sacola = new Sacola();
        
        private int? codVisitanteCompra;

        // codFuncionário vindo Login
        private readonly int codFuncionarioLogado;

        // logica botao sair
        public bool voltarAoLogin { get; private set; }

        public Principal()
        {
            InitializeComponent();
            // icones do programa
            Icon = IdentidadeVisual.Icone;
            picLogoMenu.Image = IdentidadeVisual.LogoMenu;

            // carregar itens catalogo
            dgvBrinquedos.CellContentClick += DgvBrinquedos_CellContentClick;
            dgvEventos.CellContentClick += DgvEventos_CellContentClick;
            dgvLanches.CellContentClick += DgvLanches_CellContentClick;


            // função de estilo
            ArredondarControle(pnlVisitanteCompra, 12);
            ArredondarControle(btnSelecionarVisitante, 8);

            // chama métodos carregar
            Shown += CarregarIngressosBrinquedos;
            Shown += CarregarIngressosEventos;
            Shown += CarregarLanches;

            // consultar compras itens
            btnVerHistorico.Click += AbrirHistoricoCompras;

            // selecionar visitante comprando
            btnSelecionarVisitante.Click += AbrirSelecaoVisitante;

            // CRUD visitantes
            btnVisitantes.Click += AbrirCadastroVisitantes;

            // remove item sacola
            btnRemoverItemSacola.Click += RemoverItemSacola;

            // finaliza compra
            btnFinalizarCompra.Click += FinalizarCompra;

            // logout funcionario
            btnSair.Click += SairDaSessao;
        }

        // dados form Login
        public Principal(int codigoFuncionario, string nomeFuncionario, string nomeCargo)
            : this()
        {
            codFuncionarioLogado = codigoFuncionario;
            lblNomeFuncionario.Text = nomeFuncionario;
            lblCargoFuncionario.Text = nomeCargo;
        }

        // Abre o histórico
        private void AbrirHistoricoCompras(object? sender, EventArgs e)
        {
            using var historico = new HistoricoCompras();
            historico.ShowDialog(this);
        }

        // Abre o cadastro
        private void AbrirCadastroVisitantes(object? sender, EventArgs e)
        {
            using var cadastro = new GerenciarVisitantes();
            cadastro.ShowDialog(this);

            // visitante nao atualiza

            if (codVisitanteCompra is null)
                return;

            var dao = new Connection();
            DataTable visitantes = dao.ListarVisitantes();

            if (!visitantes.Columns.Contains("codVisitante"))
            {
                codVisitanteCompra = null;
                lblVisitanteSelecionado.Text = "Selecione um visitante";

                MessageBox.Show(
                    this,
                    "Não foi possível atualizar o visitante. Selecione novamente.");

                return;
            }

            // Procura o visitante
            foreach (DataRow visitante in visitantes.Rows)
            {
                int codigo = Convert.ToInt32(visitante["codVisitante"]);

                if (codigo == codVisitanteCompra.Value)
                {
                    
                    lblVisitanteSelecionado.Text =
                        Convert.ToString(visitante["nomeVisitante"]) ?? "";

                    return;
                }
            }

            // Se não encontrou
            codVisitanteCompra = null;
            lblVisitanteSelecionado.Text = "Selecione um visitante";
        }

        // Abre a lista
        private void AbrirSelecaoVisitante(object? sender, EventArgs e)
        {
            using var janela = new SelecionarVisitante();

            

            if (janela.ShowDialog(this) != DialogResult.OK)
                return;

            // dados do SelecaoVisitante
            codVisitanteCompra = janela.codVisitanteSelecionado;
            lblVisitanteSelecionado.Text = janela.nomeVisitanteSelecionado;

        }

        // Carrega os ingressos
        private void CarregarIngressosBrinquedos(object? sender, EventArgs e)
        {
            var dao = new Connection();

            var ingressosBrinquedos = dao.ListarIngressosBrinquedos();

            if (!ingressosBrinquedos.Columns.Contains("nomeBrinquedo"))
            {
                MessageBox.Show(this, $"Falha ao listar ingressos de brinquedos.\n{dao.mensagem}");
                return;
            }

            dgvBrinquedos.Rows.Clear();

            foreach (DataRow ingresso in ingressosBrinquedos.Rows)
            {
                // Preenche a grade
                dgvBrinquedos.Rows.Add(
                    Convert.ToString(ingresso["nomeBrinquedo"]),
                    Convert.ToString(ingresso["tipoIngresso"]),
                    Convert.ToDecimal(ingresso["valor"]),
                    1,
                    null,
                    Convert.ToInt32(ingresso["codIngresso"]));
            }
        }

        // Carrega os ingressos
        private void CarregarIngressosEventos(object? sender, EventArgs e)
        {
            var dao = new Connection();
            var ingressosEventos = dao.ListarIngressosEventos();

            // Confere se as
            if (!ingressosEventos.Columns.Contains("nomeEvento"))
            {
                MessageBox.Show(this, "Não foi possível carregar os ingressos de evento");
                return;
            }

            dgvEventos.Rows.Clear();

            foreach (DataRow ingresso in ingressosEventos.Rows)
            {
                // Preenche a grade
                dgvEventos.Rows.Add(
                    Convert.ToString(ingresso["nomeEvento"]),
                    Convert.ToString(ingresso["tipoIngresso"]),
                    Convert.ToDecimal(ingresso["valor"]),
                    1,
                    null,
                    Convert.ToInt32(ingresso["codIngresso"]));
            }
        }

        // Carrega os lanches
        private void CarregarLanches(object? sender, EventArgs e)
        {
            var dao = new Connection();
            var lanches = dao.ListarLanches();

            // Confere se a
            if (!lanches.Columns.Contains("codLanche"))
            {
                MessageBox.Show(this, $"Falha ao listar lanches.\n{dao.mensagem}");
                return;
            }

            dgvLanches.Rows.Clear();

            foreach (DataRow lanche in lanches.Rows)
            {
                // Preenche a grade
                dgvLanches.Rows.Add(
                    Convert.ToString(lanche["nomeLanche"]),
                    Convert.ToString(lanche["descricao"]),
                    Convert.ToDecimal(lanche["precoLanche"]),
                    1,
                    null,
                    Convert.ToInt32(lanche["codLanche"]));
            }
        }

        // botao adicionar catalogo
        private void DgvBrinquedos_CellContentClick(object? sender, DataGridViewCellEventArgs e)
        {
            // Ignora cliques errados
            if (e.RowIndex < 0 || e.ColumnIndex != colAdicionarBrinquedo.Index)
                return;

            // pega selecionado
            var linha = dgvBrinquedos.Rows[e.RowIndex];
            string? textoQuantidade = Convert.ToString(linha.Cells[colQtdBrinquedo.Index].Value);

            // Só aceita inteiros
            if (!int.TryParse(textoQuantidade, out int quantidade) || quantidade <= 0)
            {
                MessageBox.Show(this, "Digite uma quantidade inteira maior que zero.");
                return;
            }

            // armazena o objeto
            int codigo = Convert.ToInt32(linha.Cells[colCodIngressoBrinquedo.Index].Value);
            decimal preco = Convert.ToDecimal(linha.Cells[colPrecoBrinquedo.Index].Value);
            string brinquedo = Convert.ToString(linha.Cells[colBrinquedo.Index].Value) ?? "";
            string tipoIngresso = Convert.ToString(
                linha.Cells[colTipoIngressoBrinquedo.Index].Value) ?? "";

            // salva na sacola
            AdicionarItemSacola(
                "IngressoBrinquedo", codigo, $"{brinquedo} — {tipoIngresso}", preco, quantidade);
        }

        // Lê o ingresso
        private void DgvEventos_CellContentClick(object? sender, DataGridViewCellEventArgs e)
        {
            // Ignora cliques
            if (e.RowIndex < 0 || e.ColumnIndex != colAdicionarEvento.Index)
                return;

            var linha = dgvEventos.Rows[e.RowIndex];
            string? textoQuantidade = Convert.ToString(linha.Cells[colQtdEvento.Index].Value);

            // Só aceita inteiros
            if (!int.TryParse(textoQuantidade, out int quantidade) || quantidade <= 0)
            {
                MessageBox.Show(this, "Digite uma quantidade inteira maior que zero.");
                return;
            }

            // Lê o objeto
            int codigo = Convert.ToInt32(linha.Cells[colCodIngressoEvento.Index].Value);
            decimal preco = Convert.ToDecimal(linha.Cells[colPrecoEvento.Index].Value);
            string evento = Convert.ToString(linha.Cells[colEvento.Index].Value) ?? "";
            string tipoIngresso = Convert.ToString(
                linha.Cells[colTipoIngressoEvento.Index].Value) ?? "";

            // add obj list
            AdicionarItemSacola(
                "IngressoEvento", codigo, $"{evento} — {tipoIngresso}", preco, quantidade);
        }

        // Lê o lanche
        private void DgvLanches_CellContentClick(object? sender, DataGridViewCellEventArgs e)
        {
            // Ignora cliques 
            if (e.RowIndex < 0 || e.ColumnIndex != colAdicionarLanche.Index)
                return;

            var linha = dgvLanches.Rows[e.RowIndex];
            string? textoQuantidade = Convert.ToString(linha.Cells[colQtdLanche.Index].Value);

            // Só aceita inteiros
            if (!int.TryParse(textoQuantidade, out int quantidade) || quantidade <= 0)
            {
                MessageBox.Show(this, "Digite uma quantidade inteira maior que zero.");
                return;
            }

            // Lê o obj
            int codigo = Convert.ToInt32(linha.Cells[colCodLanche.Index].Value);
            decimal preco = Convert.ToDecimal(linha.Cells[colPrecoLanche.Index].Value);
            string lanche = Convert.ToString(linha.Cells[colLanche.Index].Value) ?? "";

            // add obj list
            AdicionarItemSacola("Lanche", codigo, lanche, preco, quantidade);
        }

        // coloca item sacola
        private void AdicionarItemSacola(
            string tipo, int codigo, string descricao, decimal preco, int quantidade)
        {
            ItemSacola? item = null;

            // Procura tipo e codigo
            foreach (ItemSacola existente in sacola.itens)
            {
                if (existente.tipoItem == tipo && existente.codItem == codigo)
                {
                    // caso item inserido
                    item = existente;
                    break;
                }
            }

            // caso item novo
            if (item is null)
            {
                item = new ItemSacola
                {
                    tipoItem = tipo,
                    codItem = codigo,
                    descricaoItem = descricao,
                    valorUnitario = preco
                };

                sacola.itens.Add(item);
            }

            // Atualiza a quantidade
            item.quantidade += quantidade;
            item.subtotal = item.quantidade * item.valorUnitario;
            AtualizarSacola();
        }

        // Preenche a grade
        private void AtualizarSacola()
        {
            var cultura = System.Globalization.CultureInfo.GetCultureInfo("pt-BR");
            decimal total = 0m;

     
            dgvSacola.Rows.Clear();

            foreach (ItemSacola item in sacola.itens)
            {
                // Exibe dados sacola
                int indice = dgvSacola.Rows.Add(
                    item.descricaoItem,
                    item.quantidade,
                    item.subtotal.ToString("C2", cultura));

                // pega o objeto
                dgvSacola.Rows[indice].Tag = item;

                // faz calculo total
                total += item.subtotal;
            }

            lblTotalSacola.Text = $"Total: {total.ToString("C2", cultura)}";
        }

        // remove da sacola
        private void RemoverItemSacola(object? sender, EventArgs e)
        {
            if (dgvSacola.SelectedRows.Count == 0)
            {
                MessageBox.Show(this, "Selecione um item da sacola para remover");
                return;
            }

            // pega o item
            if (dgvSacola.SelectedRows[0].Tag is ItemSacola item)
            {
                sacola.itens.Remove(item);
                AtualizarSacola();
            }

        }

        // finalizar compra
        private void FinalizarCompra(object? sender, EventArgs e)
        {

            // validando visitante
            if (codVisitanteCompra is null)
            {
                MessageBox.Show(this, "Selecione um visitante para a compra.");
                return;
            }

            // validando sacola nula
            if (sacola.itens.Count == 0)
            {
                MessageBox.Show(this, "Adicione pelo menos um item à sacola.");
                return;
            }

            // validando forma pagamento
            if (cbxFormaPagamento.SelectedItem is not string formaPagamento)
            {
                MessageBox.Show(this, "Selecione a forma de pagamento.");
                return;
            }

            // última revisão messagebox
            string revisao = $"""
                Visitante: {lblVisitanteSelecionado.Text}
                Pagamento: {formaPagamento}
                {lblTotalSacola.Text}
                """;

            // Pede confirmação antes
            var resposta = MessageBox.Show(
                this, revisao, "Confirmar compra",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question,
                MessageBoxDefaultButton.Button2);

            if (resposta != DialogResult.Yes)
                return;

            // Monta a compra
            var compra = new Compra
            {
                codVisitante = codVisitanteCompra.Value,
                codFuncionario = codFuncionarioLogado,
                tipoPagamento = formaPagamento
            };

            var dao = new Connection();
            int codigoCompra = dao.GravarCompra(compra, sacola);

            // Se houver erro
            if (codigoCompra == 0)
            {
                MessageBox.Show(this, dao.mensagem, "Erro ao gravar compra");
                return;
            }

            // Prepara nova compra
            sacola.itens.Clear();
            codVisitanteCompra = null;
            lblVisitanteSelecionado.Text = "Nenhum visitante selecionado";
            cbxFormaPagamento.SelectedIndex = -1;
            AtualizarSacola();

            MessageBox.Show(this, $"Compra nº {codigoCompra} registrada com sucesso.");
        }

        private static void ArredondarControle(Control controle, int raio)
        {
            void AtualizarContorno()
            {
                int largura = controle.Width;
                int altura = controle.Height;
                int diametro = Math.Min(raio * 2, Math.Min(largura, altura));

                if (diametro <= 0)
                    return;

                using var caminho = new GraphicsPath();
                caminho.AddArc(0, 0, diametro, diametro, 180, 90);
                caminho.AddArc(largura - diametro, 0, diametro, diametro, 270, 90);
                caminho.AddArc(largura - diametro, altura - diametro, diametro, diametro, 0, 90);
                caminho.AddArc(0, altura - diametro, diametro, diametro, 90, 90);
                caminho.CloseFigure();

                controle.Region = new Region(caminho);
            }

            controle.SizeChanged += (_, _) => AtualizarContorno();
            AtualizarContorno();
        }

        // método para sair
        private void SairDaSessao(object? sender, EventArgs e)
        {
            // compra em andamento
            if (codVisitanteCompra.HasValue || sacola.itens.Count > 0)
            {
                var resposta = MessageBox.Show(
                    this,
                    "A compra em andamento será descartada. Deseja sair?",
                    "Sair da sessão",
                    MessageBoxButtons.YesNo,
                    MessageBoxIcon.Question,
                    MessageBoxDefaultButton.Button2);

                if (resposta != DialogResult.Yes)
                    return;
            }

            voltarAoLogin = true;
            Close();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void Principal_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void pnlConteudo_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
