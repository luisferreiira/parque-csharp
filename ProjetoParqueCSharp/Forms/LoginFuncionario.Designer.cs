namespace ProjetoParqueCSharp.Forms
{
    partial class LoginFuncionario
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
            lblEmail = new Label();
            lblSenha = new Label();
            txtEmail = new TextBox();
            txtSenha = new TextBox();
            btnEntrar = new Button();
            picLogin = new PictureBox();
            picChave = new PictureBox();
            picEmail = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)picLogin).BeginInit();
            ((System.ComponentModel.ISupportInitialize)picChave).BeginInit();
            ((System.ComponentModel.ISupportInitialize)picEmail).BeginInit();
            SuspendLayout();
            // 
            // lblEmail
            // 
            lblEmail.AutoSize = true;
            lblEmail.Location = new Point(50, 86);
            lblEmail.Name = "lblEmail";
            lblEmail.Size = new Size(55, 20);
            lblEmail.TabIndex = 0;
            lblEmail.Text = "E-mail:";
            // 
            // lblSenha
            // 
            lblSenha.AutoSize = true;
            lblSenha.Location = new Point(50, 152);
            lblSenha.Name = "lblSenha";
            lblSenha.Size = new Size(49, 20);
            lblSenha.TabIndex = 1;
            lblSenha.Text = "Senha";
            // 
            // txtEmail
            // 
            txtEmail.Location = new Point(50, 110);
            txtEmail.Name = "txtEmail";
            txtEmail.Size = new Size(286, 27);
            txtEmail.TabIndex = 2;
            // 
            // txtSenha
            // 
            txtSenha.Location = new Point(50, 176);
            txtSenha.Name = "txtSenha";
            txtSenha.PasswordChar = '*';
            txtSenha.Size = new Size(286, 27);
            txtSenha.TabIndex = 3;
            // 
            // btnEntrar
            // 
            btnEntrar.Location = new Point(24, 234);
            btnEntrar.Name = "btnEntrar";
            btnEntrar.Size = new Size(312, 36);
            btnEntrar.TabIndex = 4;
            btnEntrar.Text = "Entrar";
            btnEntrar.UseVisualStyleBackColor = true;
            // 
            // picLogin
            // 
            picLogin.Image = Properties.Resources.icon_login;
            picLogin.Location = new Point(156, 20);
            picLogin.Name = "picLogin";
            picLogin.Size = new Size(48, 48);
            picLogin.SizeMode = PictureBoxSizeMode.CenterImage;
            picLogin.TabIndex = 5;
            picLogin.TabStop = false;
            picLogin.Click += pictureBox1_Click;
            // 
            // picChave
            // 
            picChave.Image = Properties.Resources.icon_chave;
            picChave.Location = new Point(24, 179);
            picChave.Name = "picChave";
            picChave.Size = new Size(18, 18);
            picChave.SizeMode = PictureBoxSizeMode.CenterImage;
            picChave.TabIndex = 6;
            picChave.TabStop = false;
            // 
            // picEmail
            // 
            picEmail.Image = Properties.Resources.icon_email;
            picEmail.Location = new Point(24, 113);
            picEmail.Name = "picEmail";
            picEmail.Size = new Size(18, 18);
            picEmail.SizeMode = PictureBoxSizeMode.CenterImage;
            picEmail.TabIndex = 7;
            picEmail.TabStop = false;
            // 
            // LoginFuncionario
            // 
            AcceptButton = btnEntrar;
            AutoScaleDimensions = new SizeF(8F, 20F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(245, 248, 252);
            ClientSize = new Size(358, 293);
            Controls.Add(picEmail);
            Controls.Add(picChave);
            Controls.Add(picLogin);
            Controls.Add(btnEntrar);
            Controls.Add(txtSenha);
            Controls.Add(txtEmail);
            Controls.Add(lblSenha);
            Controls.Add(lblEmail);
            FormBorderStyle = FormBorderStyle.FixedDialog;
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "LoginFuncionario";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Parque - Login";
            ((System.ComponentModel.ISupportInitialize)picLogin).EndInit();
            ((System.ComponentModel.ISupportInitialize)picChave).EndInit();
            ((System.ComponentModel.ISupportInitialize)picEmail).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblEmail;
        private Label lblSenha;
        private TextBox txtEmail;
        private TextBox txtSenha;
        private Button btnEntrar;
        private PictureBox picLogin;
        private PictureBox picChave;
        private PictureBox picEmail;
    }
}