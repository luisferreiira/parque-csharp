namespace ProjetoParqueCSharp.Forms
{
    partial class HistoricoCompras
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DataGridViewCellStyle dataGridViewCellStyle1 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle2 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle3 = new DataGridViewCellStyle();
            DataGridViewCellStyle dataGridViewCellStyle4 = new DataGridViewCellStyle();
            lblTituloHistorico = new Label();
            tlpHistorico = new TableLayoutPanel();
            grpComprasRegistradas = new GroupBox();
            dgvCompras = new DataGridView();
            colNumeroCompra = new DataGridViewTextBoxColumn();
            colDataCompra = new DataGridViewTextBoxColumn();
            colVisitanteCompra = new DataGridViewTextBoxColumn();
            colFuncionarioCompra = new DataGridViewTextBoxColumn();
            colPagamentoCompra = new DataGridViewTextBoxColumn();
            grpItensCompra = new GroupBox();
            dgvItensCompra = new DataGridView();
            colTipoItemCompra = new DataGridViewTextBoxColumn();
            colDescricaoItemCompra = new DataGridViewTextBoxColumn();
            colQuantidadeItemCompra = new DataGridViewTextBoxColumn();
            flpAcoesHistorico = new FlowLayoutPanel();
            btnExcluirCompra = new Button();
            tlpHistorico.SuspendLayout();
            grpComprasRegistradas.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvCompras).BeginInit();
            grpItensCompra.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvItensCompra).BeginInit();
            flpAcoesHistorico.SuspendLayout();
            SuspendLayout();
            // 
            // lblTituloHistorico
            // 
            lblTituloHistorico.AutoSize = true;
            lblTituloHistorico.Font = new Font("Segoe UI", 19.8000011F, FontStyle.Bold, GraphicsUnit.Point, 0);
            lblTituloHistorico.ForeColor = Color.FromArgb(0, 91, 181);
            lblTituloHistorico.Location = new Point(24, 20);
            lblTituloHistorico.Name = "lblTituloHistorico";
            lblTituloHistorico.Size = new Size(359, 46);
            lblTituloHistorico.TabIndex = 0;
            lblTituloHistorico.Text = "Histórico de compras";
            // 
            // tlpHistorico
            // 
            tlpHistorico.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            tlpHistorico.ColumnCount = 1;
            tlpHistorico.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100F));
            tlpHistorico.Controls.Add(grpComprasRegistradas, 0, 0);
            tlpHistorico.Controls.Add(grpItensCompra, 0, 1);
            tlpHistorico.Controls.Add(flpAcoesHistorico, 0, 2);
            tlpHistorico.Location = new Point(24, 76);
            tlpHistorico.Name = "tlpHistorico";
            tlpHistorico.RowCount = 3;
            tlpHistorico.RowStyles.Add(new RowStyle(SizeType.Percent, 50.0000076F));
            tlpHistorico.RowStyles.Add(new RowStyle(SizeType.Percent, 50F));
            tlpHistorico.RowStyles.Add(new RowStyle(SizeType.Absolute, 52F));
            tlpHistorico.Size = new Size(936, 540);
            tlpHistorico.TabIndex = 1;
            // 
            // grpComprasRegistradas
            // 
            grpComprasRegistradas.Controls.Add(dgvCompras);
            grpComprasRegistradas.Dock = DockStyle.Fill;
            grpComprasRegistradas.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            grpComprasRegistradas.ForeColor = Color.FromArgb(0, 91, 181);
            grpComprasRegistradas.Location = new Point(3, 3);
            grpComprasRegistradas.Name = "grpComprasRegistradas";
            grpComprasRegistradas.Size = new Size(930, 238);
            grpComprasRegistradas.TabIndex = 0;
            grpComprasRegistradas.TabStop = false;
            grpComprasRegistradas.Text = "Compras registradas";
            // 
            // dgvCompras
            // 
            dgvCompras.AllowUserToAddRows = false;
            dgvCompras.AllowUserToDeleteRows = false;
            dgvCompras.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvCompras.BackgroundColor = Color.White;
            dataGridViewCellStyle1.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle1.ForeColor = Color.White;
            dataGridViewCellStyle1.SelectionBackColor = SystemColors.Highlight;
            dataGridViewCellStyle1.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle1.WrapMode = DataGridViewTriState.True;
            dgvCompras.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            dgvCompras.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvCompras.Columns.AddRange(new DataGridViewColumn[] { colNumeroCompra, colDataCompra, colVisitanteCompra, colFuncionarioCompra, colPagamentoCompra });
            dataGridViewCellStyle2.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = SystemColors.Window;
            dataGridViewCellStyle2.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle2.ForeColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle2.SelectionBackColor = Color.FromArgb(228, 241, 255);
            dataGridViewCellStyle2.SelectionForeColor = Color.FromArgb(23, 40, 59);
            dataGridViewCellStyle2.WrapMode = DataGridViewTriState.False;
            dgvCompras.DefaultCellStyle = dataGridViewCellStyle2;
            dgvCompras.Dock = DockStyle.Fill;
            dgvCompras.EnableHeadersVisualStyles = false;
            dgvCompras.Location = new Point(3, 23);
            dgvCompras.MultiSelect = false;
            dgvCompras.Name = "dgvCompras";
            dgvCompras.ReadOnly = true;
            dgvCompras.RowHeadersVisible = false;
            dgvCompras.RowHeadersWidth = 51;
            dgvCompras.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvCompras.Size = new Size(924, 212);
            dgvCompras.TabIndex = 0;
            // 
            // colNumeroCompra
            // 
            colNumeroCompra.FillWeight = 12F;
            colNumeroCompra.HeaderText = "Nº da compra";
            colNumeroCompra.MinimumWidth = 6;
            colNumeroCompra.Name = "colNumeroCompra";
            colNumeroCompra.ReadOnly = true;
            colNumeroCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colDataCompra
            // 
            colDataCompra.FillWeight = 22F;
            colDataCompra.HeaderText = "Data e hora";
            colDataCompra.MinimumWidth = 6;
            colDataCompra.Name = "colDataCompra";
            colDataCompra.ReadOnly = true;
            colDataCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colVisitanteCompra
            // 
            colVisitanteCompra.FillWeight = 24F;
            colVisitanteCompra.HeaderText = "Visitante";
            colVisitanteCompra.MinimumWidth = 6;
            colVisitanteCompra.Name = "colVisitanteCompra";
            colVisitanteCompra.ReadOnly = true;
            colVisitanteCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colFuncionarioCompra
            // 
            colFuncionarioCompra.FillWeight = 24F;
            colFuncionarioCompra.HeaderText = "Funcionário";
            colFuncionarioCompra.MinimumWidth = 6;
            colFuncionarioCompra.Name = "colFuncionarioCompra";
            colFuncionarioCompra.ReadOnly = true;
            colFuncionarioCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colPagamentoCompra
            // 
            colPagamentoCompra.FillWeight = 18F;
            colPagamentoCompra.HeaderText = "Pagamento";
            colPagamentoCompra.MinimumWidth = 6;
            colPagamentoCompra.Name = "colPagamentoCompra";
            colPagamentoCompra.ReadOnly = true;
            colPagamentoCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // grpItensCompra
            // 
            grpItensCompra.Controls.Add(dgvItensCompra);
            grpItensCompra.Dock = DockStyle.Fill;
            grpItensCompra.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            grpItensCompra.ForeColor = Color.FromArgb(0, 91, 181);
            grpItensCompra.Location = new Point(3, 247);
            grpItensCompra.Name = "grpItensCompra";
            grpItensCompra.Size = new Size(930, 237);
            grpItensCompra.TabIndex = 1;
            grpItensCompra.TabStop = false;
            grpItensCompra.Text = "Itens da compra";
            // 
            // dgvItensCompra
            // 
            dgvItensCompra.AllowUserToAddRows = false;
            dgvItensCompra.AllowUserToDeleteRows = false;
            dgvItensCompra.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvItensCompra.BackgroundColor = Color.White;
            dataGridViewCellStyle3.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle3.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle3.ForeColor = Color.White;
            dataGridViewCellStyle3.SelectionBackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle3.SelectionForeColor = SystemColors.HighlightText;
            dataGridViewCellStyle3.WrapMode = DataGridViewTriState.True;
            dgvItensCompra.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            dgvItensCompra.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvItensCompra.Columns.AddRange(new DataGridViewColumn[] { colTipoItemCompra, colDescricaoItemCompra, colQuantidadeItemCompra });
            dataGridViewCellStyle4.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle4.BackColor = SystemColors.Window;
            dataGridViewCellStyle4.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle4.ForeColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle4.SelectionBackColor = Color.FromArgb(228, 241, 255);
            dataGridViewCellStyle4.SelectionForeColor = Color.FromArgb(23, 40, 59);
            dataGridViewCellStyle4.WrapMode = DataGridViewTriState.False;
            dgvItensCompra.DefaultCellStyle = dataGridViewCellStyle4;
            dgvItensCompra.Dock = DockStyle.Fill;
            dgvItensCompra.EnableHeadersVisualStyles = false;
            dgvItensCompra.Location = new Point(3, 23);
            dgvItensCompra.MultiSelect = false;
            dgvItensCompra.Name = "dgvItensCompra";
            dgvItensCompra.ReadOnly = true;
            dgvItensCompra.RowHeadersVisible = false;
            dgvItensCompra.RowHeadersWidth = 51;
            dgvItensCompra.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvItensCompra.Size = new Size(924, 211);
            dgvItensCompra.TabIndex = 0;
            // 
            // colTipoItemCompra
            // 
            colTipoItemCompra.FillWeight = 22F;
            colTipoItemCompra.HeaderText = "Tipo";
            colTipoItemCompra.MinimumWidth = 6;
            colTipoItemCompra.Name = "colTipoItemCompra";
            colTipoItemCompra.ReadOnly = true;
            colTipoItemCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colDescricaoItemCompra
            // 
            colDescricaoItemCompra.FillWeight = 66F;
            colDescricaoItemCompra.HeaderText = "Item";
            colDescricaoItemCompra.MinimumWidth = 6;
            colDescricaoItemCompra.Name = "colDescricaoItemCompra";
            colDescricaoItemCompra.ReadOnly = true;
            colDescricaoItemCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colQuantidadeItemCompra
            // 
            colQuantidadeItemCompra.FillWeight = 12F;
            colQuantidadeItemCompra.HeaderText = "Qtd.";
            colQuantidadeItemCompra.MinimumWidth = 6;
            colQuantidadeItemCompra.Name = "colQuantidadeItemCompra";
            colQuantidadeItemCompra.ReadOnly = true;
            colQuantidadeItemCompra.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // flpAcoesHistorico
            // 
            flpAcoesHistorico.Controls.Add(btnExcluirCompra);
            flpAcoesHistorico.Dock = DockStyle.Fill;
            flpAcoesHistorico.FlowDirection = FlowDirection.RightToLeft;
            flpAcoesHistorico.Location = new Point(3, 490);
            flpAcoesHistorico.Name = "flpAcoesHistorico";
            flpAcoesHistorico.Size = new Size(930, 47);
            flpAcoesHistorico.TabIndex = 2;
            flpAcoesHistorico.WrapContents = false;
            // 
            // btnExcluirCompra
            // 
            btnExcluirCompra.BackColor = Color.FromArgb(220, 53, 69);
            btnExcluirCompra.Enabled = false;
            btnExcluirCompra.FlatStyle = FlatStyle.Flat;
            btnExcluirCompra.ForeColor = Color.White;
            btnExcluirCompra.Location = new Point(787, 3);
            btnExcluirCompra.Name = "btnExcluirCompra";
            btnExcluirCompra.Size = new Size(140, 34);
            btnExcluirCompra.TabIndex = 0;
            btnExcluirCompra.Text = "Excluir compra";
            btnExcluirCompra.UseVisualStyleBackColor = false;
            // 
            // HistoricoCompras
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(245, 248, 252);
            ClientSize = new Size(982, 633);
            Controls.Add(tlpHistorico);
            Controls.Add(lblTituloHistorico);
            MinimumSize = new Size(800, 560);
            Name = "HistoricoCompras";
            StartPosition = FormStartPosition.CenterParent;
            Text = "Parque - Histórico de Compras";
            Load += HistoricoCompras_Load;
            tlpHistorico.ResumeLayout(false);
            grpComprasRegistradas.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)dgvCompras).EndInit();
            grpItensCompra.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)dgvItensCompra).EndInit();
            flpAcoesHistorico.ResumeLayout(false);
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblTituloHistorico;
        private TableLayoutPanel tlpHistorico;
        private GroupBox grpComprasRegistradas;
        private DataGridView dgvCompras;
        private DataGridViewTextBoxColumn colNumeroCompra;
        private DataGridViewTextBoxColumn colDataCompra;
        private DataGridViewTextBoxColumn colVisitanteCompra;
        private DataGridViewTextBoxColumn colFuncionarioCompra;
        private DataGridViewTextBoxColumn colPagamentoCompra;
        private GroupBox grpItensCompra;
        private DataGridView dgvItensCompra;
        private DataGridViewTextBoxColumn colTipoItemCompra;
        private DataGridViewTextBoxColumn colDescricaoItemCompra;
        private DataGridViewTextBoxColumn colQuantidadeItemCompra;
        private FlowLayoutPanel flpAcoesHistorico;
        private Button btnExcluirCompra;
    }
}