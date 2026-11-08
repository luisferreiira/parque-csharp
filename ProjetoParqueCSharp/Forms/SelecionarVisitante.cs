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
        // Guarda os visitantes carregados para filtrar a lista sem consultar o banco a cada tecla.

        private DataTable visitantes = new DataTable();
        public int codVisitanteSelecionado { get; private set; }
        public string nomeVisitanteSelecionado { get; private set; } = "";
        public SelecionarVisitante()
        {
            InitializeComponent();
            Icon = IdentidadeVisual.Icone;
            // Carrega os visitantes quando a janela aparece.
            Shown += CarregarVisitantes;

            // Atualiza a lista sempre que o texto da busca mudar.
            txtBuscarVisitante.TextChanged += (_, _) => AtualizarListaVisitantes();

            //Liga o botão de selecionar ao método que confirma a escolha
            btnConfirmarVisitante.Click += ConfirmarVisitante;
        }

        private void CarregarVisitantes(object? sender, EventArgs e) {
            var dao = new Connection();
            visitantes = dao.ListarVisitantes();

            // Se a consulta falhar, o DAO retorna uma tabela sem as colunas esperadas.
            if (!visitantes.Columns.Contains("codVisitante")) {
                MessageBox.Show(this, "Não foi possível carregar os visitantes");
                return;
            }

            AtualizarListaVisitantes();
        }

        // Monta a grade com os visitantes que correspondem à busca.
        private void AtualizarListaVisitantes() {
            // Remove espaços no início e no fim da busca e limpa o resultado anterior.
            string busca = txtBuscarVisitante.Text.Trim();
            dgvVisitantes.Rows.Clear();

            foreach (DataRow visitante in visitantes.Rows) {
                string nome = Convert.ToString(visitante["nomeVisitante"]) ?? "";
                string email = Convert.ToString(visitante["email"]) ?? "";

                // Pula a linha se a busca não aparecer no nome nem no e-mail.
                if (!nome.Contains(busca, StringComparison.CurrentCultureIgnoreCase)
                    && !email.Contains(busca, StringComparison.CurrentCultureIgnoreCase))
                {
                    continue;
                }

                // Formata o nascimento e exibe as três colunas na ordem do Designer.
                string dataNascimento = Convert.ToDateTime(visitante["dataNascimento"]).ToString("dd/MM/yyyy");

                int indice = dgvVisitantes.Rows.Add(nome, email, dataNascimento);

                // Guarda o código na linha para identificar o visitante na compra.
                dgvVisitantes.Rows[indice].Tag = Convert.ToInt32(visitante["codVisitante"]);
            }
        }

        // Lê a linha selecionada e fecha a janela com a escolha confirmada.
        private void ConfirmarVisitante(object? sender, EventArgs e) {
            if (dgvVisitantes.SelectedRows.Count == 0) {
                MessageBox.Show(this, "Selecione um vistante na lista");
                return;
            }

            var linha = dgvVisitantes.SelectedRows[0];

            // Recupera o código guardado no Tag e o nome exibido na grade.
            if (linha.Tag is not int codigo)
                return;

            codVisitanteSelecionado = codigo;
            nomeVisitanteSelecionado = Convert.ToString(linha.Cells[colNomeVisitante.Index].Value) ?? "";

            // Avisa ao formulário Principal que a seleção foi confirmada.
            DialogResult = DialogResult.OK;
        }

        private void SelecionarVisitante_Load(object sender, EventArgs e)
        {

        }
    }
}
