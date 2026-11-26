using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
// Permite consultar banco
using ProjetoParqueCSharp.DAO;
using ProjetoParqueCSharp.Model;
using ProjetoParqueCSharp.Service;

namespace ProjetoParqueCSharp.Forms
{
    public partial class GerenciarVisitantes : Form
    {
        // Guarda codVisitanteEdicao
        private int? codVisitanteEdicao;

        public GerenciarVisitantes()
        {
            InitializeComponent();
            Icon = IdentidadeVisual.Icone;

            // nascimento não posterior
            dtpNascimentoVisitante.MaxDate = DateTime.Today;

            // Carrega os visitantes
            Shown += (_, _) => CarregarVisitantes();

            // Pesquisa banco enter
            txtBuscarVisitante.KeyDown += BuscarAoApertarEnter;

            // Preenche campos seleção
            dgvVisitantes.SelectionChanged += PreencherVisitanteSelecionado;

            // Liga os botões
            btnNovoVisitante.Click += (_, _) => LimparCampos();
            btnSalvarVisitante.Click += SalvarVisitante;
            btnExcluirVisitante.Click += ExcluirVisitante;

            LimparCampos();
        }

        // Lista todos
        private void CarregarVisitantes()
        {
            var dao = new Connection();
            string busca = txtBuscarVisitante.Text.Trim();

            DataTable visitantes = string.IsNullOrEmpty(busca)
                ? dao.ListarVisitantes()
                : dao.BuscarVisitante(busca);

            // consulta vier errada
            if (!visitantes.Columns.Contains("codVisitante"))
            {
                MessageBox.Show(this, $"Não foi possível carregar os visitantes.\n{dao.mensagem}");
                return;
            }

            dgvVisitantes.Rows.Clear();

            foreach (DataRow linha in visitantes.Rows)
            {
                // senha nao vem
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

                // Guarda o visitante
                dgvVisitantes.Rows[indice].Tag = visitante;
            }

            // Começa sem seleção
            dgvVisitantes.ClearSelection();
            LimparCampos();
        }

        private void BuscarAoApertarEnter(object? sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter)
                return;

            // Evita o som
            e.SuppressKeyPress = true;
            CarregarVisitantes();
        }

        // Mostra nos campos
        private void PreencherVisitanteSelecionado(object? sender, EventArgs e)
        {
            // quantidade selecionada
            if (dgvVisitantes.SelectedRows.Count == 0)
                return;

            // nao é visitante
            if (dgvVisitantes.SelectedRows[0].Tag is not Visitante visitante)
                return;

            // preenche pra editar
            codVisitanteEdicao = visitante.codVisitante;
            txtNomeVisitante.Text = visitante.nomeVisitante;
            txtEmailVisitante.Text = visitante.email ?? "";
            txtSenhaVisitante.Clear();

            // Datas futuras não
            dtpNascimentoVisitante.Value = visitante.dataNascimento > dtpNascimentoVisitante.MaxDate
                ? dtpNascimentoVisitante.MaxDate
                : visitante.dataNascimento;

            // altera label form
            lblDadosVisitante.Text = "Editar visitante";
            lblDicaSenha.Text = "Deixe em branco para manter a senha atual.";
            btnSalvarVisitante.Text = "Salvar alterações";

            // ativa botao excluir
            btnExcluirVisitante.Enabled = true;
        }

        // Prepara os campos
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

        // Valida os campos
        private void SalvarVisitante(object? sender, EventArgs e)
        {
            string nome = txtNomeVisitante.Text.Trim();
            string email = txtEmailVisitante.Text.Trim();
            string senha = txtSenhaVisitante.Text;
            DateTime nascimento = dtpNascimentoVisitante.Value.Date;

            // true senão edição
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

            
            if (email.Length > 0 && !EmailValido(email))
            {
                MessageBox.Show(this, "Digite um e-mail válido ou deixe o campo em branco.");
                txtEmailVisitante.Focus();
                return;
            }

            
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
                // 
                senha = senha.Length > 0 ? Hash.CriarHash(senha) : null
            };

            // Limpa a senha
            txtSenhaVisitante.Clear();

            var dao = new Connection();
            // false edita 
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

        // Confirma e exclui
        private void ExcluirVisitante(object? sender, EventArgs e)
        {
            if (dgvVisitantes.SelectedRows.Count == 0
                || dgvVisitantes.SelectedRows[0].Tag is not Visitante visitante)
            {
                MessageBox.Show(this, "Selecione um visitante na lista.");
                return;
            }

            // messagebox confirmação
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

            // A procedure recusa
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
