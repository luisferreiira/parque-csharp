namespace ProjetoParqueCSharp.Forms
{
    partial class GerenciarVisitantes
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        // Clean up any
        /// </summary>
        // param name disposing
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
        // Required method for
        // the contents of
        /// </summary>
        private void InitializeComponent()
        {
            DataGridViewCellStyle dataGridViewCellStyle1 = new DataGridViewCellStyle();
            lblBuscarVisitante = new Label();
            pnlBuscaVisitante = new Panel();
            picLupa = new PictureBox();
            txtBuscarVisitante = new TextBox();
            dgvVisitantes = new DataGridView();
            colNomeVisitante = new DataGridViewTextBoxColumn();
            colEmailVisitante = new DataGridViewTextBoxColumn();
            colDataNascimentoVisitante = new DataGridViewTextBoxColumn();
            pnlDadosVisitante = new Panel();
            btnSalvarVisitante = new Button();
            lblDicaSenha = new Label();
            txtSenhaVisitante = new TextBox();
            lblSenhaVisitante = new Label();
            txtEmailVisitante = new TextBox();
            lblEmailVisitante = new Label();
            dtpNascimentoVisitante = new DateTimePicker();
            lblNascimentoVisitante = new Label();
            txtNomeVisitante = new TextBox();
            lblNomeVisitante = new Label();
            lblDadosVisitante = new Label();
            btnNovoVisitante = new Button();
            btnExcluirVisitante = new Button();
            btnFechar = new Button();
            pnlBuscaVisitante.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)picLupa).BeginInit();
            ((System.ComponentModel.ISupportInitialize)dgvVisitantes).BeginInit();
            pnlDadosVisitante.SuspendLayout();
            SuspendLayout();
            // 
            // lblBuscarVisitante
            // 
            lblBuscarVisitante.AutoSize = true;
            lblBuscarVisitante.Location = new Point(16, 16);
            lblBuscarVisitante.Name = "lblBuscarVisitante";
            lblBuscarVisitante.Size = new Size(271, 20);
            lblBuscarVisitante.TabIndex = 0;
            lblBuscarVisitante.Text = "Buscar Visitante (Enter para pesquisar)";
            // 
            // pnlBuscaVisitante
            // 
            pnlBuscaVisitante.BackColor = Color.White;
            pnlBuscaVisitante.BorderStyle = BorderStyle.FixedSingle;
            pnlBuscaVisitante.Controls.Add(picLupa);
            pnlBuscaVisitante.Controls.Add(txtBuscarVisitante);
            pnlBuscaVisitante.Location = new Point(16, 39);
            pnlBuscaVisitante.Name = "pnlBuscaVisitante";
            pnlBuscaVisitante.Size = new Size(520, 30);
            pnlBuscaVisitante.TabIndex = 1;
            // 
            // picLupa
            // 
            picLupa.Image = Properties.Resources.icon_lupa;
            picLupa.Location = new Point(8, 6);
            picLupa.Name = "picLupa";
            picLupa.Size = new Size(16, 16);
            picLupa.SizeMode = PictureBoxSizeMode.CenterImage;
            picLupa.TabIndex = 1;
            picLupa.TabStop = false;
            // 
            // txtBuscarVisitante
            // 
            txtBuscarVisitante.BorderStyle = BorderStyle.None;
            txtBuscarVisitante.Location = new Point(32, 5);
            txtBuscarVisitante.Name = "txtBuscarVisitante";
            txtBuscarVisitante.Size = new Size(476, 20);
            txtBuscarVisitante.TabIndex = 0;
            // 
            // dgvVisitantes
            // 
            dgvVisitantes.AllowUserToAddRows = false;
            dgvVisitantes.AllowUserToDeleteRows = false;
            dgvVisitantes.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvVisitantes.BackgroundColor = Color.White;
            dataGridViewCellStyle1.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle1.ForeColor = Color.White;
            dataGridViewCellStyle1.SelectionBackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle1.SelectionForeColor = Color.White;
            dataGridViewCellStyle1.WrapMode = DataGridViewTriState.True;
            dgvVisitantes.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            dgvVisitantes.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvVisitantes.Columns.AddRange(new DataGridViewColumn[] { colNomeVisitante, colEmailVisitante, colDataNascimentoVisitante });
            dgvVisitantes.EnableHeadersVisualStyles = false;
            dgvVisitantes.Location = new Point(16, 78);
            dgvVisitantes.MultiSelect = false;
            dgvVisitantes.Name = "dgvVisitantes";
            dgvVisitantes.ReadOnly = true;
            dgvVisitantes.RowHeadersVisible = false;
            dgvVisitantes.RowHeadersWidth = 51;
            dgvVisitantes.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvVisitantes.Size = new Size(520, 300);
            dgvVisitantes.TabIndex = 2;
            // 
            // colNomeVisitante
            // 
            colNomeVisitante.FillWeight = 40F;
            colNomeVisitante.HeaderText = "Visitante";
            colNomeVisitante.MinimumWidth = 6;
            colNomeVisitante.Name = "colNomeVisitante";
            colNomeVisitante.ReadOnly = true;
            colNomeVisitante.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colEmailVisitante
            // 
            colEmailVisitante.FillWeight = 38F;
            colEmailVisitante.HeaderText = "E-mail";
            colEmailVisitante.MinimumWidth = 6;
            colEmailVisitante.Name = "colEmailVisitante";
            colEmailVisitante.ReadOnly = true;
            colEmailVisitante.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colDataNascimentoVisitante
            // 
            colDataNascimentoVisitante.FillWeight = 22F;
            colDataNascimentoVisitante.HeaderText = "Data de Nascimento";
            colDataNascimentoVisitante.MinimumWidth = 6;
            colDataNascimentoVisitante.Name = "colDataNascimentoVisitante";
            colDataNascimentoVisitante.ReadOnly = true;
            colDataNascimentoVisitante.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // pnlDadosVisitante
            // 
            pnlDadosVisitante.BackColor = Color.White;
            pnlDadosVisitante.Controls.Add(btnSalvarVisitante);
            pnlDadosVisitante.Controls.Add(lblDicaSenha);
            pnlDadosVisitante.Controls.Add(txtSenhaVisitante);
            pnlDadosVisitante.Controls.Add(lblSenhaVisitante);
            pnlDadosVisitante.Controls.Add(txtEmailVisitante);
            pnlDadosVisitante.Controls.Add(lblEmailVisitante);
            pnlDadosVisitante.Controls.Add(dtpNascimentoVisitante);
            pnlDadosVisitante.Controls.Add(lblNascimentoVisitante);
            pnlDadosVisitante.Controls.Add(txtNomeVisitante);
            pnlDadosVisitante.Controls.Add(lblNomeVisitante);
            pnlDadosVisitante.Controls.Add(lblDadosVisitante);
            pnlDadosVisitante.Location = new Point(552, 16);
            pnlDadosVisitante.Name = "pnlDadosVisitante";
            pnlDadosVisitante.Size = new Size(332, 362);
            pnlDadosVisitante.TabIndex = 3;
            // 
            // btnSalvarVisitante
            // 
            btnSalvarVisitante.BackColor = Color.FromArgb(0, 102, 204);
            btnSalvarVisitante.FlatStyle = FlatStyle.Flat;
            btnSalvarVisitante.ForeColor = Color.White;
            btnSalvarVisitante.Location = new Point(12, 312);
            btnSalvarVisitante.Name = "btnSalvarVisitante";
            btnSalvarVisitante.Size = new Size(308, 36);
            btnSalvarVisitante.TabIndex = 5;
            btnSalvarVisitante.Text = "Cadastrar visitante";
            btnSalvarVisitante.UseVisualStyleBackColor = false;
            // 
            // lblDicaSenha
            // 
            lblDicaSenha.Font = new Font("Segoe UI", 7.8F, FontStyle.Regular, GraphicsUnit.Point, 0);
            lblDicaSenha.ForeColor = Color.DimGray;
            lblDicaSenha.Location = new Point(12, 264);
            lblDicaSenha.Name = "lblDicaSenha";
            lblDicaSenha.Size = new Size(308, 40);
            lblDicaSenha.TabIndex = 10;
            lblDicaSenha.Text = "Mínimo de 6 caracteres.";
            // 
            // txtSenhaVisitante
            // 
            txtSenhaVisitante.Location = new Point(12, 234);
            txtSenhaVisitante.MaxLength = 72;
            txtSenhaVisitante.Name = "txtSenhaVisitante";
            txtSenhaVisitante.Size = new Size(308, 27);
            txtSenhaVisitante.TabIndex = 4;
            txtSenhaVisitante.UseSystemPasswordChar = true;
            // 
            // lblSenhaVisitante
            // 
            lblSenhaVisitante.AutoSize = true;
            lblSenhaVisitante.Location = new Point(12, 212);
            lblSenhaVisitante.Name = "lblSenhaVisitante";
            lblSenhaVisitante.Size = new Size(49, 20);
            lblSenhaVisitante.TabIndex = 9;
            lblSenhaVisitante.Text = "Senha";
            // 
            // txtEmailVisitante
            // 
            txtEmailVisitante.Location = new Point(12, 178);
            txtEmailVisitante.MaxLength = 450;
            txtEmailVisitante.Name = "txtEmailVisitante";
            txtEmailVisitante.Size = new Size(308, 27);
            txtEmailVisitante.TabIndex = 3;
            // 
            // lblEmailVisitante
            // 
            lblEmailVisitante.AutoSize = true;
            lblEmailVisitante.Location = new Point(12, 156);
            lblEmailVisitante.Name = "lblEmailVisitante";
            lblEmailVisitante.Size = new Size(140, 20);
            lblEmailVisitante.TabIndex = 8;
            lblEmailVisitante.Text = "E-mail (opcional)";
            // 
            // dtpNascimentoVisitante
            // 
            dtpNascimentoVisitante.Format = DateTimePickerFormat.Short;
            dtpNascimentoVisitante.Location = new Point(12, 122);
            dtpNascimentoVisitante.Name = "dtpNascimentoVisitante";
            dtpNascimentoVisitante.Size = new Size(308, 27);
            dtpNascimentoVisitante.TabIndex = 2;
            // 
            // lblNascimentoVisitante
            // 
            lblNascimentoVisitante.AutoSize = true;
            lblNascimentoVisitante.Location = new Point(12, 100);
            lblNascimentoVisitante.Name = "lblNascimentoVisitante";
            lblNascimentoVisitante.Size = new Size(145, 20);
            lblNascimentoVisitante.TabIndex = 7;
            lblNascimentoVisitante.Text = "Data de Nascimento";
            // 
            // txtNomeVisitante
            // 
            txtNomeVisitante.Location = new Point(12, 66);
            txtNomeVisitante.MaxLength = 450;
            txtNomeVisitante.Name = "txtNomeVisitante";
            txtNomeVisitante.Size = new Size(308, 27);
            txtNomeVisitante.TabIndex = 1;
            // 
            // lblNomeVisitante
            // 
            lblNomeVisitante.AutoSize = true;
            lblNomeVisitante.Location = new Point(12, 44);
            lblNomeVisitante.Name = "lblNomeVisitante";
            lblNomeVisitante.Size = new Size(50, 20);
            lblNomeVisitante.TabIndex = 6;
            lblNomeVisitante.Text = "Nome";
            // 
            // lblDadosVisitante
            // 
            lblDadosVisitante.AutoSize = true;
            lblDadosVisitante.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            lblDadosVisitante.ForeColor = Color.FromArgb(0, 91, 181);
            lblDadosVisitante.Location = new Point(12, 12);
            lblDadosVisitante.Name = "lblDadosVisitante";
            lblDadosVisitante.Size = new Size(122, 20);
            lblDadosVisitante.TabIndex = 0;
            lblDadosVisitante.Text = "Novo visitante";
            // 
            // btnNovoVisitante
            // 
            btnNovoVisitante.BackColor = Color.FromArgb(255, 204, 0);
            btnNovoVisitante.FlatStyle = FlatStyle.Flat;
            btnNovoVisitante.ForeColor = Color.Black;
            btnNovoVisitante.Location = new Point(16, 392);
            btnNovoVisitante.Name = "btnNovoVisitante";
            btnNovoVisitante.Size = new Size(140, 34);
            btnNovoVisitante.TabIndex = 4;
            btnNovoVisitante.Text = "Novo visitante";
            btnNovoVisitante.UseVisualStyleBackColor = false;
            // 
            // btnExcluirVisitante
            // 
            btnExcluirVisitante.BackColor = Color.FromArgb(220, 53, 69);
            btnExcluirVisitante.Enabled = false;
            btnExcluirVisitante.FlatStyle = FlatStyle.Flat;
            btnExcluirVisitante.ForeColor = Color.White;
            btnExcluirVisitante.Location = new Point(164, 392);
            btnExcluirVisitante.Name = "btnExcluirVisitante";
            btnExcluirVisitante.Size = new Size(140, 34);
            btnExcluirVisitante.TabIndex = 5;
            btnExcluirVisitante.Text = "Excluir visitante";
            btnExcluirVisitante.UseVisualStyleBackColor = false;
            // 
            // btnFechar
            // 
            btnFechar.BackColor = Color.FromArgb(0, 91, 181);
            btnFechar.DialogResult = DialogResult.Cancel;
            btnFechar.FlatStyle = FlatStyle.Flat;
            btnFechar.ForeColor = Color.White;
            btnFechar.Location = new Point(764, 392);
            btnFechar.Name = "btnFechar";
            btnFechar.Size = new Size(120, 34);
            btnFechar.TabIndex = 6;
            btnFechar.Text = "Fechar";
            btnFechar.UseVisualStyleBackColor = false;
            // 
            // GerenciarVisitantes
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            CancelButton = btnFechar;
            ClientSize = new Size(900, 440);
            Controls.Add(btnFechar);
            Controls.Add(btnExcluirVisitante);
            Controls.Add(btnNovoVisitante);
            Controls.Add(pnlDadosVisitante);
            Controls.Add(dgvVisitantes);
            Controls.Add(pnlBuscaVisitante);
            Controls.Add(lblBuscarVisitante);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "GerenciarVisitantes";
            StartPosition = FormStartPosition.CenterParent;
            Text = "Visitantes";
            pnlBuscaVisitante.ResumeLayout(false);
            pnlBuscaVisitante.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)picLupa).EndInit();
            ((System.ComponentModel.ISupportInitialize)dgvVisitantes).EndInit();
            pnlDadosVisitante.ResumeLayout(false);
            pnlDadosVisitante.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblBuscarVisitante;
        private Panel pnlBuscaVisitante;
        private PictureBox picLupa;
        private TextBox txtBuscarVisitante;
        private DataGridView dgvVisitantes;
        private DataGridViewTextBoxColumn colNomeVisitante;
        private DataGridViewTextBoxColumn colEmailVisitante;
        private DataGridViewTextBoxColumn colDataNascimentoVisitante;
        private Panel pnlDadosVisitante;
        private Label lblDadosVisitante;
        private Label lblNomeVisitante;
        private TextBox txtNomeVisitante;
        private Label lblNascimentoVisitante;
        private DateTimePicker dtpNascimentoVisitante;
        private Label lblEmailVisitante;
        private TextBox txtEmailVisitante;
        private Label lblSenhaVisitante;
        private TextBox txtSenhaVisitante;
        private Label lblDicaSenha;
        private Button btnSalvarVisitante;
        private Button btnNovoVisitante;
        private Button btnExcluirVisitante;
        private Button btnFechar;
    }
}
