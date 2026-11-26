using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
// Permite usar DataRow
using ProjetoParqueCSharp.DAO;

namespace ProjetoParqueCSharp.Forms
{
    public partial class HistoricoCompras : Form
    {
        public HistoricoCompras()
        {
            InitializeComponent();
            Icon = IdentidadeVisual.Icone;

            // Carrega as compras
            Shown += CarregarCompras;
            
            // itens compra selecionada
            dgvCompras.SelectionChanged += CarregarItensDaCompraSelecionada;
            
            // evento excluir
            btnExcluirCompra.Click += ExcluirCompraSelecionada;
        }

        // Consulta o banco
        private void CarregarCompras(object? sender, EventArgs e)
        {
            var dao = new Connection();
            DataTable compras = dao.ListarCompras();

            // Uma consulta válida
            if (!compras.Columns.Contains("codCompra"))
            {
                MessageBox.Show(this, $"Não foi possível carregar as compras.\n{dao.mensagem}");
                return;
            }

            dgvCompras.Rows.Clear();

            foreach (DataRow compra in compras.Rows)
            {
                int codigo = Convert.ToInt32(compra["codCompra"]);
                string dataHora = Convert.ToDateTime(compra["dataCompra"])
                    .ToString("dd/MM/yyyy HH:mm");

                // Preenche as células
                dgvCompras.Rows.Add(
                    codigo,
                    dataHora,
                    Convert.ToString(compra["nomeVisitante"]),
                    Convert.ToString(compra["nomeFuncionario"]),
                    Convert.ToString(compra["tipoPagamento"]));
            }
        }

        // Mostra na grade
        private void CarregarItensDaCompraSelecionada(object? sender, EventArgs e)
        {
            // Limpa os detalhes
            dgvItensCompra.Rows.Clear();

            // desativado sem seleção
            btnExcluirCompra.Enabled = false;

            if (dgvCompras.SelectedRows.Count == 0)
                return;

            var linhaCompra = dgvCompras.SelectedRows[0];

            // Lê o número
            if (linhaCompra.Cells[colNumeroCompra.Index].Value is not int codigoCompra)
                return;

            // compra selecionada habilitado
            btnExcluirCompra.Enabled = true;

            var dao = new Connection();
            DataTable itens = dao.ListarItensCompra(codigoCompra);

            if (!itens.Columns.Contains("codItemCompra"))
            {
                MessageBox.Show(this, $"Não foi possível carregar os itens.\n{dao.mensagem}");
                return;
            }

            foreach (DataRow item in itens.Rows)
            {
                string tipo = Convert.ToString(item["tipoItem"]) ?? "";
                string descricao = Convert.ToString(item["descricao"]) ?? "";
                int quantidade = Convert.ToInt32(item["quantidade"]);

                int indice = dgvItensCompra.Rows.Add(tipo, descricao, quantidade);

                // Guarda o item
                int codigoItemCompra = Convert.ToInt32(item["codItemCompra"]);
                dgvItensCompra.Rows[indice].Tag = (tipo, codigoItemCompra);
            }
        }

        // Confirma a exclusão
        private void ExcluirCompraSelecionada(object? sender, EventArgs e)
        {
            if (dgvCompras.SelectedRows.Count == 0)
                return;

            var linha = dgvCompras.SelectedRows[0];
            if (linha.Cells[colNumeroCompra.Index].Value is not int codigoCompra)
                return;

            // pede confirmação
            var resposta = MessageBox.Show(
                this,
                $"Excluir a compra nº {codigoCompra} e todos os seus itens?",
                "Excluir compra",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Warning,
                MessageBoxDefaultButton.Button2);

            if (resposta != DialogResult.Yes)
                return;

            var dao = new Connection();
            if (!dao.ExcluirCompra(codigoCompra))
            {
                MessageBox.Show(this, dao.mensagem, "Erro ao excluir compra");
                return;
            }

            // Recarrega a lista
            CarregarCompras(this, EventArgs.Empty);
        }
        private void HistoricoCompras_Load(object sender, EventArgs e)
        {

        }
    }
}
