namespace ProjetoParqueCSharp.Forms
{
    partial class SelecionarVisitante
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
            lblBuscarVisitante = new Label();
            dgvVisitantes = new DataGridView();
            btnCancelar = new Button();
            btnConfirmarVisitante = new Button();
            pnlBuscaVisitante = new Panel();
            picLupa = new PictureBox();
            txtBuscarVisitante = new TextBox();
            colNomeVisitante = new DataGridViewTextBoxColumn();
            colEmailVisitante = new DataGridViewTextBoxColumn();
            colDataNascimentoVisitante = new DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)dgvVisitantes).BeginInit();
            pnlBuscaVisitante.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)picLupa).BeginInit();
            SuspendLayout();
            // 
            // lblBuscarVisitante
            // 
            lblBuscarVisitante.AutoSize = true;
            lblBuscarVisitante.Location = new Point(16, 16);
            lblBuscarVisitante.Name = "lblBuscarVisitante";
            lblBuscarVisitante.Size = new Size(113, 20);
            lblBuscarVisitante.TabIndex = 0;
            lblBuscarVisitante.Text = "Buscar Visitante";
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
            dgvVisitantes.Size = new Size(560, 235);
            dgvVisitantes.TabIndex = 2;
            // 
            // btnCancelar
            // 
            btnCancelar.BackColor = Color.FromArgb(220, 53, 69);
            btnCancelar.DialogResult = DialogResult.Cancel;
            btnCancelar.FlatStyle = FlatStyle.Flat;
            btnCancelar.ForeColor = Color.White;
            btnCancelar.Location = new Point(340, 326);
            btnCancelar.Name = "btnCancelar";
            btnCancelar.Size = new Size(108, 34);
            btnCancelar.TabIndex = 3;
            btnCancelar.Text = "Cancelar";
            btnCancelar.UseVisualStyleBackColor = false;
            // 
            // btnConfirmarVisitante
            // 
            btnConfirmarVisitante.BackColor = Color.FromArgb(0, 102, 204);
            btnConfirmarVisitante.FlatStyle = FlatStyle.Flat;
            btnConfirmarVisitante.ForeColor = Color.White;
            btnConfirmarVisitante.Location = new Point(456, 326);
            btnConfirmarVisitante.Name = "btnConfirmarVisitante";
            btnConfirmarVisitante.Size = new Size(120, 34);
            btnConfirmarVisitante.TabIndex = 4;
            btnConfirmarVisitante.Text = "Selecionar";
            btnConfirmarVisitante.UseVisualStyleBackColor = false;
            // 
            // pnlBuscaVisitante
            // 
            pnlBuscaVisitante.BackColor = Color.White;
            pnlBuscaVisitante.BorderStyle = BorderStyle.FixedSingle;
            pnlBuscaVisitante.Controls.Add(picLupa);
            pnlBuscaVisitante.Controls.Add(txtBuscarVisitante);
            pnlBuscaVisitante.Location = new Point(16, 39);
            pnlBuscaVisitante.Name = "pnlBuscaVisitante";
            pnlBuscaVisitante.Size = new Size(560, 30);
            pnlBuscaVisitante.TabIndex = 5;
            // 
            // picLupa
            // 
            picLupa.Image = Properties.Resources.icon_lupa;
            picLupa.Location = new Point(8, 6);
            picLupa.Name = "picLupa";
            picLupa.Size = new Size(16, 16);
            picLupa.SizeMode = PictureBoxSizeMode.CenterImage;
            picLupa.TabIndex = 3;
            picLupa.TabStop = false;
            // 
            // txtBuscarVisitante
            // 
            txtBuscarVisitante.BorderStyle = BorderStyle.None;
            txtBuscarVisitante.Location = new Point(32, 5);
            txtBuscarVisitante.Name = "txtBuscarVisitante";
            txtBuscarVisitante.Size = new Size(516, 20);
            txtBuscarVisitante.TabIndex = 2;
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
            // SelecionarVisitante
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(602, 373);
            Controls.Add(pnlBuscaVisitante);
            Controls.Add(btnConfirmarVisitante);
            Controls.Add(btnCancelar);
            Controls.Add(dgvVisitantes);
            Controls.Add(lblBuscarVisitante);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "SelecionarVisitante";
            StartPosition = FormStartPosition.CenterParent;
            Text = "Selecionar Visitante";
            Load += SelecionarVisitante_Load;
            ((System.ComponentModel.ISupportInitialize)dgvVisitantes).EndInit();
            pnlBuscaVisitante.ResumeLayout(false);
            pnlBuscaVisitante.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)picLupa).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblBuscarVisitante;
        private DataGridView dgvVisitantes;
        private Button btnCancelar;
        private Button btnConfirmarVisitante;
        private Panel pnlBuscaVisitante;
        private PictureBox picLupa;
        private TextBox txtBuscarVisitante;
        private DataGridViewTextBoxColumn colNomeVisitante;
        private DataGridViewTextBoxColumn colEmailVisitante;
        private DataGridViewTextBoxColumn colDataNascimentoVisitante;
    }
}