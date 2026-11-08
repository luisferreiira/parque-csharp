namespace ProjetoParqueCSharp.Forms
{
    partial class Principal
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
            pnlMenuLateral = new Panel();
            picLogoMenu = new PictureBox();
            pnlFuncionarioLogado = new Panel();
            btnSair = new Button();
            lblCargoFuncionario = new Label();
            lblNomeFuncionario = new Label();
            picFuncionarioLogado = new PictureBox();
            btnVisitantes = new Button();
            btnCompras = new Button();
            pnlConteudo = new Panel();
            pnlSacola = new Panel();
            btnRemoverItemSacola = new Button();
            btnFinalizarCompra = new Button();
            cbxFormaPagamento = new ComboBox();
            lblFormaPagamento = new Label();
            dgvSacola = new DataGridView();
            colItemSacola = new DataGridViewTextBoxColumn();
            colQtdSacola = new DataGridViewTextBoxColumn();
            colSubtotalSacola = new DataGridViewTextBoxColumn();
            lblTotalSacola = new Label();
            lblTituloSacola = new Label();
            tabCatalogo = new TabControl();
            tabBrinquedos = new TabPage();
            dgvBrinquedos = new DataGridView();
            colBrinquedo = new DataGridViewTextBoxColumn();
            colTipoIngressoBrinquedo = new DataGridViewTextBoxColumn();
            colPrecoBrinquedo = new DataGridViewTextBoxColumn();
            colQtdBrinquedo = new DataGridViewTextBoxColumn();
            colAdicionarBrinquedo = new DataGridViewButtonColumn();
            colCodIngressoBrinquedo = new DataGridViewTextBoxColumn();
            tabEventos = new TabPage();
            dgvEventos = new DataGridView();
            colEvento = new DataGridViewTextBoxColumn();
            colTipoIngressoEvento = new DataGridViewTextBoxColumn();
            colPrecoEvento = new DataGridViewTextBoxColumn();
            colQtdEvento = new DataGridViewTextBoxColumn();
            colAdicionarEvento = new DataGridViewButtonColumn();
            colCodIngressoEvento = new DataGridViewTextBoxColumn();
            tabLanches = new TabPage();
            pnlVisitanteCompra = new Panel();
            btnSelecionarVisitante = new Button();
            lblVisitanteSelecionado = new Label();
            lvlVisitanteTitulo = new Label();
            lblTitulo = new Label();
            btnVerHistorico = new Button();
            pnlMenuLateral.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)picLogoMenu).BeginInit();
            pnlFuncionarioLogado.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)picFuncionarioLogado).BeginInit();
            pnlConteudo.SuspendLayout();
            pnlSacola.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvSacola).BeginInit();
            tabCatalogo.SuspendLayout();
            tabBrinquedos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvBrinquedos).BeginInit();
            tabEventos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvEventos).BeginInit();
            pnlVisitanteCompra.SuspendLayout();
            SuspendLayout();
            // 
            // pnlMenuLateral
            // 
            pnlMenuLateral.BackColor = Color.FromArgb(0, 91, 181);
            pnlMenuLateral.Controls.Add(picLogoMenu);
            pnlMenuLateral.Controls.Add(pnlFuncionarioLogado);
            pnlMenuLateral.Controls.Add(btnVisitantes);
            pnlMenuLateral.Controls.Add(btnCompras);
            pnlMenuLateral.Dock = DockStyle.Left;
            pnlMenuLateral.ForeColor = SystemColors.ControlLightLight;
            pnlMenuLateral.Location = new Point(0, 0);
            pnlMenuLateral.Name = "pnlMenuLateral";
            pnlMenuLateral.Size = new Size(170, 603);
            pnlMenuLateral.TabIndex = 0;
            //
            // picLogoMenu
            //
            picLogoMenu.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            picLogoMenu.Location = new Point(10, 8);
            picLogoMenu.Name = "picLogoMenu";
            picLogoMenu.Size = new Size(150, 50);
            picLogoMenu.SizeMode = PictureBoxSizeMode.Zoom;
            picLogoMenu.TabStop = false;
            // 
            // pnlFuncionarioLogado
            // 
            pnlFuncionarioLogado.BackColor = Color.FromArgb(0, 102, 204);
            pnlFuncionarioLogado.Controls.Add(btnSair);
            pnlFuncionarioLogado.Controls.Add(lblCargoFuncionario);
            pnlFuncionarioLogado.Controls.Add(lblNomeFuncionario);
            pnlFuncionarioLogado.Controls.Add(picFuncionarioLogado);
            pnlFuncionarioLogado.Dock = DockStyle.Bottom;
            pnlFuncionarioLogado.Location = new Point(0, 499);
            pnlFuncionarioLogado.Name = "pnlFuncionarioLogado";
            pnlFuncionarioLogado.Size = new Size(170, 104);
            pnlFuncionarioLogado.TabIndex = 2;
            // 
            // btnSair
            // 
            btnSair.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            btnSair.BackColor = Color.FromArgb(220, 53, 69);
            btnSair.FlatStyle = FlatStyle.Flat;
            btnSair.ForeColor = Color.White;
            btnSair.Image = Properties.Resources.icon_sair;
            btnSair.ImageAlign = ContentAlignment.MiddleLeft;
            btnSair.Location = new Point(10, 66);
            btnSair.Name = "btnSair";
            btnSair.Padding = new Padding(8, 0, 8, 0);
            btnSair.Size = new Size(150, 28);
            btnSair.TabIndex = 3;
            btnSair.Text = "Sair";
            btnSair.TextAlign = ContentAlignment.MiddleRight;
            btnSair.TextImageRelation = TextImageRelation.ImageBeforeText;
            btnSair.UseVisualStyleBackColor = false;
            // 
            // lblCargoFuncionario
            // 
            lblCargoFuncionario.AutoEllipsis = true;
            lblCargoFuncionario.ForeColor = Color.White;
            lblCargoFuncionario.Location = new Point(38, 34);
            lblCargoFuncionario.Name = "lblCargoFuncionario";
            lblCargoFuncionario.Size = new Size(122, 18);
            lblCargoFuncionario.TabIndex = 2;
            lblCargoFuncionario.Text = "Cargo";
            // 
            // lblNomeFuncionario
            // 
            lblNomeFuncionario.AutoEllipsis = true;
            lblNomeFuncionario.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            lblNomeFuncionario.ForeColor = Color.White;
            lblNomeFuncionario.Location = new Point(38, 12);
            lblNomeFuncionario.Name = "lblNomeFuncionario";
            lblNomeFuncionario.Size = new Size(122, 20);
            lblNomeFuncionario.TabIndex = 1;
            lblNomeFuncionario.Text = "Funcionário";
            // 
            // picFuncionarioLogado
            // 
            picFuncionarioLogado.Image = Properties.Resources.icon_funcionario;
            picFuncionarioLogado.Location = new Point(10, 22);
            picFuncionarioLogado.Name = "picFuncionarioLogado";
            picFuncionarioLogado.Size = new Size(20, 20);
            picFuncionarioLogado.SizeMode = PictureBoxSizeMode.CenterImage;
            picFuncionarioLogado.TabIndex = 0;
            picFuncionarioLogado.TabStop = false;
            // 
            // btnVisitantes
            // 
            btnVisitantes.FlatAppearance.BorderSize = 0;
            btnVisitantes.FlatStyle = FlatStyle.Flat;
            btnVisitantes.ForeColor = Color.White;
            btnVisitantes.Image = Properties.Resources.icon_visitante;
            btnVisitantes.ImageAlign = ContentAlignment.MiddleLeft;
            btnVisitantes.Location = new Point(10, 110);
            btnVisitantes.Name = "btnVisitantes";
            btnVisitantes.Size = new Size(150, 36);
            btnVisitantes.TabIndex = 1;
            btnVisitantes.Text = "Visitantes";
            btnVisitantes.TextAlign = ContentAlignment.MiddleRight;
            btnVisitantes.UseVisualStyleBackColor = true;
            // 
            // btnCompras
            // 
            btnCompras.BackColor = Color.FromArgb(0, 102, 204);
            btnCompras.FlatAppearance.BorderColor = Color.FromArgb(255, 204, 0);
            btnCompras.FlatAppearance.BorderSize = 2;
            btnCompras.FlatStyle = FlatStyle.Flat;
            btnCompras.ForeColor = Color.White;
            btnCompras.Image = Properties.Resources.icon_sacola1;
            btnCompras.ImageAlign = ContentAlignment.MiddleLeft;
            btnCompras.Location = new Point(10, 65);
            btnCompras.Name = "btnCompras";
            btnCompras.Size = new Size(150, 36);
            btnCompras.TabIndex = 0;
            btnCompras.Text = "Compras";
            btnCompras.TextAlign = ContentAlignment.MiddleRight;
            btnCompras.UseVisualStyleBackColor = false;
            // 
            // pnlConteudo
            // 
            pnlConteudo.BackColor = Color.FromArgb(245, 248, 252);
            pnlConteudo.Controls.Add(btnVerHistorico);
            pnlConteudo.Controls.Add(pnlSacola);
            pnlConteudo.Controls.Add(tabCatalogo);
            pnlConteudo.Controls.Add(pnlVisitanteCompra);
            pnlConteudo.Controls.Add(lblTitulo);
            pnlConteudo.Dock = DockStyle.Fill;
            pnlConteudo.Location = new Point(170, 0);
            pnlConteudo.Name = "pnlConteudo";
            pnlConteudo.Size = new Size(912, 603);
            pnlConteudo.TabIndex = 1;
            pnlConteudo.Paint += pnlConteudo_Paint;
            // 
            // pnlSacola
            // 
            pnlSacola.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Right;
            pnlSacola.BackColor = Color.White;
            pnlSacola.Controls.Add(btnRemoverItemSacola);
            pnlSacola.Controls.Add(btnFinalizarCompra);
            pnlSacola.Controls.Add(cbxFormaPagamento);
            pnlSacola.Controls.Add(lblFormaPagamento);
            pnlSacola.Controls.Add(dgvSacola);
            pnlSacola.Controls.Add(lblTotalSacola);
            pnlSacola.Controls.Add(lblTituloSacola);
            pnlSacola.Location = new Point(504, 152);
            pnlSacola.Name = "pnlSacola";
            pnlSacola.Size = new Size(360, 420);
            pnlSacola.TabIndex = 3;
            // 
            // btnRemoverItemSacola
            // 
            btnRemoverItemSacola.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnRemoverItemSacola.BackColor = Color.FromArgb(220, 53, 69);
            btnRemoverItemSacola.FlatStyle = FlatStyle.Flat;
            btnRemoverItemSacola.ForeColor = Color.White;
            btnRemoverItemSacola.Location = new Point(248, 8);
            btnRemoverItemSacola.Name = "btnRemoverItemSacola";
            btnRemoverItemSacola.Size = new Size(100, 30);
            btnRemoverItemSacola.TabIndex = 5;
            btnRemoverItemSacola.Text = "Remover Item";
            btnRemoverItemSacola.UseVisualStyleBackColor = false;
            // 
            // btnFinalizarCompra
            // 
            btnFinalizarCompra.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            btnFinalizarCompra.BackColor = Color.FromArgb(0, 102, 204);
            btnFinalizarCompra.FlatStyle = FlatStyle.Flat;
            btnFinalizarCompra.ForeColor = Color.White;
            btnFinalizarCompra.Location = new Point(12, 369);
            btnFinalizarCompra.Name = "btnFinalizarCompra";
            btnFinalizarCompra.Size = new Size(336, 36);
            btnFinalizarCompra.TabIndex = 4;
            btnFinalizarCompra.Text = "Finalizar compra";
            btnFinalizarCompra.UseVisualStyleBackColor = false;
            // 
            // cbxFormaPagamento
            // 
            cbxFormaPagamento.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            cbxFormaPagamento.DropDownStyle = ComboBoxStyle.DropDownList;
            cbxFormaPagamento.FormattingEnabled = true;
            cbxFormaPagamento.Items.AddRange(new object[] { "PIX", "Dinheiro", "Cartão de Crédito", "Cartão de Débito" });
            cbxFormaPagamento.Location = new Point(12, 331);
            cbxFormaPagamento.Name = "cbxFormaPagamento";
            cbxFormaPagamento.Size = new Size(336, 28);
            cbxFormaPagamento.TabIndex = 3;
            // 
            // lblFormaPagamento
            // 
            lblFormaPagamento.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
            lblFormaPagamento.Location = new Point(12, 308);
            lblFormaPagamento.Name = "lblFormaPagamento";
            lblFormaPagamento.Size = new Size(158, 25);
            lblFormaPagamento.TabIndex = 1;
            lblFormaPagamento.Text = "Forma de Pagamento:";
            // 
            // dgvSacola
            // 
            dgvSacola.AllowUserToAddRows = false;
            dgvSacola.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            dgvSacola.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvSacola.BackgroundColor = Color.White;
            dataGridViewCellStyle1.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle1.BackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle1.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle1.ForeColor = Color.White;
            dataGridViewCellStyle1.SelectionBackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle1.SelectionForeColor = Color.White;
            dataGridViewCellStyle1.WrapMode = DataGridViewTriState.True;
            dgvSacola.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle1;
            dgvSacola.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvSacola.Columns.AddRange(new DataGridViewColumn[] { colItemSacola, colQtdSacola, colSubtotalSacola });
            dgvSacola.EnableHeadersVisualStyles = false;
            dgvSacola.Location = new Point(12, 46);
            dgvSacola.MultiSelect = false;
            dgvSacola.Name = "dgvSacola";
            dgvSacola.RowHeadersVisible = false;
            dgvSacola.RowHeadersWidth = 51;
            dgvSacola.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvSacola.Size = new Size(336, 220);
            dgvSacola.TabIndex = 2;
            dgvSacola.CellContentClick += dataGridView1_CellContentClick;
            // 
            // colItemSacola
            // 
            colItemSacola.FillWeight = 55F;
            colItemSacola.HeaderText = "Item";
            colItemSacola.MinimumWidth = 6;
            colItemSacola.Name = "colItemSacola";
            colItemSacola.ReadOnly = true;
            colItemSacola.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colQtdSacola
            // 
            colQtdSacola.FillWeight = 15F;
            colQtdSacola.HeaderText = "Qtd.";
            colQtdSacola.MinimumWidth = 6;
            colQtdSacola.Name = "colQtdSacola";
            colQtdSacola.ReadOnly = true;
            colQtdSacola.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colSubtotalSacola
            // 
            colSubtotalSacola.FillWeight = 30F;
            colSubtotalSacola.HeaderText = "Subtotal";
            colSubtotalSacola.MinimumWidth = 6;
            colSubtotalSacola.Name = "colSubtotalSacola";
            colSubtotalSacola.ReadOnly = true;
            colSubtotalSacola.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // lblTotalSacola
            // 
            lblTotalSacola.Anchor = AnchorStyles.Bottom | AnchorStyles.Left;
            lblTotalSacola.AutoSize = true;
            lblTotalSacola.Location = new Point(12, 278);
            lblTotalSacola.Name = "lblTotalSacola";
            lblTotalSacola.Size = new Size(97, 20);
            lblTotalSacola.TabIndex = 1;
            lblTotalSacola.Text = "Total: R$ 0,00";
            // 
            // lblTituloSacola
            // 
            lblTituloSacola.AutoSize = true;
            lblTituloSacola.Location = new Point(12, 12);
            lblTituloSacola.Name = "lblTituloSacola";
            lblTituloSacola.Size = new Size(53, 20);
            lblTituloSacola.TabIndex = 0;
            lblTituloSacola.Text = "Sacola";
            // 
            // tabCatalogo
            // 
            tabCatalogo.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            tabCatalogo.Controls.Add(tabBrinquedos);
            tabCatalogo.Controls.Add(tabEventos);
            tabCatalogo.Controls.Add(tabLanches);
            tabCatalogo.Location = new Point(24, 152);
            tabCatalogo.Name = "tabCatalogo";
            tabCatalogo.SelectedIndex = 0;
            tabCatalogo.Size = new Size(464, 420);
            tabCatalogo.TabIndex = 2;
            // 
            // tabBrinquedos
            // 
            tabBrinquedos.Controls.Add(dgvBrinquedos);
            tabBrinquedos.Location = new Point(4, 29);
            tabBrinquedos.Name = "tabBrinquedos";
            tabBrinquedos.Padding = new Padding(3);
            tabBrinquedos.Size = new Size(456, 387);
            tabBrinquedos.TabIndex = 0;
            tabBrinquedos.Text = "Brinquedos";
            tabBrinquedos.UseVisualStyleBackColor = true;
            // 
            // dgvBrinquedos
            // 
            dgvBrinquedos.AllowUserToAddRows = false;
            dgvBrinquedos.AllowUserToDeleteRows = false;
            dgvBrinquedos.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvBrinquedos.BackgroundColor = Color.White;
            dataGridViewCellStyle2.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle2.BackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle2.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle2.ForeColor = Color.White;
            dataGridViewCellStyle2.SelectionBackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle2.SelectionForeColor = Color.White;
            dataGridViewCellStyle2.WrapMode = DataGridViewTriState.True;
            dgvBrinquedos.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            dgvBrinquedos.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvBrinquedos.Columns.AddRange(new DataGridViewColumn[] { colBrinquedo, colTipoIngressoBrinquedo, colPrecoBrinquedo, colQtdBrinquedo, colAdicionarBrinquedo, colCodIngressoBrinquedo });
            dgvBrinquedos.Dock = DockStyle.Fill;
            dgvBrinquedos.EnableHeadersVisualStyles = false;
            dgvBrinquedos.Location = new Point(3, 3);
            dgvBrinquedos.Name = "dgvBrinquedos";
            dgvBrinquedos.RowHeadersVisible = false;
            dgvBrinquedos.RowHeadersWidth = 51;
            dgvBrinquedos.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvBrinquedos.Size = new Size(450, 381);
            dgvBrinquedos.TabIndex = 0;
            // 
            // colBrinquedo
            // 
            colBrinquedo.HeaderText = "Brinquedo";
            colBrinquedo.MinimumWidth = 6;
            colBrinquedo.Name = "colBrinquedo";
            colBrinquedo.ReadOnly = true;
            colBrinquedo.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colTipoIngressoBrinquedo
            // 
            colTipoIngressoBrinquedo.HeaderText = "Tipo de ingresso";
            colTipoIngressoBrinquedo.MinimumWidth = 6;
            colTipoIngressoBrinquedo.Name = "colTipoIngressoBrinquedo";
            colTipoIngressoBrinquedo.ReadOnly = true;
            colTipoIngressoBrinquedo.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colPrecoBrinquedo
            // 
            colPrecoBrinquedo.HeaderText = "Preço unitário";
            colPrecoBrinquedo.MinimumWidth = 6;
            colPrecoBrinquedo.Name = "colPrecoBrinquedo";
            colPrecoBrinquedo.ReadOnly = true;
            colPrecoBrinquedo.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colQtdBrinquedo
            // 
            colQtdBrinquedo.HeaderText = "Qtd.";
            colQtdBrinquedo.MinimumWidth = 6;
            colQtdBrinquedo.Name = "colQtdBrinquedo";
            colQtdBrinquedo.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colAdicionarBrinquedo
            // 
            colAdicionarBrinquedo.HeaderText = "Ação";
            colAdicionarBrinquedo.MinimumWidth = 6;
            colAdicionarBrinquedo.Name = "colAdicionarBrinquedo";
            colAdicionarBrinquedo.Resizable = DataGridViewTriState.True;
            colAdicionarBrinquedo.Text = "Adicionar";
            colAdicionarBrinquedo.UseColumnTextForButtonValue = true;
            // 
            // colCodIngressoBrinquedo
            // 
            colCodIngressoBrinquedo.HeaderText = "Código do ingresso";
            colCodIngressoBrinquedo.MinimumWidth = 6;
            colCodIngressoBrinquedo.Name = "colCodIngressoBrinquedo";
            colCodIngressoBrinquedo.Visible = false;
            // 
            // tabEventos
            // 
            tabEventos.Controls.Add(dgvEventos);
            tabEventos.Location = new Point(4, 29);
            tabEventos.Name = "tabEventos";
            tabEventos.Padding = new Padding(3);
            tabEventos.Size = new Size(456, 387);
            tabEventos.TabIndex = 1;
            tabEventos.Text = "Eventos";
            tabEventos.UseVisualStyleBackColor = true;
            // 
            // dgvEventos
            // 
            dgvEventos.AllowUserToAddRows = false;
            dgvEventos.AllowUserToDeleteRows = false;
            dgvEventos.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dgvEventos.BackgroundColor = Color.White;
            dataGridViewCellStyle3.Alignment = DataGridViewContentAlignment.MiddleLeft;
            dataGridViewCellStyle3.BackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle3.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            dataGridViewCellStyle3.ForeColor = Color.White;
            dataGridViewCellStyle3.SelectionBackColor = Color.FromArgb(0, 91, 181);
            dataGridViewCellStyle3.SelectionForeColor = Color.White;
            dataGridViewCellStyle3.WrapMode = DataGridViewTriState.True;
            dgvEventos.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle3;
            dgvEventos.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvEventos.Columns.AddRange(new DataGridViewColumn[] { colEvento, colTipoIngressoEvento, colPrecoEvento, colQtdEvento, colAdicionarEvento, colCodIngressoEvento });
            dgvEventos.Dock = DockStyle.Fill;
            dgvEventos.EnableHeadersVisualStyles = false;
            dgvEventos.Location = new Point(3, 3);
            dgvEventos.Name = "dgvEventos";
            dgvEventos.RowHeadersVisible = false;
            dgvEventos.RowHeadersWidth = 51;
            dgvEventos.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvEventos.Size = new Size(450, 381);
            dgvEventos.TabIndex = 0;
            // 
            // colEvento
            // 
            colEvento.HeaderText = "Evento";
            colEvento.MinimumWidth = 6;
            colEvento.Name = "colEvento";
            colEvento.ReadOnly = true;
            colEvento.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colTipoIngressoEvento
            // 
            colTipoIngressoEvento.HeaderText = "Tipo de Ingresso";
            colTipoIngressoEvento.MinimumWidth = 6;
            colTipoIngressoEvento.Name = "colTipoIngressoEvento";
            colTipoIngressoEvento.ReadOnly = true;
            colTipoIngressoEvento.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colPrecoEvento
            // 
            colPrecoEvento.HeaderText = "Preço Unitário";
            colPrecoEvento.MinimumWidth = 6;
            colPrecoEvento.Name = "colPrecoEvento";
            colPrecoEvento.ReadOnly = true;
            colPrecoEvento.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colQtdEvento
            // 
            colQtdEvento.HeaderText = "Qtd.";
            colQtdEvento.MinimumWidth = 6;
            colQtdEvento.Name = "colQtdEvento";
            colQtdEvento.SortMode = DataGridViewColumnSortMode.NotSortable;
            // 
            // colAdicionarEvento
            // 
            colAdicionarEvento.HeaderText = "Ação";
            colAdicionarEvento.MinimumWidth = 6;
            colAdicionarEvento.Name = "colAdicionarEvento";
            colAdicionarEvento.ReadOnly = true;
            colAdicionarEvento.Text = "Adicionar";
            colAdicionarEvento.UseColumnTextForButtonValue = true;
            // 
            // colCodIngressoEvento
            // 
            colCodIngressoEvento.HeaderText = "Código do Ingresso";
            colCodIngressoEvento.MinimumWidth = 6;
            colCodIngressoEvento.Name = "colCodIngressoEvento";
            colCodIngressoEvento.ReadOnly = true;
            colCodIngressoEvento.Visible = false;
            // 
            // tabLanches
            // 
            tabLanches.Location = new Point(4, 29);
            tabLanches.Name = "tabLanches";
            tabLanches.Size = new Size(456, 387);
            tabLanches.TabIndex = 2;
            tabLanches.Text = "Lanches";
            tabLanches.UseVisualStyleBackColor = true;
            // 
            // pnlVisitanteCompra
            // 
            pnlVisitanteCompra.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            pnlVisitanteCompra.BackColor = Color.White;
            pnlVisitanteCompra.Controls.Add(btnSelecionarVisitante);
            pnlVisitanteCompra.Controls.Add(lblVisitanteSelecionado);
            pnlVisitanteCompra.Controls.Add(lvlVisitanteTitulo);
            pnlVisitanteCompra.Location = new Point(24, 70);
            pnlVisitanteCompra.Name = "pnlVisitanteCompra";
            pnlVisitanteCompra.Size = new Size(840, 64);
            pnlVisitanteCompra.TabIndex = 1;
            // 
            // btnSelecionarVisitante
            // 
            btnSelecionarVisitante.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnSelecionarVisitante.BackColor = Color.FromArgb(0, 120, 204);
            btnSelecionarVisitante.FlatStyle = FlatStyle.Flat;
            btnSelecionarVisitante.ForeColor = Color.White;
            btnSelecionarVisitante.Location = new Point(648, 15);
            btnSelecionarVisitante.Name = "btnSelecionarVisitante";
            btnSelecionarVisitante.Size = new Size(180, 34);
            btnSelecionarVisitante.TabIndex = 2;
            btnSelecionarVisitante.Text = "Selecionar visitante";
            btnSelecionarVisitante.UseVisualStyleBackColor = false;
            // 
            // lblVisitanteSelecionado
            // 
            lblVisitanteSelecionado.AutoSize = true;
            lblVisitanteSelecionado.Location = new Point(12, 29);
            lblVisitanteSelecionado.Name = "lblVisitanteSelecionado";
            lblVisitanteSelecionado.Size = new Size(208, 20);
            lblVisitanteSelecionado.TabIndex = 1;
            lblVisitanteSelecionado.Text = "Nenhum visitante selecionado";
            // 
            // lvlVisitanteTitulo
            // 
            lvlVisitanteTitulo.AutoSize = true;
            lvlVisitanteTitulo.Font = new Font("Segoe UI", 9F, FontStyle.Bold, GraphicsUnit.Point, 0);
            lvlVisitanteTitulo.Location = new Point(12, 8);
            lvlVisitanteTitulo.Name = "lvlVisitanteTitulo";
            lvlVisitanteTitulo.Size = new Size(151, 20);
            lvlVisitanteTitulo.TabIndex = 0;
            lvlVisitanteTitulo.Text = "Visitante da Compra";
            lvlVisitanteTitulo.Click += label1_Click;
            // 
            // lblTitulo
            // 
            lblTitulo.AutoSize = true;
            lblTitulo.Font = new Font("Segoe UI", 19.8000011F, FontStyle.Bold, GraphicsUnit.Point, 0);
            lblTitulo.ForeColor = Color.FromArgb(0, 91, 181);
            lblTitulo.Location = new Point(24, 20);
            lblTitulo.Name = "lblTitulo";
            lblTitulo.Size = new Size(238, 46);
            lblTitulo.TabIndex = 0;
            lblTitulo.Text = "Nova Compra";
            // 
            // btnVerHistorico
            // 
            btnVerHistorico.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            btnVerHistorico.BackColor = Color.FromArgb(255, 204, 0);
            btnVerHistorico.FlatStyle = FlatStyle.Flat;
            btnVerHistorico.ForeColor = Color.Black;
            btnVerHistorico.Location = new Point(714, 20);
            btnVerHistorico.Name = "btnVerHistorico";
            btnVerHistorico.Size = new Size(150, 34);
            btnVerHistorico.TabIndex = 4;
            btnVerHistorico.Text = "Ver histórico";
            btnVerHistorico.UseVisualStyleBackColor = false;
            // 
            // Principal
            // 
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1082, 603);
            Controls.Add(pnlConteudo);
            Controls.Add(pnlMenuLateral);
            Name = "Principal";
            Text = "Parque - Atendimento";
            Load += Principal_Load;
            pnlMenuLateral.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)picLogoMenu).EndInit();
            pnlFuncionarioLogado.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)picFuncionarioLogado).EndInit();
            pnlConteudo.ResumeLayout(false);
            pnlConteudo.PerformLayout();
            pnlSacola.ResumeLayout(false);
            pnlSacola.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvSacola).EndInit();
            tabCatalogo.ResumeLayout(false);
            tabBrinquedos.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)dgvBrinquedos).EndInit();
            tabEventos.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)dgvEventos).EndInit();
            pnlVisitanteCompra.ResumeLayout(false);
            pnlVisitanteCompra.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private Panel pnlMenuLateral;
        private PictureBox picLogoMenu;
        private Button btnVisitantes;
        private Button btnCompras;
        private Panel pnlConteudo;
        private Panel pnlVisitanteCompra;
        private Label lvlVisitanteTitulo;
        private Label lblTitulo;
        private Button btnSelecionarVisitante;
        private Label lblVisitanteSelecionado;
        private TabControl tabCatalogo;
        private TabPage tabBrinquedos;
        private TabPage tabEventos;
        private TabPage tabLanches;
        private DataGridView dgvBrinquedos;
        private Panel pnlSacola;
        private DataGridView dgvSacola;
        private Label lblTotalSacola;
        private Label lblTituloSacola;
        private ComboBox cbxFormaPagamento;
        private Label lblFormaPagamento;
        private Button btnFinalizarCompra;
        private DataGridView dgvEventos;
        private DataGridViewTextBoxColumn colBrinquedo;
        private DataGridViewTextBoxColumn colTipoIngressoBrinquedo;
        private DataGridViewTextBoxColumn colPrecoBrinquedo;
        private DataGridViewTextBoxColumn colQtdBrinquedo;
        private DataGridViewButtonColumn colAdicionarBrinquedo;
        private DataGridViewTextBoxColumn colCodIngressoBrinquedo;
        private DataGridViewTextBoxColumn colEvento;
        private DataGridViewTextBoxColumn colTipoIngressoEvento;
        private DataGridViewTextBoxColumn colPrecoEvento;
        private DataGridViewTextBoxColumn colQtdEvento;
        private DataGridViewButtonColumn colAdicionarEvento;
        private DataGridViewTextBoxColumn colCodIngressoEvento;
        private DataGridViewTextBoxColumn colItemSacola;
        private DataGridViewTextBoxColumn colQtdSacola;
        private DataGridViewTextBoxColumn colSubtotalSacola;
        private Button btnRemoverItemSacola;
        private Panel pnlFuncionarioLogado;
        private Label lblCargoFuncionario;
        private Label lblNomeFuncionario;
        private PictureBox picFuncionarioLogado;
        private Button btnSair;
        private Button btnVerHistorico;
    }
}
