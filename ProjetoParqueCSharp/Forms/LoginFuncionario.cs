using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
// Permite consultar o
using ProjetoParqueCSharp.DAO;
using ProjetoParqueCSharp.Service;

namespace ProjetoParqueCSharp.Forms
{
    public partial class LoginFuncionario : Form
    {
        // passar parâmetro principal
        public int codFuncionarioLogado { get; private set; }
        public string NomeFuncionarioLogado { get; private set; } = "";
        public string NomeCargoLogado { get; private set; } = "";
        public LoginFuncionario()
        {
            InitializeComponent();
            Icon = IdentidadeVisual.Icone;
            btnEntrar.Click += Entrar;
        }

        // busca funcionário email
        private void Entrar(object? sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string senha = txtSenha.Text;

            // confere se campos
            if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(senha))
            {
                MessageBox.Show(this, "Preencha o e-mail e a senha.");
                return;
            }

            //
            var dao = new Connection();
            var funcionarios = dao.LoginFuncionario(email);

            // validar colunas esperadas
            if (!funcionarios.Columns.Contains("codFuncionario")
                 || !funcionarios.Columns.Contains("senha"))
            {
                MessageBox.Show(this, "Não foi possível consultar o login no banco.");
                return;
            }

            // email não encontrado
            if (funcionarios.Rows.Count == 0)
            {
                MessageBox.Show(this, "E-mail ou senha inválidos.");
                return;
            }

            var funcionario = funcionarios.Rows[0];
            string senhaHash = Convert.ToString(funcionario["senha"]) ?? "";

            if (!Hash.VerificarSenha(senha, senhaHash))
            {
                MessageBox.Show(this, "E-mail ou senha inválidos.");
                return;
            }

            // salva pra passar
            codFuncionarioLogado = Convert.ToInt32(funcionario["codFuncionario"]);
            NomeFuncionarioLogado = Convert.ToString(funcionario["nomeFuncionario"]) ?? "";
            NomeCargoLogado = Convert.ToString(funcionario["nomeCargo"]) ?? "";
            DialogResult = DialogResult.OK;
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
