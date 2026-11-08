using Org.BouncyCastle.Asn1.X509;
using ProjetoParqueCSharp.Forms;

namespace ProjetoParqueCSharp
{
    internal static class Program
    {
        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            // To customize application configuration such as set high DPI settings or default font,
            // see https://aka.ms/applicationconfiguration.
            ApplicationConfiguration.Initialize();

            while (true) { 
            int codigoFuncionario;
            string nomeFuncionario, nomeCargo;

            using (var login = new LoginFuncionario())
            {
                // Encerra a abertura do programa se o usuário fechar a janela de login.
                if (login.ShowDialog() != DialogResult.OK)
                    return;

                // pega cod do funcionário após validar senha
                codigoFuncionario = login.codFuncionarioLogado;
                nomeFuncionario = login.NomeFuncionarioLogado;
                nomeCargo = login.NomeCargoLogado;
            }

            // abre tela principal de atendimento
            using var principal = new Principal(codigoFuncionario, nomeFuncionario, nomeCargo);
            Application.Run(principal);

            // O X encerra o programa. O botão Sair volta ao login.
            if (!principal.voltarAoLogin)
                return;

            }
        }
    }
}