using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
// Permite consultar o banco e gerar o hash da senha.
using ProjetoParqueCSharp.DAO;
using ProjetoParqueCSharp.Model;
using ProjetoParqueCSharp.Service;

namespace ProjetoParqueCSharp.Forms
{
    public partial class GerenciarVisitantes : Form
    {
        // Guarda o código do visitante em edição. Null indica um novo cadastro.
        private int? codVisitanteEdicao;

        public GerenciarVisitantes()
        {
            InitializeComponent();
            Icon = IdentidadeVisual.Icone;

            // O nascimento não pode ser uma data futura.
            dtpNascimentoVisitante.MaxDate = DateTime.Today;

            // Carrega os visitantes quando a janela aparece.
            Shown += (_, _) => CarregarVisitantes();

            // Pesquisa no banco quando o funcionário aperta Enter na busca.
            txtBuscarVisitante.KeyDown += BuscarAoApertarEnter;

            // Preenche os campos com o visitante escolhido na grade.
            dgvVisitantes.SelectionChanged += PreencherVisitanteSelecionado;

            // Liga os botões aos métodos do cadastro.
            btnNovoVisitante.Click += (_, _) => LimparCampos();
            btnSalvarVisitante.Click += SalvarVisitante;
            btnExcluirVisitante.Click += ExcluirVisitante;

            LimparCampos();
        }

        // Lista todos os visitantes ou só os que correspondem à busca.
        private void CarregarVisitantes()
        {
            var dao = new Connection();
            string busca = txtBuscarVisitante.Text.Trim();

            DataTable visitantes = string.IsNullOrEmpty(busca)
                ? dao.ListarVisitantes()
                : dao.BuscarVisitante(busca);

            // Se a consulta falhar, o DAO retorna uma tabela sem as colunas esperadas.
            if (!visitantes.Columns.Contains("codVisitante"))
            {
                MessageBox.Show(this, $"Não foi possível carregar os visitantes.\n{dao.mensagem}");
                return;
            }

            dgvVisitantes.Rows.Clear();

            foreach (DataRow linha in visitantes.Rows)
            {
                // A senha não é lida: a grade mostra apenas nome, e-mail e nascimento.
                var visitante = new Visitante
                {
                    codVisitante = Convert.ToInt32(linha["codVisitante"]),
                    nomeVisitante = Convert.ToString(linha["nomeVisitante"]) ?? "",
                    dataNascimento = Convert.ToDateTime(linha["dataNascimento"]),
                    email = linha["email"] == DBNull.Value ? null : Convert.ToString(linha["email"])
                };

                int indice = dgvVisitantes.Rows.Add(
                    visitante.nomeVisitante,
                    visitante.email ?? "",
                    visitante.dataNascimento.ToString("dd/MM/yyyy"));

                // Guarda o visitante na linha para preencher os campos na edição.
                dgvVisitantes.Rows[indice].Tag = visitante;
            }

            // Começa sem seleção para não abrir um visitante em edição sem querer.
            dgvVisitantes.ClearSelection();
            LimparCampos();
        }

        private void BuscarAoApertarEnter(object? sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter)
                return;

            // Evita o som do Windows ao apertar Enter na caixa de texto.
            e.SuppressKeyPress = true;
            CarregarVisitantes();
        }

        // Mostra nos campos os dados do visitante selecionado.
        private void PreencherVisitanteSelecionado(object? sender, EventArgs e)
        {
            if (dgvVisitantes.SelectedRows.Count == 0)
                return;

            if (dgvVisitantes.SelectedRows[0].Tag is not Visitante visitante)
                return;

            codVisitanteEdicao = visitante.codVisitante;
            txtNomeVisitante.Text = visitante.nomeVisitante;
            txtEmailVisitante.Text = visitante.email ?? "";
            txtSenhaVisitante.Clear();

            // Datas futuras não cabem no DateTimePicker. Usa o limite nesse caso.
            dtpNascimentoVisitante.Value = visitante.dataNascimento > dtpNascimentoVisitante.MaxDate
                ? dtpNascimentoVisitante.MaxDate
                : visitante.dataNascimento;

            lblDadosVisitante.Text = "Editar visitante";
            lblDicaSenha.Text = "Deixe em branco para manter a senha atual.";
            btnSalvarVisitante.Text = "Salvar alterações";
            btnExcluirVisitante.Enabled = true;
        }

