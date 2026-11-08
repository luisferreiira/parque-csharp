using System;
using System.Collections.Generic;
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
        private readonly Sacola sacola = new Sacola();
        // Guarda o código do visitante da compra. Null indica que ninguém foi escolhido.
        private int? codVisitanteCompra;

        // cod do funcionário
        private readonly int codFuncionarioLogado;
        public bool voltarAoLogin { get; private set; }

        public Principal()
        {
            InitializeComponent();
            //icones do programa na barra de tarefas e na barra superior da janela
            Icon = IdentidadeVisual.Icone;
            picLogoMenu.Image = IdentidadeVisual.LogoMenu;
            dgvBrinquedos.CellContentClick += DgvBrinquedos_CellContentClick;
            dgvEventos.CellContentClick += DgvEventos_CellContentClick;


            // função de estilo para arredondar bordas
            ArredondarControle(pnlVisitanteCompra, 12);
            ArredondarControle(btnSelecionarVisitante, 8);

            // chama os métodos que carregam os ingressos
            Shown += CarregarIngressosBrinquedos;
            Shown += CarregarIngressosEventos;

            // Liga o botão Ver histórico à abertura da janela de compras.
            btnVerHistorico.Click += AbrirHistoricoCompras;

            // Abre a janela de seleção de visitante pelo botão da faixa da compra.
            btnSelecionarVisitante.Click += AbrirSelecaoVisitante;

            // Liga o botão remover ao método que remove o item selecionado.
            btnRemoverItemSacola.Click += RemoverItemSacola;

            // Liga o botão Finalizar compra ao método que valida os dados.
            btnFinalizarCompra.Click += FinalizarCompra;

            // liga o botão sair
            btnSair.Click += SairDaSessao;
        }

        // Recebe os dados do login e exibe o funcionário no rodapé do menu.
        public Principal(int codigoFuncionario, string nomeFuncionario, string nomeCargo)
            : this()
        {
            codFuncionarioLogado = codigoFuncionario;
            lblNomeFuncionario.Text = nomeFuncionario;
            lblCargoFuncionario.Text = nomeCargo;
        }

        // Abre o histórico sobre a tela de atendimento.
        private void AbrirHistoricoCompras(object? sender, EventArgs e)
        {
            using var historico = new HistoricoCompras();
            historico.ShowDialog(this);
        }

        // Abre a lista e atualiza a compra quando o funcionário confirma a escolha.
        private void AbrirSelecaoVisitante(object? sender, EventArgs e)
        {
            using var janela = new SelecionarVisitante();

            // Se o funcionário cancelar, encerra o método antes de alterar a compra.

            if (janela.ShowDialog(this) != DialogResult.OK)
                return;

            codVisitanteCompra = janela.codVisitanteSelecionado;
            lblVisitanteSelecionado.Text = janela.nomeVisitanteSelecionado;

        }

        // Carrega os ingressos de brinquedos
        private void CarregarIngressosBrinquedos(object? sender, EventArgs e)
        {
            var dao = new Connection();

            // Confere se as consultas retornaram as colunas esperadas.

            var brinquedos = dao.ListarBrinquedos();

            if (!brinquedos.Columns.Contains("codBrinquedo"))
            {
                MessageBox.Show(this, $"Falha ao listar brinquedos.\n{dao.mensagem}");
                return;
            }

            var ingressosBrinquedos = dao.ListarIngressosBrinquedos();

            if (!ingressosBrinquedos.Columns.Contains("codIngresso"))
            {
                MessageBox.Show(this, $"Falha ao listar ingressos de brinquedos.\n{dao.mensagem}");
                return;
            }

            // Organiza os nomes pelo código do brinquedo para encontrar cada um pelo ingresso.
            var nomesPorCodigo = new Dictionary<int, string>();

            foreach (DataRow brinquedo in brinquedos.Rows)
            {
                int codigo = Convert.ToInt32(brinquedo["codBrinquedo"]);
                nomesPorCodigo[codigo] = Convert.ToString(brinquedo["nomeBrinquedo"]) ?? "";
            }

            dgvBrinquedos.Rows.Clear();

            foreach (DataRow ingresso in ingressosBrinquedos.Rows)
            {
                // O ingresso guarda o código do brinquedo ao qual pertence.
                int codBrinquedo = Convert.ToInt32(ingresso["brinquedo_codBrinquedo"]);

                if (!nomesPorCodigo.TryGetValue(codBrinquedo, out string? nomeBrinquedo))
                    continue;

                // Preenche a grade na ordem do Designer e começa a quantidade em 1.
                dgvBrinquedos.Rows.Add(
                    nomeBrinquedo,
                    Convert.ToString(ingresso["tipoIngresso"]),
                    Convert.ToDecimal(ingresso["valor"]),
                    1,
                    null,
                    Convert.ToInt32(ingresso["codIngresso"]));
            }
        }

        // Carrega os ingressos de eventos
        private void CarregarIngressosEventos(object? sender, EventArgs e)
        {
            var dao = new Connection();
            var eventos = dao.ListarEventos();
            var ingressosEventos = dao.ListarIngressosEventos();

            // Confere se as consultas retornaram as colunas esperadas.
            if (!eventos.Columns.Contains("codEventos") || !ingressosEventos.Columns.Contains("codIngresso"))
            {
                MessageBox.Show(this, "Não foi possível carregar os ingressos de evento");
                return;
            }

            // Organiza os nomes pelo código do evento para encontrar cada um pelo ingresso.
            var nomesPorCodigo = new Dictionary<int, string>();

            foreach (DataRow evento in eventos.Rows)
            {
                int codigo = Convert.ToInt32(evento["codEventos"]);
                nomesPorCodigo[codigo] = Convert.ToString(evento["nomeEvento"]) ?? "";
            }

            dgvEventos.Rows.Clear();

            foreach (DataRow ingresso in ingressosEventos.Rows)
            {
                // O ingresso guarda o código do brinquedo ao qual pertence.
                int codEvento = Convert.ToInt32(ingresso["eventos_codEventos"]);

                if (!nomesPorCodigo.TryGetValue(codEvento, out string? nomeEvento))
                    continue;

                // Preenche a grade na ordem do Designer e começa a quantidade em 1.
                dgvEventos.Rows.Add(
                    nomeEvento,
                    Convert.ToString(ingresso["tipoIngresso"]),
                    Convert.ToDecimal(ingresso["valor"]),
                    1,
                    null,
                    Convert.ToInt32(ingresso["codIngresso"]));
            }
        }

        // INSERIR CARREGARLANCHES AQUI

        // Lê o ingresso da aba Brinquedos quando o funcionário clica em Adicionar.
        private void DgvBrinquedos_CellContentClick(object? sender, DataGridViewCellEventArgs e)
        {
            // Ignora cliques no cabeçalho ou em outra coluna.
            if (e.RowIndex < 0 || e.ColumnIndex != colAdicionarBrinquedo.Index)
                return;

            var linha = dgvBrinquedos.Rows[e.RowIndex];
            string? textoQuantidade = Convert.ToString(linha.Cells[colQtdBrinquedo.Index].Value);

            // Só aceita quantidades inteiras maiores que zero.
            if (!int.TryParse(textoQuantidade, out int quantidade) || quantidade <= 0)
            {
                MessageBox.Show(this, "Digite uma quantidade inteira maior que zero.");
                return;
            }

            // Lê o código oculto do ingresso e os dados exibidos na linha.
            int codigo = Convert.ToInt32(linha.Cells[colCodIngressoBrinquedo.Index].Value);
            decimal preco = Convert.ToDecimal(linha.Cells[colPrecoBrinquedo.Index].Value);
            string brinquedo = Convert.ToString(linha.Cells[colBrinquedo.Index].Value) ?? "";
            string tipoIngresso = Convert.ToString(
                linha.Cells[colTipoIngressoBrinquedo.Index].Value) ?? "";

            AdicionarItemSacola(
                "IngressoBrinquedo", codigo, $"{brinquedo} — {tipoIngresso}", preco, quantidade);
        }

        // Lê o ingresso da aba Eventos quando o funcionário clica em Adicionar.
        private void DgvEventos_CellContentClick(object? sender, DataGridViewCellEventArgs e)
        {
            // Ignora cliques no cabeçalho ou em outra coluna.
            if (e.RowIndex < 0 || e.ColumnIndex != colAdicionarEvento.Index)
                return;

            var linha = dgvEventos.Rows[e.RowIndex];
            string? textoQuantidade = Convert.ToString(linha.Cells[colQtdEvento.Index].Value);

            // Só aceita quantidades inteiras maiores que zero.
            if (!int.TryParse(textoQuantidade, out int quantidade) || quantidade <= 0)
            {
                MessageBox.Show(this, "Digite uma quantidade inteira maior que zero.");
                return;
            }

            // Lê o código oculto do ingresso e os dados exibidos na linha.
            int codigo = Convert.ToInt32(linha.Cells[colCodIngressoEvento.Index].Value);
            decimal preco = Convert.ToDecimal(linha.Cells[colPrecoEvento.Index].Value);
            string evento = Convert.ToString(linha.Cells[colEvento.Index].Value) ?? "";
            string tipoIngresso = Convert.ToString(
                linha.Cells[colTipoIngressoEvento.Index].Value) ?? "";

            AdicionarItemSacola(
                "IngressoEvento", codigo, $"{evento} — {tipoIngresso}", preco, quantidade);
        }

        // inserir dgvlanches_cellcontentclick aqui

        // Adiciona um novo item ou soma a quantidade a um item que já está na sacola.
        private void AdicionarItemSacola(
            string tipo, int codigo, string descricao, decimal preco, int quantidade)
        {
            ItemSacola? item = null;

            // Procura pelo tipo e pelo código, pois abas diferentes podem ter códigos iguais.
            foreach (ItemSacola existente in sacola.itens)
            {
                if (existente.tipoItem == tipo && existente.codItem == codigo)
                {
                    item = existente;
                    break;
                }
            }

            // Se a busca não encontrou o item, cria e guarda um novo.
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

            // Atualiza a quantidade, calcula o subtotal e mostra o resultado na tela.
            item.quantidade += quantidade;
            item.subtotal = item.quantidade * item.valorUnitario;
            AtualizarSacola();
        }

        // Preenche a grade da sacola e calcula o total da compra.
        private void AtualizarSacola()
        {
            var cultura = System.Globalization.CultureInfo.GetCultureInfo("pt-BR");
            decimal total = 0m;

            // Limpa somente as linhas exibidas. Os itens continuam em sacola.itens.
            dgvSacola.Rows.Clear();

            foreach (ItemSacola item in sacola.itens)
            {
                // C2 exibe o subtotal como moeda, com duas casas decimais.
                // Exibe os dados do item na grade e pega o índice da linha criada.
                int indice = dgvSacola.Rows.Add(
                    item.descricaoItem,
                    item.quantidade,
                    item.subtotal.ToString("C2", cultura));

                // Guarda o objeto da sacola na linha para saber qual item remover.
                dgvSacola.Rows[indice].Tag = item; ;

                total += item.subtotal;
            }

            lblTotalSacola.Text = $"Total: {total.ToString("C2", cultura)}";
        }

        // remove da sacola um item selecionado
        private void RemoverItemSacola(object? sender, EventArgs e)
        {
            if (dgvSacola.SelectedRows.Count == 0)
            {
                MessageBox.Show(this, "Selecione um item da sacola para remover");
                return;
            }

            // pega o item guardado no tag da linha
            if (dgvSacola.SelectedRows[0].Tag is ItemSacola item)
            {
                sacola.itens.Remove(item);
                AtualizarSacola();
            }

        }

        // finalizar compra
        private void FinalizarCompra(object? sender, EventArgs e)
        {

            // validando se visitante está selecionado
            if (codVisitanteCompra is null)
            {
                MessageBox.Show(this, "Selecione um visitante para a compra.");
                return;
            }

            // validando se possui itens na sacola
            if (sacola.itens.Count == 0)
            {
                MessageBox.Show(this, "Adicione pelo menos um item à sacola.");
                return;
            }

            // validando forma (tipo) de pagamento
            if (cbxFormaPagamento.SelectedItem is not string formaPagamento)
            {
                MessageBox.Show(this, "Selecione a forma de pagamento.");
                return;
            }

            // última revisão para confirmar compra
            string revisao = $"""
                Visitante: {lblVisitanteSelecionado.Text}
                Pagamento: {formaPagamento}
                {lblTotalSacola.Text}
                """;

            // Pede confirmação antes de enviar a compra ao banco.
            var resposta = MessageBox.Show(
                this, revisao, "Confirmar compra",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question,
                MessageBoxDefaultButton.Button2);

            if (resposta != DialogResult.Yes)
                return;

            // Monta a compra com o visitante escolhido e o funcionário da sessão.
            var compra = new Compra
            {
                codVisitante = codVisitanteCompra.Value,
                codFuncionario = codFuncionarioLogado,
                tipoPagamento = formaPagamento
            };

            var dao = new Connection();
            int codigoCompra = dao.GravarCompra(compra, sacola);

            // Se houver erro, mantém a sacola na tela para o funcionário corrigir.
            if (codigoCompra == 0)
            {
                MessageBox.Show(this, dao.mensagem, "Erro ao gravar compra");
                return;
            }

            // Prepara a tela para a próxima compra após a gravação confirmada.
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
            // Se houver uma compra em andamento, confirma antes de descartá-la.
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
