using Org.BouncyCastle.Asn1.X509;
using ProjetoParqueCSharp.Forms;

namespace ProjetoParqueCSharp
{
    internal static class Program
    {
        /// <summary>
        // The main entry
        /// </summary>
        [STAThread]
        static void Main()
        {
            // To customize application
            // see https aka
            ApplicationConfiguration.Initialize();

            while (true) { 
            int codigoFuncionario;
            string nomeFuncionario, nomeCargo;

            using (var login = new LoginFuncionario())
            {
                // Encerra a abertura
                if (login.ShowDialog() != DialogResult.OK)
                    return;

                // passa entre forms
                codigoFuncionario = login.codFuncionarioLogado;
                nomeFuncionario = login.NomeFuncionarioLogado;
                nomeCargo = login.NomeCargoLogado;
            }

            // abre tela principal
            using var principal = new Principal(codigoFuncionario, nomeFuncionario, nomeCargo);
            Application.Run(principal);

            // X encerra
            if (!principal.voltarAoLogin)
                return;

            }
        }
    }
}