        // Prepara os campos para um novo cadastro.
        private void LimparCampos()
        {
            codVisitanteEdicao = null;
            dgvVisitantes.ClearSelection();

            txtNomeVisitante.Clear();
            txtEmailVisitante.Clear();
            txtSenhaVisitante.Clear();
            dtpNascimentoVisitante.Value = DateTime.Today;

            lblDadosVisitante.Text = "Novo visitante";
            lblDicaSenha.Text = "Mínimo de 6 caracteres.";
            btnSalvarVisitante.Text = "Cadastrar visitante";
            btnExcluirVisitante.Enabled = false;

            txtNomeVisitante.Focus();
        }

        // Valida os campos e cadastra ou atualiza o visitante.
        private void SalvarVisitante(object? sender, EventArgs e)
        {
            string nome = txtNomeVisitante.Text.Trim();
            string email = txtEmailVisitante.Text.Trim();
            string senha = txtSenhaVisitante.Text;
            DateTime nascimento = dtpNascimentoVisitante.Value.Date;
            bool novoCadastro = codVisitanteEdicao is null;

            if (string.IsNullOrWhiteSpace(nome))
            {
                MessageBox.Show(this, "Digite o nome do visitante.");
                txtNomeVisitante.Focus();
                return;
            }

            if (nascimento > DateTime.Today)
            {
                MessageBox.Show(this, "A data de nascimento não pode ser futura.");
                return;
            }

            // O e-mail é opcional, mas precisa ter um formato válido quando preenchido.
            if (email.Length > 0 && !EmailValido(email))
            {
                MessageBox.Show(this, "Digite um e-mail válido ou deixe o campo em branco.");
                txtEmailVisitante.Focus();
                return;
            }

            // No cadastro a senha é obrigatória. Na edição, em branco mantém a atual.
            if (novoCadastro && string.IsNullOrWhiteSpace(senha))
            {
                MessageBox.Show(this, "Digite uma senha para o visitante.");
                txtSenhaVisitante.Focus();
                return;
            }

            if (senha.Length > 0 && (string.IsNullOrWhiteSpace(senha) || senha.Length < 6))
            {
                MessageBox.Show(this, "A senha precisa ter pelo menos 6 caracteres.");
                txtSenhaVisitante.Focus();
                return;
            }

            var visitante = new Visitante
            {
                codVisitante = codVisitanteEdicao ?? 0,
                nomeVisitante = nome,
                dataNascimento = nascimento,
                email = email.Length > 0 ? email : null,
                // Senha nula na edição preserva o hash gravado no banco.
                senha = senha.Length > 0 ? Hash.CriarHash(senha) : null
            };

            // Limpa a senha digitada assim que o hash foi gerado.
            txtSenhaVisitante.Clear();

            var dao = new Connection();
            bool gravou = novoCadastro
                ? dao.InserirVisitante(visitante)
                : dao.AtualizarVisitante(visitante);

            if (!gravou)
            {
                MessageBox.Show(this, dao.mensagem, "Erro ao salvar visitante");
                return;
            }

            MessageBox.Show(this, dao.mensagem);
            CarregarVisitantes();
        }

        // Confirma e exclui o visitante selecionado.
        private void ExcluirVisitante(object? sender, EventArgs e)
        {
            if (dgvVisitantes.SelectedRows.Count == 0
                || dgvVisitantes.SelectedRows[0].Tag is not Visitante visitante)
            {
                MessageBox.Show(this, "Selecione um visitante na lista.");
                return;
            }

            // Mostra o nome para o funcionário conferir antes de excluir.
            var resposta = MessageBox.Show(
                this,
                $"Excluir o visitante {visitante.nomeVisitante}?",
                "Excluir visitante",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Warning,
                MessageBoxDefaultButton.Button2);

            if (resposta != DialogResult.Yes)
                return;

            var dao = new Connection();

            // A procedure recusa a exclusão quando o visitante tem compras.
            if (!dao.ExcluirVisitante(visitante.codVisitante))
            {
                MessageBox.Show(this, dao.mensagem, "Erro ao excluir visitante");
                return;
            }

            CarregarVisitantes();
        }

        private static bool EmailValido(string email)
        {
            try
            {
                var endereco = new System.Net.Mail.MailAddress(email);
                return endereco.Address == email;
            }
            catch (FormatException)
            {
                return false;
            }
        }
    }
}
