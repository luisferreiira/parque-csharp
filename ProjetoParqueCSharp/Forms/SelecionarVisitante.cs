using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using ProjetoParqueCSharp.DAO; // consulta a classe Connection

namespace ProjetoParqueCSharp.Forms
{
    public partial class SelecionarVisitante : Form
    {
        // carrega os visitantes
        private DataTable visitantes = new DataTable();
        // passar form Principal
        public int codVisitanteSelecionado { get; private set; }
        public string nomeVisitanteSelecionado { get; private set; } = "";
        public SelecionarVisitante()
        {
            InitializeComponent();
            Icon = IdentidadeVisual.Icone;
            // Carrega os visitantes
            Shown += CarregarVisitantes;

            // Atualiza quando digita
            txtBuscarVisitante.TextChanged += (_, _) => AtualizarListaVisitantes();

            // Liga o botão
            btnConfirmarVisitante.Click += ConfirmarVisitante;
        }

        private void CarregarVisitantes(object? sender, EventArgs e) {
            var dao = new Connection();
            visitantes = dao.ListarVisitantes();

            // Se a consulta
            if (!visitantes.Columns.Contains("codVisitante")) {
                MessageBox.Show(this, "Não foi possível carregar os visitantes");
                return;
            }

            AtualizarListaVisitantes();
        }

        // Monta a grade
        private void AtualizarListaVisitantes() {
            
            string busca = txtBuscarVisitante.Text.Trim();
            dgvVisitantes.Rows.Clear();

            foreach (DataRow visitante in visitantes.Rows) {
                string nome = Convert.ToString(visitante["nomeVisitante"]) ?? "";
                string email = Convert.ToString(visitante["email"]) ?? "";

                // ignora não correspondência
                if (!nome.Contains(busca, StringComparison.CurrentCultureIgnoreCase)
                    && !email.Contains(busca, StringComparison.CurrentCultureIgnoreCase))
                {
                    continue;
                }

                // Formata o nascimento
                string dataNascimento = Convert.ToDateTime(visitante["dataNascimento"]).ToString("dd/MM/yyyy");

                int indice = dgvVisitantes.Rows.Add(nome, email, dataNascimento);

                // Guarda o código
                dgvVisitantes.Rows[indice].Tag = Convert.ToInt32(visitante["codVisitante"]);
            }
        }

        // Lê a linha
        private void ConfirmarVisitante(object? sender, EventArgs e) {
            if (dgvVisitantes.SelectedRows.Count == 0) {
                MessageBox.Show(this, "Selecione um vistante na lista");
                return;
            }

            var linha = dgvVisitantes.SelectedRows[0];

            // Recupera o código
            if (linha.Tag is not int codigo)
                return;


            // define visitante
            codVisitanteSelecionado = codigo;
            nomeVisitanteSelecionado = Convert.ToString(linha.Cells[colNomeVisitante.Index].Value) ?? "";

            DialogResult = DialogResult.OK;
        }

        private void SelecionarVisitante_Load(object sender, EventArgs e)
        {

        }
    }
}
